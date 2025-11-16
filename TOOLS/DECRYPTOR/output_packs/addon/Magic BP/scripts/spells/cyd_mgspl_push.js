import * as mc from '@minecraft/server';

export const NAME = "push";
export const MANACOST = 10;
export const COOLDOWN_IN_TICKS = 40;

export const DAMAGE = 0;
export const RADIUS = 6.0;
const KNOCKBACK_VERTICAL = 0.75;
const KNOCKBACK_HORIZONTAL = 5.0;

const SOUND_CAST = "cyd_mgspl.push_cast";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

export default class SpellPush {

    player;
    cooldown;
    name;
    manacost;
    targetsHit;
    dimension;

    isActive = true;

    constructor(player) {
        this.player = player;
        this.cooldown = COOLDOWN_IN_TICKS;
        this.name = NAME;
        this.manacost = MANACOST;
        this.dimension = this.player.dimension.id;
    }

    activate() {
        let location = this.player.location;

        mc.world.scoreboard.getObjective("cyd_mgspl_mana").addScore(this.player.scoreboardIdentity, -MANACOST);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_push_cast", 1);
        mc.world.scoreboard.getObjective("cyd_mgspl:jig_computer.addon_stats").addScore("cyd_mgspl:stat_spells_cast", 1);

        this.player.playSound(SOUND_CAST, SOUND_OPTIONS);
        mc.world.getDimension(this.dimension).spawnParticle("cyd_mgspl:smoke_curly_ground", location);
        mc.world.getDimension(this.dimension).spawnParticle("cyd_mgspl:smoke_curly_explode", location);
        mc.world.getDimension(this.dimension).spawnParticle("cyd_mgspl:shockwave_spherical", location);

        this.targetsHit = mc.world.getDimension(this.dimension).getEntities({ location: location,  families: ["mob"], excludeFamilies: ["projectile", "prop", "npc", "spell"], maxDistance: RADIUS});
        if(this.targetsHit === undefined) return;
        for (let entity of this.targetsHit) 
        {   
            entity.applyKnockback(entity.location.x - location.x, entity.location.z - location.z, KNOCKBACK_HORIZONTAL , KNOCKBACK_VERTICAL);
            entity.applyDamage(DAMAGE);
        }
    }

    hitSmokeEffect() {
        for (let entity of this.targetsHit) 
        {   
            if(entity.isValid()) mc.world.getDimension(this.dimension).spawnParticle("cyd_mgspl:smoke_curly_puff", entity.location);
        }
    }

    tick() {
        if (this.cooldown <= 0) this.isActive = false;
        if(this.cooldown == 35) this.hitSmokeEffect();
        if(this.cooldown == 30) this.hitSmokeEffect();
        if(this.cooldown == 25) this.hitSmokeEffect();
        if(this.cooldown == 20) this.hitSmokeEffect();
        this.cooldown = this.cooldown - 5;
    }
}
