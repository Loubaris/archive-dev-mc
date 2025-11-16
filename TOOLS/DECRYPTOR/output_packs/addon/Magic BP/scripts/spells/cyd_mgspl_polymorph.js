import * as mc from '@minecraft/server';

export const NAME = "polymorph";
export const MANACOST = 25
const IMPULSE = 2.0;
export const COOLDOWN_IN_TICKS = 40;
export const RADIUS = 2.0;
export const DURATION = 20; //note that duration is usually set in the spell entity behavior, whenever you change this value make sure to manually sync in the behavior!

const MAX_HP_CAP = 100;
const SOUND_FAIL = "cyd_mgspl.spell_fail";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

//TODO IMPLEMENT SPELL
export default class SpellPolymorph {

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
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_polymorph_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        let projectile = mc.world.getDimension(dimension).spawnEntity("cyd_mgspl:projectile_polymorph", { x: (location.x + view_vector.x * 2), y: (location.y -0.5), z: (location.z + view_vector.z * 2) });
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
export function impact(dimension, location) {
   
    let evt_location = location;
    let evt_dimension = dimension;

    let entity_location;
    let entity_type;
    try 
    {
        for (let entity of mc.world.getDimension(evt_dimension).getEntities({ location: evt_location, families: ["monster"], excludeFamilies: ["projectile", "prop", "npc", "spell"], maxDistance: RADIUS})) 
        {
            entity_location = entity.location;
            entity_type = entity.typeId;
            const health =  entity.getComponent("health");
            if(health.effectiveMax >= MAX_HP_CAP)
            {
                mc.world.playSound(SOUND_FAIL, entity_location, SOUND_OPTIONS);
                mc.world.getDimension(evt_dimension).spawnParticle("cyd_mgspl:polymorph_explosion", entity_location);
                return;
            }
            entity.remove();
            
            let polymorph_entity = mc.world.getDimension(evt_dimension).spawnEntity("cyd_mgspl:spell_polymorph_critter", entity_location);
            polymorph_entity.addTag("cyd_mgspl:poly"+entity_type);

            mc.world.getDimension(evt_dimension).spawnParticle("cyd_mgspl:polymorph_implosion", entity_location);
        }
    } 
    catch (error) {}
}

export function expire(sourceEntity) {
    
    let entity_location = sourceEntity.location;
    let dimension = sourceEntity.dimension.id;

    let polymorph_type;
    sourceEntity.getTags().forEach(element => {
        if(element.startsWith("cyd_mgspl:poly")) polymorph_type = element.substring(14);
    });
    sourceEntity.remove();

    mc.world.getDimension(dimension).spawnEntity(polymorph_type, entity_location);
    mc.world.getDimension(dimension).spawnParticle("cyd_mgspl:polymorph_explosion", entity_location);
}

export function onDeath(sourceEntity) {
    let entity_location = sourceEntity.location;
    let dimension = sourceEntity.dimension.id;

    let polymorph_type;
    sourceEntity.getTags().forEach(element => {
        if(element.startsWith("cyd_mgspl:poly")) polymorph_type = element.substring(14);
    });
    sourceEntity.remove();

    mc.world.getDimension(dimension).spawnEntity(polymorph_type, entity_location).kill();
    mc.world.getDimension(dimension).spawnParticle("cyd_mgspl:polymorph_explosion", entity_location);
}