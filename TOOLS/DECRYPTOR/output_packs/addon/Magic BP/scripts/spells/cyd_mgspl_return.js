import * as mc from '@minecraft/server';

export const NAME = "return";
export const MANACOST = 30;
export const COOLDOWN_IN_TICKS = 100;
export const RADIUS = 4;

const SOUND_CAST = "cyd_mgspl.return_cast";
const SOUND_FAIL = "cyd_mgspl.spell_fail";
const SOUND_OPTIONS = { pitch: 1.0, volume: 40.0, };

export default class SpellReturn {

    player;
    cooldown;
    name;
    manacost;
    spellTick = 0;

    isCharging = true;
    isActive = true;

    target_location;
    cast_location;
    cast_dimension;

    constructor(player) {
        this.player = player;
        this.cooldown = COOLDOWN_IN_TICKS;
        this.name = NAME;
        this.manacost = MANACOST;
    }

    activate() {
        this.target_location = this.player.getSpawnPoint();
        if(this.target_location === undefined)       //spell refuses to cast if player has no home point
        {
            this.player.playSound(SOUND_FAIL, SOUND_OPTIONS);
            return;
        }

        this.cast_location = this.player.location;
        this.cast_dimension = this.player.dimension.id;
        mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player.scoreboardIdentity, -MANACOST);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_return_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);
        mc.world.getDimension(this.player.dimension.id).spawnParticle("cyd_mgspl:return_circle", this.cast_location);
        mc.world.getDimension(this.player.dimension.id).spawnParticle("cyd_mgspl:return_outline", this.cast_location);
    }

    //run after 3 seconds
    //TODO camera fade, extra sound
    effect() {
        try 
        {
            for (let entity of mc.world.getDimension(this.cast_dimension).getEntities({ location: this.cast_location, excludeFamilies: ["projectile", "prop", "npc", "spell"], maxDistance: RADIUS})) 
            {
                entity.teleport({x: this.target_location.x, y: this.target_location.y, z: this.target_location.z},{dimension: this.target_location.dimension});
            }
        } 
        catch (error) {}
        this.isCharging = false;
    }

    arrivaleffect() {
        try 
        {
            mc.world.getDimension(this.cast_dimension).spawnParticle("cyd_mgspl:return_arrival", {x: this.target_location.x, y: this.target_location.y-0.5, z: this.target_location.z});
        } 
        catch (error) {}
    }

    tick() {
        if (this.isCharging) {
            this.spellTick = this.spellTick + 5;
            if (this.spellTick == 60) this.effect();
        }
        else {
            if (this.cooldown <= 0) this.isActive = false;
            this.cooldown = this.cooldown - 5;
            if (this.cooldown == 95) this.arrivaleffect();
        }
    }
}