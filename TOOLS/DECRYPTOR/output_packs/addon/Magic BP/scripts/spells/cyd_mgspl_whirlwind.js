import * as mc from '@minecraft/server';
import * as lib from '../cyd_mgspl_lib';

export const NAME = "whirlwind";
export const MANACOST = 20;
export const COOLDOWN_IN_TICKS = 160;
export const DURATION = 16; //note that duration is usually set in the spell entity behavior, whenever you change this value make sure to manually sync in the behavior!
export const RANGE = 48;

export const DAMAGE = 2;
export const RADIUS = 5.0;
const KNOCKBACK_VERTICAL = 1.5;
const KNOCKBACK_HORIZONTAL = 0.2;

const SOUND_CAST = "cyd_mgspl.whirlwind_cast";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellWhirlwind {

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
        let dimension = this.player.dimension;
        let view_vector = this.player.getViewDirection();
        let location = this.player.getHeadLocation();
        let distance = RANGE;

        mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player.scoreboardIdentity, -MANACOST);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_whirlwind_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        let block_raycast_hit = dimension.getBlockFromRay(location, view_vector, { includeLiquidBlocks: false, includePassableBlocks: true, maxDistance: RANGE });
        if (block_raycast_hit != undefined) {
            //target location is one block away from the block hit so light is not within the block
            distance = Math.round(lib.getDistance(location, block_raycast_hit.block.location)) - 2;
        }

        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);
        let target_location = { x: (location.x + view_vector.x * distance), y: (location.y + view_vector.y * distance), z: (location.z + view_vector.z * distance) };
        mc.world.getDimension(dimension.id).spawnEntity("cyd_mgspl:spell_whirlwind", target_location);
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
            if(entity.isOnGround)
            {
                entity.applyDamage(DAMAGE);
                mc.world.getDimension(dimension).spawnParticle("cyd_mgspl:whirlwind_hit", entity.location);
                entity.applyKnockback(entity.location.x - evt_location.x, entity.location.z - evt_location.z, KNOCKBACK_HORIZONTAL , KNOCKBACK_VERTICAL);
            }
        }
    } 
    catch (error) {}
}