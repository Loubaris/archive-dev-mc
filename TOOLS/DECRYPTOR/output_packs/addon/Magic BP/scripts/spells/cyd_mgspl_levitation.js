import * as mc from '@minecraft/server';

export const NAME = "levitation";
export const MANACOST = 1;
export const COOLDOWN_IN_TICKS = 20;
export const TYPE = "CHANNELLING";

const SOUND_LOOP = "cyd_mgspl.levitation_loop";
const SOUND_OUT_OF_MANA = "cyd_mgspl.out_of_mana";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellLevitation {

    player;
    cooldown;
    name;
    manacost;
    spellTick = 0;

    isCharging = true;
    isActive = true;

    constructor(player) {
        this.player = player;
        this.cooldown = COOLDOWN_IN_TICKS;
        this.name = NAME;
        this.manacost = MANACOST;
        this.scoreID = player.scoreboardIdentity;
    }

    activate() {
        this.effect();
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_levitation_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);
    }

    //spell stops by releasing interact button
    stop() {
        this.isCharging = false;
        this.player.addEffect("slow_falling", 20, { amplifier: 1, showParticles: false });
    }

    //run once per second
    effect() {
        if (mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.scoreID) < MANACOST) 
        {
            this.stop();
            this.player.playSound(SOUND_OUT_OF_MANA, SOUND_OPTIONS);
        }
        else
        {
            mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.scoreID)
            mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player.scoreboardIdentity, -MANACOST);

            if (this.spellTick%20 == 0) this.player.playSound(SOUND_LOOP, SOUND_OPTIONS);
            mc.world.getDimension(this.player.dimension.id).spawnParticle("cyd_mgspl:levitation_puff", this.player.location);
            this.player.addEffect("levitation", 10, { amplifier: 1, showParticles: false });
            
        }
    }

    tick() {
        if (this.isCharging) {
            this.effect();
            this.spellTick = this.spellTick + 5;
            
        }
        else {
            if (this.cooldown <= 0) this.isActive = false;
            this.cooldown = this.cooldown - 5;
        }
    }
}