import * as mc from '@minecraft/server';
import * as lib from '../cyd_mgspl_lib';

export const NAME = "illuminate";
export const MANACOST = 10;
export const COOLDOWN_IN_TICKS = 60;
export const RANGE = 48;

const SOUND_CAST = "cyd_mgspl.illuminate_cast";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellIlluminate {

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
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_illuminate_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        let block_raycast_hit = dimension.getBlockFromRay(location, view_vector, { includeLiquidBlocks: true, includePassableBlocks: true, maxDistance: RANGE });
        if (block_raycast_hit != undefined) {
            //target location is one block away from the block hit so light is not within the block
            distance = Math.round(lib.getDistance(location, block_raycast_hit.block.location)) - 2;
        }

        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);
        let target_location = { x: (location.x + view_vector.x * distance), y: (location.y + view_vector.y * distance), z: (location.z + view_vector.z * distance) };
        mc.world.getDimension(dimension.id).spawnEntity("cyd_mgspl:spell_illuminate", target_location);
    }

    tick() {
        if (this.cooldown <= 0) this.isActive = false;
        this.cooldown = this.cooldown - 5;
    }
}