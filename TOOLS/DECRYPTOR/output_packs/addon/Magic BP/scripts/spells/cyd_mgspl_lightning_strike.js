import * as mc from '@minecraft/server';
import * as lib from '../cyd_mgspl_lib';

export const NAME = "lightning_strike";
export const MANACOST = 15;
export const COOLDOWN_IN_TICKS = 20;
export const RANGE = 48;

export const DAMAGE = 10;
export const RADIUS = 3.0;
const KNOCKBACK_VERTICAL = 0.5;
const KNOCKBACK_HORIZONTAL = 0.5;

const SOUND_CAST = "cyd_mgspl.lightning_impact";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellLightningStrike{

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
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_lightning_strike_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        let block_raycast_hit = dimension.getBlockFromRay(location, view_vector, { includeLiquidBlocks: false, includePassableBlocks: true, maxDistance: RANGE });
        if (block_raycast_hit != undefined) {
            //target location is one block away from the block hit so light is not within the block
            distance = Math.round(lib.getDistance(location, block_raycast_hit.block.location)) - 1;
        }

        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);
        let target_location = { x: (location.x + view_vector.x * distance), y: (location.y + view_vector.y * distance), z: (location.z + view_vector.z * distance) };
        mc.world.getDimension(dimension.id).spawnParticle("cyd_mgspl:lightning_impact_2", lib.getBlockMiddle(target_location));
        mc.world.getDimension(dimension.id).spawnParticle("cyd_mgspl:lightning_sparks", lib.getBlockMiddle(target_location));
        mc.world.getDimension(dimension.id).spawnParticle("cyd_mgspl:lightning_strike_l", lib.getBlockMiddle(target_location));

        try 
        {
            for (let entity of mc.world.getDimension(dimension.id).getEntities({ location: target_location, families: ["mob"], excludeFamilies: ["projectile", "prop", "npc", "spell"], maxDistance: RADIUS})) 
            {
                entity.applyDamage(DAMAGE);
                entity.applyKnockback(entity.location.x - target_location.x, entity.location.z - target_location.z, KNOCKBACK_HORIZONTAL , KNOCKBACK_VERTICAL);

                if(entity.typeId == "minecraft:creeper") entity.triggerEvent("minecraft:become_charged");
            }
        } 
        catch (error) {}
    }

    tick() {
        if (this.cooldown <= 0) this.isActive = false;
        this.cooldown = this.cooldown - 5;
    }
}