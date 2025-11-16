
import { world, system, ItemStack, EntityInventoryComponent } from "@minecraft/server";
import { MessageFormResponse, MessageFormData, ActionFormData } from '@minecraft/server-ui';

export function test(player) {

    if (player.hasTag("mes_sb_fb") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:boulder_toss', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove mes_sb_fb")
    };
    if (player.hasTag("mes_sb_lar") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:light_arrow', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove mes_sb_lar")
    };
    if (player.hasTag("mes_sb_cw") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:celestial_wave', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove mes_sb_cw")
    };
    if (player.hasTag("mes_sb_stnl") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        let location1 = {
            x: location.x + velocity.x * 1.8,
            y: location.y + velocity.y * 1.8,
            z: location.z + velocity.z * 1.8
        };
        const projectile1 = player.dimension.spawnEntity('mes_splbk:stone_boulder', location1);
        projectile1.setRotation(player.getRotation());
        projectile1.clearVelocity();
        projectile1.applyImpulse({
            x: velocity.x * 1.2 + velocity.z * 0.6,
            y: velocity.y * 1.2,
            z: velocity.z * 1.2 - velocity.x * 0.6
        });
        
        // Second projectile: forward and to the left
        let location2 = {
            x: location.x + velocity.x * 1.8,
            y: location.y + velocity.y * 1.8,
            z: location.z + velocity.z * 1.8
        };
        const projectile2 = player.dimension.spawnEntity('mes_splbk:stone_boulder', location2);
        projectile2.setRotation(player.getRotation());
        projectile2.clearVelocity();
        projectile2.applyImpulse({
            x: velocity.x * 1.2 - velocity.z * 0.6,
            y: velocity.y * 1.2,
            z: velocity.z * 1.2 + velocity.x * 0.6
        });
        player.runCommand("/tag @s remove mes_sb_stnl")
    };
    if (player.hasTag("mes_sb_bbll") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:bubble_shoot', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2.2, y: velocity.y * 2.2, z: velocity.z * 2.2 })
        player.runCommand("/tag @s remove mes_sb_bbll")
    };
    if (player.hasTag("mes_sb_icel") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:icelance_shoot', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove mes_sb_icel")
    };
    if (player.hasTag("mes_sb_drksh") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:dark_shoot', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove mes_sb_drksh")
    };
    if (player.hasTag("mes_sb_wardsh") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:ward', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove mes_sb_wardsh")
    };
    if (player.hasTag("mes_sb_llsh") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('mes_splbk:lightning_shoot', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2.2, y: velocity.y * 2.5, z: velocity.z * 2.2 })
        player.runCommand("/tag @s remove mes_sb_llsh")
    }
};



