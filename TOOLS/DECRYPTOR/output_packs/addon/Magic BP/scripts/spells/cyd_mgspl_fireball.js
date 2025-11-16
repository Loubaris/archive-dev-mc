import * as mc from '@minecraft/server';

export const NAME = "fireball";
export const MANACOST = 10;
const IMPULSE = 1.8;
export const COOLDOWN_IN_TICKS = 15;

export const DAMAGE = 8;
export const RADIUS = 3.0;
const KNOCKBACK_VERTICAL = 0.5;
const KNOCKBACK_HORIZONTAL = 0.7;

const SOUND_CAST = "cyd_mgspl.fireball_impact";
const SOUND_OPTIONS = { pitch: 1.0, volume: 4.0, };

export default class SpellFireBall {

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
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_fireball_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        let projectile = mc.world.getDimension(dimension).spawnEntity("cyd_mgspl:projectile_fireball", { x: (location.x + view_vector.x * 2), y: (location.y -0.5), z: (location.z + view_vector.z * 2) });
        projectile.addEffect('slow_falling', 1000, { amplifier: 1, showParticles: false });
        projectile.clearVelocity();
        projectile.applyImpulse({ x: view_vector.x * IMPULSE, y: view_vector.y * IMPULSE, z: view_vector.z * IMPULSE })
    }

    tick() {
        if (this.cooldown <= 0) this.isActive = false;
        this.cooldown = this.cooldown - 5;
    }
}

export function impact(dimension, location) {
   
    let evt_location = location;
    let evt_dimension = dimension;
    
    mc.world.getDimension(evt_dimension).spawnParticle("cyd_mgspl:fireball_explosion_ex", evt_location);
    mc.world.getDimension(evt_dimension).spawnParticle("cyd_mgspl:fireball_impact_ember", evt_location);
    mc.world.getDimension(evt_dimension).spawnParticle("cyd_mgspl:fireball_sparks_small", evt_location);
    try 
    {
        for (let entity of mc.world.getDimension(dimension).getEntities({ location: evt_location, families: ["mob"], excludeFamilies: ["projectile", "prop", "npc", "spell"], maxDistance: RADIUS})) 
        {
            entity.applyDamage(DAMAGE);
            entity.applyKnockback(entity.location.x - evt_location.x, entity.location.z - evt_location.z, KNOCKBACK_HORIZONTAL , KNOCKBACK_VERTICAL);
        }
    } 
    catch (error) {}
}