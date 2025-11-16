import * as mc from '@minecraft/server';
import * as lib from './cyd_mgspl_lib';
import { checkEquippedGear } from './cyd_mgspl_equip';

const SOUND_FAIL = "cyd_mgspl.spell_fail";
const SOUND_OUT_OF_MANA = "cyd_mgspl.out_of_mana";
const SOUND_MANA_RESTORE = "cyd_mgspl.mana_restore";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

const MANA_REG_BASE = 2;
const MANA_MAX_BASE = 100;

export default class SpellPlayer {

  tickingSpells = new Map();  //all active spell instances on the player, a spell is active when holding, charging or on cooldown and cannot be recast during active state
  tickClock = 0;

  player;
  scoreID;
  manaReg = MANA_REG_BASE;
  manaMax = MANA_MAX_BASE;
  manaCurrent = 100;
  info_mode = 0;  //0 = full, 1 = compact, 2 = off
  fail_mode = 0;  //0 = text + sound, 1 = sound, 2 = off

  isCasting = false; //boolean when a spell is holding or charging up, during casting there should be no manareg

  constructor(player) {
    this.player = player;
    this.scoreID = this.player.scoreboardIdentity;
    mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(player, 0); //add player to scoreboard
    mc.world.scoreboard.getObjective("cyd_mgspl_info_mode").addScore(player, 0); //add player to scoreboard
    mc.world.scoreboard.getObjective("cyd_mgspl_fail_note").addScore(player, 0); //add player to scoreboard

    this.info_mode = mc.world.scoreboard.getObjective("cyd_mgspl_info_mode").getScore(player);
    this.fail_mode = mc.world.scoreboard.getObjective("cyd_mgspl_fail_note").getScore(player);
  }

  //runs once every 5 ticks or 0.25 seconds
  tick() {
    this.tickSpells();
    this.manaDisplay();

    //run every 20 ticks or 1.00 seconds
    if (this.tickClock % 4 == 0) {
      let equipBonus = checkEquippedGear(this.player);
      this.manaReg = MANA_REG_BASE + equipBonus[0];
      this.manaMax = MANA_MAX_BASE + equipBonus[1];

      this.doManaTick();
    }

    if (this.tickClock == 4) this.tickClock = 0;
    this.tickClock++;
  }

