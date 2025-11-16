import * as mc from "@minecraft/server"
import * as lib from './cyd_mgspl_lib';

import { menuMain, setupStaticMenus } from "./cyd_mgspl_menu";
import { setupManaMote } from "./cyd_mgspl_manamote";

import SpellPlayer from './cyd_mgspl_player';
import SpellFireBall, * as fireball from './spells/cyd_mgspl_fireball';
import SpellIlluminate from './spells/cyd_mgspl_illuminate';
import SpellMineblast from './spells/cyd_mgspl_mineblast';
import SpellIceBlast from "./spells/cyd_mgspl_ice_blast";
import SpellLevitation from "./spells/cyd_mgspl_levitation";
import SpellReturn from "./spells/cyd_mgspl_return";
import SpellTimewarp from "./spells/cyd_mgspl_timewarp";
import SpellLightningStrike from "./spells/cyd_mgspl_lightning_strike";
import SpellPush from "./spells/cyd_mgspl_push";
import SpellWhirlwind, * as whirlwind from "./spells/cyd_mgspl_whirlwind";
import SpellGravityVortex, * as gravity_vortex from "./spells/cyd_mgspl_gravity_vortex";
import SpellEnderblight, * as enderblight from "./spells/cyd_mgspl_enderblight";
import SpellWitherskulls, * as witherskulls from "./spells/cyd_mgspl_witherskulls";
import SpellSummonMinion, * as summon_minion from "./spells/cyd_mgspl_summon_minion";
import SpellPolymorph, * as polymorph from "./spells/cyd_mgspl_polymorph";
import PotionSpellSlinger from "./items/cyd_mgspl_spellpotion";

export const VERSION = "1.0.0";

const SPELL_PLAYERS = new Map();
const PLAYER_TICK_INTERVAL = 5;

initAddOn();
initJigCompuersIntegration();

itemUseListener();
scriptEventListener();
impactListener();
handleSpellPlayer();

setupStaticMenus();
setupManaMote();

function itemUseListener() {

    //use this to handle all the spell launching
    mc.world.afterEvents.itemUse.subscribe((eventData) => {
        let player = eventData.source;
        let spellplayer = SPELL_PLAYERS.get(player.id);
        let itemUse = eventData.itemStack;
        if (itemUse === undefined) return;

        if (itemUse.typeId == "cyd_mgspl:fireball") spellplayer.launchSpell(new SpellFireBall(player));
        if (itemUse.typeId == "cyd_mgspl:ice_blast") spellplayer.launchSpell(new SpellIceBlast(player));
        if (itemUse.typeId == "cyd_mgspl:illuminate") spellplayer.launchSpell(new SpellIlluminate(player));
        if (itemUse.typeId == "cyd_mgspl:return") spellplayer.launchSpell(new SpellReturn(player));
        if (itemUse.typeId == "cyd_mgspl:lightning_strike") spellplayer.launchSpell(new SpellLightningStrike(player));
        if (itemUse.typeId == "cyd_mgspl:push") spellplayer.launchSpell(new SpellPush(player));
        if (itemUse.typeId == "cyd_mgspl:whirlwind") spellplayer.launchSpell(new SpellWhirlwind(player));
        if (itemUse.typeId == "cyd_mgspl:gravity_vortex") spellplayer.launchSpell(new SpellGravityVortex(player));
        if (itemUse.typeId == "cyd_mgspl:enderblight") spellplayer.launchSpell(new SpellEnderblight(player));
        if (itemUse.typeId == "cyd_mgspl:summon_minion") spellplayer.launchSpell(new SpellSummonMinion(player));
        if (itemUse.typeId == "cyd_mgspl:polymorph") spellplayer.launchSpell(new SpellPolymorph(player));

        if (itemUse.typeId == "cyd_mgspl:guidebook") menuMain(player);
    })

    //use for hold spells start
    mc.world.afterEvents.itemStartUse.subscribe((eventData) => {
        let player = eventData.source;
        let spellplayer = SPELL_PLAYERS.get(player.id);
        let itemUse = eventData.itemStack;
        if (itemUse === undefined) return;

        if (itemUse.typeId == "cyd_mgspl:mineblast") spellplayer.launchSpell(new SpellMineblast(player));
        if (itemUse.typeId == "cyd_mgspl:levitation") spellplayer.launchSpell(new SpellLevitation(player));
        if (itemUse.typeId == "cyd_mgspl:timewarp") spellplayer.launchSpell(new SpellTimewarp(player));
        if (itemUse.typeId == "cyd_mgspl:witherskulls") spellplayer.launchSpell(new SpellWitherskulls(player));
    })

    //use for hold spells stop
    mc.world.afterEvents.itemStopUse.subscribe((eventData) => {
        let player = eventData.source;
        let spellplayer = SPELL_PLAYERS.get(player.id);
        let itemUse = eventData.itemStack;
        let duration = eventData.useDuration;

        if (itemUse === undefined) return;

        if (itemUse.typeId == "cyd_mgspl:mineblast") spellplayer.stop(lib.getSpellFromItem("cyd_mgspl:mineblast"));
        if (itemUse.typeId == "cyd_mgspl:levitation") spellplayer.stop(lib.getSpellFromItem("cyd_mgspl:levitation"));
        if (itemUse.typeId == "cyd_mgspl:timewarp") spellplayer.stop(lib.getSpellFromItem("cyd_mgspl:timewarp"));
        if (itemUse.typeId == "cyd_mgspl:witherskulls") spellplayer.stop(lib.getSpellFromItem("cyd_mgspl:witherskulls"));

        //consumables trigger when completing a cycle aka duration = 0
        if(duration == 0)
        {
            if (itemUse.typeId == "cyd_mgspl:mana_potion") spellplayer.manaConsumable(75);
            if (itemUse.typeId == "cyd_mgspl:mana_cookie") spellplayer.manaConsumable(25);
            if (itemUse.typeId == "cyd_mgspl:spell_potion") spellplayer.effectConsumable(new PotionSpellSlinger(spellplayer));
        }
    })
}

