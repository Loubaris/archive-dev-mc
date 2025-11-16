import * as mc from '@minecraft/server';

export const NAME = "spellslinger_potion";
export const MANACOST = 0;
export const COOLDOWN_IN_TICKS = 0;

export const MANA_REG = 4;
export const DURATION_IN_TICKS = 1200;

export default class PotionSpellSlinger {

    spellplayer;
    player;
    cooldown;
    name;
    manacost;
    duration;

    isActive = true;

    constructor(spellplayer) {
        this.spellplayer = spellplayer;
        this.player = spellplayer.player;

        this.cooldown = COOLDOWN_IN_TICKS;
        this.name = NAME;
        this.manacost = MANACOST;
        this.duration = DURATION_IN_TICKS;
    }

    activate() {
    }

    effect() {
        mc.world.getDimension(this.player.dimension.id).spawnParticle("cyd_mgspl:spell_potion_2", this.player.location);
        if (this.duration%20 == 0)
        {
            mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player, MANA_REG);
            if (mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player) > this.spellplayer.manaMax) {
                mc.world.scoreboard.getObjective("cyd_mgspl_mana").setScore(this.player, this.spellplayer.manaMax);
            };
        }
    }

    tick() {
        if (this.duration <= 0) this.isActive = false;
        this.effect();
        this.duration = this.duration - 5;
    }
}