  doManaTick() {
    if (this.isCasting) return;

    if (mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player) < this.manaMax) {
      mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player, this.manaReg);
    };
    if (mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player) > this.manaMax) {
      mc.world.scoreboard.getObjective("cyd_mgspl_mana").setScore(this.player, this.manaMax);
    };
    this.manaCurrent = mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player);
  }

  //TODO redo this nicer
  manaDisplay() {
    const item = this.player.getComponent('equippable').getEquipment('Mainhand');
    if (!item) return;
    if (this.info_mode == 2) return;
    if (lib.SHOW_MANA_ITEMS.includes(item.typeId)) {
      if(this.info_mode == 0) this.manaStringFull(item);
      if(this.info_mode == 1) this.manaStringCompact(item);
    }
  }

  manaStringFull(item) {
    let spell = lib.getSpellFromItem(item.typeId);
    let spell_instance = this.tickingSpells.get(spell);
    let mana = mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player);

    let actionbar_cooldown = { "text": ""};
    let actionbar_charge = { "text": ""};
    const actionbar_mana = { "rawtext": [{ translate: "cyd_mgspl.feedback_mana" },{"text":": " + mana + " /" + this.manaMax}]};
    
    if (spell_instance != undefined) {
      actionbar_cooldown = { "rawtext": [{"text":"§f | "},{ translate: "cyd_mgspl.feedback_cooldown" },{"text":": " + coolDownInSeconds(spell_instance.cooldown)}]};
      if (spell_instance.charge != undefined) actionbar_charge = { "rawtext": [{"text":"§f | "},{ translate: "cyd_mgspl.feedback_charge" },{"text":": " + spell_instance.charge + "/" + spell_instance.chargeMax}]};
    };

    this.player.onScreenDisplay.setActionBar({"rawtext": [actionbar_mana,actionbar_cooldown,actionbar_charge]});
  }

  manaStringCompact(item) {
    let spell = lib.getSpellFromItem(item.typeId);
    let spell_instance = this.tickingSpells.get(spell);
    let mana = mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player);
    let actionbar_message = "§b" + mana + "/" + this.manaMax;

    if (spell_instance != undefined) {
      actionbar_message = actionbar_message + "§f | §c" + coolDownInSeconds(spell_instance.cooldown);
      if (spell_instance.charge != undefined) actionbar_message = actionbar_message + "§f | §a" + spell_instance.charge + "/" + spell_instance.chargeMax;
    }
    this.player.onScreenDisplay.setActionBar(actionbar_message);
  }

  //tick down cooldowns, activate hold spells or charge up charging spells
  tickSpells() {
    for (let spell of this.tickingSpells.values()) {
      spell.tick();
      if (spell.isActive == false) this.removeSpell(spell.name)
    }
  }

  //TODO redo this nicer with lang file feedback
  launchSpell(spell) {
    try 
    {
      mc.world.getDimension(this.player.dimension.id).getBlock(this.player.location)
    } 
    catch (error) {
      if(this.fail_mode == 0 || this.fail_mode == 1)  this.player.playSound(SOUND_FAIL, SOUND_OPTIONS);
      if(this.fail_mode == 0 ) this.player.sendMessage({ translate: "cyd_mgspl.feedback_out_of_bounds" });
      return false;
    };
    if (spell.manacost > this.manaCurrent) {
      if(this.fail_mode == 0 || this.fail_mode == 1) this.player.playSound(SOUND_OUT_OF_MANA, SOUND_OPTIONS);
      if(this.fail_mode == 0 ) this.player.sendMessage({ translate: "cyd_mgspl.feedback_not_enough_mana" });
      return false;
    };
    if (this.canCastSpell(spell.name) == false) {
      if(this.fail_mode == 0 || this.fail_mode == 1)  this.player.playSound(SOUND_FAIL, SOUND_OPTIONS);
      if(this.fail_mode == 0 ) this.player.sendMessage({ translate: "cyd_mgspl.feedback_spell_on_cooldown" });
      return false;
    };
    spell.activate();
    this.addSpell(spell.name, spell);
  }


  //stops charging or holding spells
  stop(spellName) {
    if (this.tickingSpells.get(spellName) === undefined) return;
    this.tickingSpells.get(spellName).stop();
  }

  addSpell(spellName, spell) {
    this.tickingSpells.set(spellName, spell);
  }

  removeSpell(spellName) {
    this.tickingSpells.delete(spellName);
  }

  manaConsumable(value) {
    this.player.playSound(SOUND_MANA_RESTORE, SOUND_OPTIONS);
    
    if (mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player) < this.manaMax) {
      mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player, value);
    };
    if (mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player) > this.manaMax) {
      mc.world.scoreboard.getObjective("cyd_mgspl_mana").setScore(this.player, this.manaMax);
    };
    this.manaCurrent = mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player);
  }

  effectConsumable(spell) {
    spell.activate();
    this.addSpell(spell.name, spell);
  }

  //when no instance of the spell name is registered with the player a spell of that type is ready to be cast
  canCastSpell(spellName) {
    if (this.tickingSpells.get(spellName) === undefined) return true;
    return false;
  }

  updateSettings() {
    this.player.sendMessage({ translate: "cyd_mgspl.settings_updated" });
    this.info_mode = mc.world.scoreboard.getObjective("cyd_mgspl_info_mode").getScore(this.player);
    this.fail_mode = mc.world.scoreboard.getObjective("cyd_mgspl_fail_note").getScore(this.player);
  }
}

function coolDownInSeconds(cooldown)
{
  return (Math.round((0.05*cooldown) * 100) / 100).toFixed(2);
}