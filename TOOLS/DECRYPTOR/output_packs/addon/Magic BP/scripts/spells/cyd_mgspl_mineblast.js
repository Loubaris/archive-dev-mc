import * as mc from '@minecraft/server';
import * as lib from '../cyd_mgspl_lib';

export const NAME = "mineblast";
export const MANACOST = 10;
export const COOLDOWN_IN_TICKS = 20;
export const TYPE = "CHARGING";
export const RANGE = 48;
export const CHARGES = 3;

const IGNORE_BLOCK_LIST = ["minecraft:bedrock","minecraft:light_block","minecraft:reinforced_deepslate","minecraft:barrier","minecraft:end_portal_frame","minecraft:structure_block","minecraft:structure_void","minecraft:command_block","minecraft:chain_command_block","minecraft:repeating_command_block"];

const SOUND_CAST = "cyd_mgspl.mineblast_impact";
const SOUND_CHARGE = "cyd_mgspl.mineblast_cast";
const SOUND_OUT_OF_MANA = "cyd_mgspl.out_of_mana";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellMineblast {

    player;
    cooldown;
    name;
    manacost;
    charge = 0;
    chargeMax = 3;
    spellTick = 0;

    isCharging = true;
    isActive = true;

    constructor(player) {
        this.player = player;
        this.cooldown = COOLDOWN_IN_TICKS;
        this.name = NAME;
        this.manacost = MANACOST;
        this.chargeMax = CHARGES;
    }

    activate() {
        this.increaseCharge();
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_mineblast_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);
    }

    increaseCharge() {
        if(this.charge == this.chargeMax)return;
        if (mc.world.scoreboard.getObjective("cyd_mgspl_mana").getScore(this.player) > this.manacost) 
        {
            mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player.scoreboardIdentity, -this.manacost);
            this.charge++;
            this.player.playSound(SOUND_CHARGE, SOUND_OPTIONS);
        }
        else
        {
            this.player.playSound(SOUND_OUT_OF_MANA, SOUND_OPTIONS);
        }

    }

    //spells stops by releasing interact button, if charged up enough the effect happens
    stop() {
        this.isCharging = false;
        if (this.charge == 0) return;
        this.effect();
    }

    effect() {
        let dimension = this.player.dimension;
        let view_vector = this.player.getViewDirection();
        let location = this.player.getHeadLocation();
        let distance = RANGE;

        let blockRaycastHit = dimension.getBlockFromRay(location, view_vector, { includeLiquidBlocks: false, includePassableBlocks: true, maxDistance: RANGE });
        if (blockRaycastHit != undefined) {
            distance = Math.round(lib.getDistance(location, blockRaycastHit.block.location));
        }
        let target_location = { x: (location.x + view_vector.x * distance), y: (location.y + view_vector.y * distance), z: (location.z + view_vector.z * distance) };
        target_location = lib.getBlockMiddle(target_location);
        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);

        let mvm = new mc.MolangVariableMap();
        mvm.setFloat(`variable.scale`, this.charge);

        mc.world.getDimension(dimension.id).spawnParticle("cyd_mgspl:blast_line_sparks", target_location, mvm);
        mc.world.getDimension(dimension.id).spawnParticle("cyd_mgspl:shockwave_spherical", target_location, mvm);
        mc.world.getDimension(dimension.id).spawnParticle("cyd_mgspl:blast_impact", target_location, mvm);


        //TODO make block destruction more sophisticated to preserve bedrock
        //this.player.runCommand("fill " + (target_location.x - this.charge) + " " + (target_location.y - this.charge) + " " + (target_location.z - this.charge) + " " + (target_location.x + this.charge) + " " + (target_location.y + this.charge) + " " + (target_location.z + this.charge) + " air destroy");
        deleteBlockRadius(dimension,target_location,(this.charge*2));
        this.charge = 0;
    }

    tick() {
        if (this.isCharging) {
            this.spellTick = this.spellTick + 5;
            if (this.spellTick%20 == 0) this.increaseCharge();
        }
        else {
            if (this.cooldown <= 0) this.isActive = false;
            this.cooldown = this.cooldown - 5;
        }
    }
}

//have to space out the commands over ticks
function deleteBlockRadius(dimension, location_center, radius)
{
    const location_min = { x: (location_center.x - (radius/2)), y: (location_center.y - (radius/2)), z: (location_center.z - (radius/2)) };
    let block_count = 0;
    for (let coord_y = 0; coord_y < radius; coord_y++) {
        block_count++;
        for (let coord_z = 0; coord_z < radius; coord_z++) {
            for (let coord_x = 0; coord_x < radius; coord_x++) {
                mc.system.runTimeout(() => {
                    try 
                    {
                        deleteBlock(mc.world.getDimension(dimension.id).getBlock({ x: (location_min.x + coord_x), y: (location_min.y + coord_y), z: (location_min.z + coord_z) }));
                    }
                    catch (error) {};
                }, block_count);
                
            }
        }
        
    }
}

function deleteBlock(block)
{
    if(block.isAir) return;
    if(block.isLiquid) return;

    const permutation = block.permutation;

    for (let index = 0; index < IGNORE_BLOCK_LIST.length; index++) {
        if(permutation.matches(IGNORE_BLOCK_LIST[index])) return;
    }

    mc.world.getDimension(block.dimension.id).runCommandAsync("setblock " + (block.x) + " " + (block.y) + " " + (block.z) + " air destroy");
}