//better projectile impact process for faster response
function impactListener() {
    mc.world.afterEvents.projectileHitEntity.subscribe((eventData) => {
        if (eventData.projectile.typeId == "cyd_mgspl:projectile_fireball") fireball.impact(eventData.dimension.id, eventData.location);
        if (eventData.projectile.typeId == "cyd_mgspl:projectile_polymorph") polymorph.impact(eventData.dimension.id, eventData.location);
    });

    mc.world.afterEvents.projectileHitBlock.subscribe((eventData) => {
        if (eventData.projectile.typeId == "cyd_mgspl:projectile_fireball") fireball.impact(eventData.dimension.id, eventData.location);
        if (eventData.projectile.typeId == "cyd_mgspl:projectile_polymorph") polymorph.impact(eventData.dimension.id, eventData.location);
    });
}

function scriptEventListener() {
    mc.system.afterEvents.scriptEventReceive.subscribe((eventData) => {
        const { id, sourceEntity, message } = eventData;
        if (sourceEntity == null) return;

        //if (id == "cyd_mgspl:fireball" && message == "impact") fireball.impact(sourceEntity);
        if (id == "cyd_mgspl:witherskulls" && message == "impact") witherskulls.impact(sourceEntity);
        if (id == "cyd_mgspl:whirlwind" && message == "impact") whirlwind.impact(sourceEntity);
        if (id == "cyd_mgspl:gravity_vortex" && message == "impact") gravity_vortex.impact(sourceEntity);
        if (id == "cyd_mgspl:enderblight" && message == "impact") enderblight.impact(sourceEntity);
        if (id == "cyd_mgspl:summon_minion" && message == "impact") summon_minion.impact(sourceEntity);

        //if (id == "cyd_mgspl:polymorph" && message == "impact") polymorph.impact(sourceEntity);
        if (id == "cyd_mgspl:polymorph" && message == "expire") polymorph.expire(sourceEntity);
        if (id == "cyd_mgspl:polymorph" && message == "onDeath") polymorph.onDeath(sourceEntity);
    })
}

function handleSpellPlayer() {
    mc.world.getAllPlayers().forEach(player => {
        SPELL_PLAYERS.set(player.id, new SpellPlayer(player));
    });

    mc.world.afterEvents.playerSpawn.subscribe((eventData) => {
        if (eventData.player.hasTag('cyd_mgspl_book')) {}
        else {
            mc.world.getDimension(eventData.player.dimension.id).spawnItem(new mc.ItemStack("cyd_mgspl:guidebook", 1), eventData.player.location);
            eventData.player.addTag('cyd_mgspl_book');
        }
        SPELL_PLAYERS.set(eventData.player.id, new SpellPlayer(eventData.player));
    })

    mc.world.afterEvents.playerLeave.subscribe((eventData) => {
        SPELL_PLAYERS.delete(eventData.playerId)
    })

    mc.system.runInterval(() => {
        for (let spellplayer of SPELL_PLAYERS.values()) {
            spellplayer.tick();
        }
    }, PLAYER_TICK_INTERVAL);
}

export function updatePlayerSettings(player) {
    let spellplayer = SPELL_PLAYERS.get(player.id);
    if (spellplayer === undefined) return;
    spellplayer.updateSettings();
}

function initAddOn() {
    if (mc.world.scoreboard.getObjective("cyd_mgspl_mana") === undefined) mc.world.scoreboard.addObjective("cyd_mgspl_mana", "cyd_mgspl_mana");    //player mana values
    if (mc.world.scoreboard.getObjective("cyd_mgspl_info_mode") === undefined) mc.world.scoreboard.addObjective("cyd_mgspl_info_mode", "cyd_mgspl_info_mode");  //actionbar info text formatting
    if (mc.world.scoreboard.getObjective("cyd_mgspl_fail_note") === undefined) mc.world.scoreboard.addObjective("cyd_mgspl_fail_note", "cyd_mgspl_fail_note");  //regarding feedback that should be given when a spell fails
}

function initJigCompuersIntegration() {
    if (mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats") === undefined) mc.world.scoreboard.addObjective("cyd_mgspl:jig_computer.addon_stats", "cyd_mgspl:jig_computer.addon_stats");
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 0);

    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_enderblight_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_fireball_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_gravity_vortex_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_ice_blast_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_illuminate_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_levitation_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_lightning_strike_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_mineblast_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_polymorph_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_push_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_return_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_summon_minion_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_timewarp_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_whirlwind_cast", 0);
    mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_witherskulls_cast", 0);
}