import * as mc from '@minecraft/server';

export const NAME = "summon_minion";
export const MANACOST = 40;
const IMPULSE = 1.5;
export const COOLDOWN_IN_TICKS = 200;
export const DURATION = 30; //note that duration is usually set in the spell entity behavior, whenever you change this value make sure to manually sync in the behavior!

const RADIUS = 3.0;
const KNOCKBACK_VERTICAL = 0.5;
const KNOCKBACK_HORIZONTAL = 0.9;

//TODO IMPLEMENT SPELL
export default class SpellSummonMinion {

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
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_summon_minion_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        let projectile = mc.world.getDimension(dimension).spawnEntity("cyd_mgspl:projectile_summon_minion", { x: (location.x + view_vector.x * 2), y: (location.y -0.5), z: (location.z + view_vector.z * 2) });
        projectile.addEffect('slow_falling', 1000, { amplifier: 1, showParticles: false });
        projectile.clearVelocity();
        projectile.applyImpulse({ x: view_vector.x * IMPULSE, y: view_vector.y * IMPULSE, z: view_vector.z * IMPULSE })
    }

    tick() {
        if (this.cooldown <= 0) this.isActive = false;
        this.cooldown = this.cooldown - 5;
    }
}

//call this function via scriptevent by the projectile when it hits something
export function impact(sourceEntity) {
   
    let evt_location = sourceEntity.location;
    let dimension = sourceEntity.dimension.id;

    try 
    {
        for (let entity of mc.world.getDimension(dimension).getEntities({ location: evt_location, families: ["mob"], excludeFamilies: ["projectile", "prop", "npc", "spell"], maxDistance: RADIUS})) 
        {
            entity.applyKnockback(entity.location.x - evt_location.x, entity.location.z - evt_location.z, KNOCKBACK_HORIZONTAL , KNOCKBACK_VERTICAL);
        }
    } 
    catch (error) {}
    mc.world.getDimension(dimension).spawnEntity("cyd_mgspl:spell_summon_minion", evt_location);
}
