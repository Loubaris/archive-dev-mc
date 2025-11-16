import * as mc from '@minecraft/server';
import * as lib from '../cyd_mgspl_lib';

export const NAME = "ice_blast";
export const MANACOST = 10;
export const COOLDOWN_IN_TICKS = 10;

export const DAMAGE = 6;
export const RADIUS = 8;
export const CONE = 90;
const KNOCKBACK_VERTICAL = 0.5;
const KNOCKBACK_HORIZONTAL = 1.0;

const SOUND_CAST = "cyd_mgspl.ice_blast_cast";
const SOUND_IMPACT = "cyd_mgspl.ice_blast_impact";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellIceBlast {

    player;
    cooldown;
    name;
    manacost;

    isActive = true;

    constructor(player) {
        this.player = player;
        this.cooldown = COOLDOWN_IN_TICKS;
        this.name = NAME;
        this.manacost = MANACOST;
    }

    activate() {
        let dimension = this.player.dimension.id;
        let view_vector = this.player.getViewDirection();
        let location = this.player.getHeadLocation();

        mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player.scoreboardIdentity, -MANACOST);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_ice_blast_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        let mvm = new mc.MolangVariableMap();
        mvm.setFloat(`variable.direction`, -Math.round(this.player.getRotation().y));

        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);
        mc.world.getDimension(dimension).spawnParticle("cyd_mgspl:ice_blast_wave_scr", location, mvm);
        mc.world.getDimension(dimension).spawnParticle("cyd_mgspl:ice_blast_sparks_scr_2", location, mvm);

        view_vector = {x: view_vector.x, y: 0, z: view_vector.z};
        try 
        {
            for (let entity of mc.world.getDimension(dimension).getEntities({ location: location,  families: ["mob"], excludeFamilies: ["npc","player","projectile","prop",], maxDistance: RADIUS})) 
            {
                if(lib.isEntityinCone(location, entity.location, view_vector, CONE))
                {
                    entity.applyDamage(DAMAGE);
                    mc.world.getDimension(dimension).spawnParticle("cyd_mgspl:ice_blast_hit", entity.location);
                    this.player.playSound(SOUND_IMPACT, SOUND_OPTIONS);
                    entity.applyKnockback(entity.location.x - location.x, entity.location.z - location.z, KNOCKBACK_HORIZONTAL , KNOCKBACK_VERTICAL);
                }
            }
        } 
        catch (error) {}
    }

    tick() {
        if (this.cooldown <= 0) this.isActive = false;
        this.cooldown = this.cooldown - 5;
    }
}
