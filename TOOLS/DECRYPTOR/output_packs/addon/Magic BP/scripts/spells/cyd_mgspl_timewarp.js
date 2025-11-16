import * as mc from '@minecraft/server';
import * as lib from '../cyd_mgspl_lib';

export const NAME = "timewarp";
export const MANACOST = 2;
export const COOLDOWN_IN_TICKS = 20;
export const TYPE = "CHANNELLING";

const SOUND_LOOP = "cyd_mgspl.timewarp_loop";
const SOUND_OUT_OF_MANA = "cyd_mgspl.out_of_mana";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellTimewarp {

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
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_timewarp_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);
    }

    //spell stops by releasing interact button
    stop() {
        this.isCharging = false;
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
            if (this.spellTick%20 == 0) mc.world.getDimension(this.player.dimension.id).spawnParticle("cyd_mgspl:timewarp_outline", this.player.location);
            let time = mc.world.getTimeOfDay()+200;
            if(time >= 24000) time = 0;

            mc.world.setTimeOfDay(time);
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