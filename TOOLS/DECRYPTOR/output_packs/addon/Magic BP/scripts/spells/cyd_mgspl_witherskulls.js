import * as mc from '@minecraft/server';
import * as lib from '../cyd_mgspl_lib';

export const NAME = "witherskulls";
export const MANACOST = 10;
export const COOLDOWN_IN_TICKS = 80;
export const TYPE = "CHARGING";
export const CHARGES = 5;
const IMPULSE = 3.5;

export const DAMAGE = 12;
export const RADIUS = 2.5;
const KNOCKBACK_VERTICAL = 0.3;
const KNOCKBACK_HORIZONTAL = 0.3;

const SOUND_CAST = "cyd_mgspl.whitherskull_cast";
const SOUND_CHARGE = "cyd_mgspl.spell_charge";
const SOUND_OUT_OF_MANA = "cyd_mgspl.out_of_mana";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellWitherskulls {

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
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_witherskulls_cast", 1);
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
        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);

        for (let index = 0; index < this.charge; index++) {
            let projectile = mc.world.getDimension(dimension.id).spawnEntity("cyd_mgspl:projectile_witherskull", { x: (location.x + view_vector.x * 2), y: (location.y -0.5), z: (location.z + view_vector.z * 2) });
            projectile.setRotation(this.player.getRotation());
            projectile.addEffect('slow_falling', 1000, { amplifier: 1, showParticles: false });
            projectile.clearVelocity();
            projectile.applyImpulse({ x: view_vector.x * IMPULSE, y: view_vector.y * IMPULSE, z: view_vector.z * IMPULSE })
        }
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

export function impact(sourceEntity) {
   
    let evt_location = sourceEntity.location;
    let dimension = sourceEntity.dimension.id;
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