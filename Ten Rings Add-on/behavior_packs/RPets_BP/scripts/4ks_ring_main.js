import { world, system, ItemStack} from "@minecraft/server";
import { MessageFormResponse, MessageFormData, ActionFormData } from '@minecraft/server-ui';


function menushow(player) {

	const form = new ActionFormData()
		.title("Guidebook")
		.body("§l§bRing Pets\n\n§rCraft new rings of power and discover the secrets hidden within! Cast unique spells and summon incredible pets to assist you along your adventure!\n\nYou can find out more about each ring in this guidebook:")
		.button("Ender Ring", "textures/4ks/ring/items/ender_ring")
		.button("Fire Ring", "textures/4ks/ring/items/fire_ring")
		.button("Ice Ring", "textures/4ks/ring/items/ice_ring")
		.button("Light Ring", "textures/4ks/ring/items/light_ring")
		.button("Lightning Ring", "textures/4ks/ring/items/lightning_ring")
		.button("Metal Ring", "textures/4ks/ring/items/metal_ring")
		.button("Nature Ring", "textures/4ks/ring/items/nature_ring")
		.button("Rock Ring", "textures/4ks/ring/items/rock_ring")
		.button("TNT Ring", "textures/4ks/ring/items/tnt_ring")
		.button("Water Ring", "textures/4ks/ring/items/water_ring")
		.button("Guidebook", "textures/4ks/ring/items/guidebook");


	form.show(player).then((response) => {
		if (response.selection == 0) {
			const craftpage0 = new ActionFormData()
				.title("Ender Ring")
				.body( "§l§uEnder Ring:\n§rThis ancient ring is imbued with the devious power of the end. Embrace the darkness and dominate your foes!\n\n§lMaterials for Crafting:\n§r1x Eye of Ender\n1x Crying Obsidian\n\n§l[Use Item Button Effect]\n§rTeleport in the direction you're facing and damage mobs in your immediate area.\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Voodoom" )
				.button("Back", "textures/4ks/ring/pets/ender");
			craftpage0.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};		
		if (response.selection == 1) {
			const craftpage1 = new ActionFormData()
				.title("Fire Ring")
				.body( "§l§cFire Ring:\n§rLet the primordial flame embrace you. Scorch your foes with the chaos of the fire element and watch the world burn!\n\n§lMaterials for Crafting:\n§r1x Blaze Powder\n1x Magma\n\n§l[Use Item Button Effect]\n§rThrow a beam of flames in the direction infront of you and burn your foes!\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Rattamo\n\n§lAdditional effect: §rOnce summoned, holding the Use Item button again will change the pet's mode of attack." )
				.button("Back", "textures/4ks/ring/pets/fire");
			craftpage1.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 2) {
			const craftpage2 = new ActionFormData()
				.title("Ice Ring")
				.body( "§l§bIce Ring:\n§rThe power of the ancient frost embued in this ring will leave your foes chilling to the bone! Keep them in the cold!\n\n§lMaterials for Crafting:\n§r1x Packed Ice\n1x Iron Ingot\n\n§l[Use Item Button Effect]\n§rShoot a densely packed snowball that damages upon impact and afflicts your target with frostbite damage over time.\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Bigbear" )
				.button("Back", "textures/4ks/ring/pets/ice");
			craftpage2.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 3) {
			const craftpage3 = new ActionFormData()
				.title("Light Ring")
				.body( "§l§gLight Ring:\n§rThis brilliant ring has absorbed centuries of cosmic energy. Erase your foes with the blinding force of the light!\n\n§lMaterials for Crafting:\n§r1x Nether Star\n1x Iron Ingot\n\n§l[Use Item Button Effect]\n§rSpawn rays of light that will find and target the closest entity to damage with explosive power.\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Jira" )
				.button("Back", "textures/4ks/ring/pets/light");
			craftpage3.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 4) {
			const craftpage4 = new ActionFormData()
				.title("Lightning Ring")
				.body( "§l§eLightning Ring:\n§rThis empowered, electric ring will charge your foes with a shocking surprise! Walk the surface with confidence and bring down the power of the sky onto your foes around you!\n\n§lMaterials for Crafting:\n§r1x Lightning Rod\n1x Iron Ingot\n\n§l[Use Item Button Effect]\n§rSmite your foes around you.\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Zipzap" )
				.button("Back", "textures/4ks/ring/pets/lightning");
			craftpage4.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 5) {
			const craftpage5 = new ActionFormData()
				.title("Metal Ring")
				.body( "§l§8Metal Ring:\n§rBecome one with the strength of metal! Force your way through any tough situation and come out stronger with this ancient ring!\n\n§lMaterials for Crafting:\n§r1x Iron Ingot\n1x Deepslate\n\n§l[Use Item Button Effect]\n§rShoot out an explosive projectile infront of you and blow your enemies away!\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Juggernaut\n\n§lAdditional effect: §rOnce summoned, holding the Use Item button again will change the pet's mode of attack." )
				.button("Back", "textures/4ks/ring/pets/metal");
			craftpage5.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 6) {
			const craftpage6 = new ActionFormData()
				.title("Nature Ring")
				.body( "§l§aNature Ring:\n§rMother Nature has embued life and power into this floral ring. Let Mother Nature embrace you with the ancient power of love and protection through this ring.\n\n§lMaterials for Crafting:\n§r3x Seeds\n1x Gold Ingot\n\n§l[Use Item Button Effect]\n§rSurround yourself with the power of nature and damage all entities in your immediate area.\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Fauna" )
				.button("Back", "textures/4ks/ring/pets/nature");
			craftpage6.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 7) {
			const craftpage7 = new ActionFormData()
				.title("Rock Ring")
				.body( "§l§nRock Ring:\n§rBecome one with the immovable force of the mountain! Let your foes come and try to knock you down! They shall fail through the power of the primordial stone in this ring!\n\n§lMaterials for Crafting:\n§r1x Diamond\n1x Cobblestone\n\n§l[Use Item Button Effect]\n§rDamage and knockback your foes around you with a powerful ground stomp.\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Quartix" )
				.button("Back", "textures/4ks/ring/pets/rock");
			craftpage7.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 8) {
			const craftpage8 = new ActionFormData()
				.title("TNT Ring")
				.body( "§l§mTNT Ring:\n§rThe bearer of this mischievous ring is clearly up to no good. But sometimes you just want to watch things blow up and the spirit pet inside this ring loves doing just that.\n\n§lMaterials for Crafting:\n§r2x TNT\n\n§l[Use Item Button Effect]\n§rToss a massive TNT explosive and watch it go boom!\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Boomki" )
				.button("Back", "textures/4ks/ring/pets/tnt");
			craftpage8.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 9) {
			const craftpage9 = new ActionFormData()
				.title("Water Ring")
				.body( "§l§9Water Ring:\n§rFlow like water! Let this ancient power crash against your foes like the waves of the ocean!\n\n§lMaterials for Crafting:\n§r2x Water Bucket\n\n§l[Use Item Button Effect]\n§rPush away your foes with an ocean wave and drown your enemies in the process.\n\n§l[Holding Use Item Button Effect]\n§rSummon the pet: Wavey\n\n§lAdditional effect: §rOnce summoned, holding the Use Item button again will change the pet's mode of attack." )
				.button("Back", "textures/4ks/ring/pets/water");
			craftpage9.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
		if (response.selection == 10) {
			const craftpage10 = new ActionFormData()
				.title("Guidebook")
				.body( "§l§bGuidebook:\n§rJust in case you lose this guidebook, you can craft it as well!\n\n§lMaterials for Crafting:\n§r2x Book" )
				.button("Back");
			craftpage10.show(player).then((response0) => {if (response0.selection == 0) {menushow(player);}});
		};
	});
}

world.afterEvents.itemStopUse.subscribe(e => {
    if (e.itemStack.typeId === "4ks_ring:fire_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_fminion") === false) {
                e.source.addTag("4ks_fminion");
                e.source.addTag("4ks_fminionr")
                e.source.runCommand("/summon 4ks_ring:fire_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:fire_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §cRattamo has been summoned!");
            } else {
                if (e.source.hasTag("4ks_fminionr")) {
                    e.source.runCommand("/event entity @e[type=4ks_ring:fire_minion] 4ks_shoot")
                    e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cAttack Mode Changed! New Mode: Ranged Combat!\" } ] }")
                    e.source.removeTag("4ks_fminionr")
                } else {
                    e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cAttack Mode Changed! New Mode: Close Combat\" } ] }")
                    e.source.runCommand("/event entity @e[type=4ks_ring:fire_minion] 4ks_range")
                    e.source.addTag("4ks_fminionr")
                }
            };
        } else {
            if (e.source.hasTag("4ks_ring_f")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_f")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:metal_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_mminion") === false) {
                e.source.addTag("4ks_mminion");
                e.source.addTag("4ks_mminionr")
                e.source.runCommand("/summon 4ks_ring:metal_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:metal_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §cJuggernaut has been summoned!");
            } else {
                if (e.source.hasTag("4ks_mminionr")) {
                    e.source.runCommand("/event entity @e[type=4ks_ring:metal_minion] 4ks_shoot")
                    e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cAttack Mode Changed! New Mode: Ranged Combat!\" } ] }")
                    e.source.removeTag("4ks_mminionr")
                } else {
                    e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cAttack Mode Changed! New Mode: Close Combat\" } ] }")
                    e.source.runCommand("/event entity @e[type=4ks_ring:metal_minion] 4ks_range")
                    e.source.addTag("4ks_mminionr")
                }
            };
        } else {
            if (e.source.hasTag("4ks_ring_m")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_m")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:water_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_wminion") === false) {
                e.source.addTag("4ks_wminion");
                e.source.addTag("4ks_wminionr")
                e.source.runCommand("/summon 4ks_ring:water_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:water_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §cWavey has been summoned!");
            } else {
                if (e.source.hasTag("4ks_wminionr")) {
                    e.source.runCommand("/event entity @e[type=4ks_ring:water_minion] 4ks_shoot")
                    e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cAttack Mode Changed! New Mode: Ranged Combat!\" } ] }")
                    e.source.removeTag("4ks_wminionr")
                } else {
                    e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cAttack Mode Changed! New Mode: Close Combat\" } ] }")
                    e.source.runCommand("/event entity @e[type=4ks_ring:water_minion] 4ks_range")
                    e.source.addTag("4ks_wminionr")
                }
            };
        } else {
            if (e.source.hasTag("4ks_ring_w")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_w")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:rock_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_rminion") === false) {
                e.source.addTag("4ks_rminion");
                e.source.runCommand("/summon 4ks_ring:rock_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:rock_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §9Quartix has been summoned!");
            } else {
                e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cYou have already summoned this pet!\" } ] }")
            };
        } else {
            if (e.source.hasTag("4ks_ring_r")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_r")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:lightning_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_liminion") === false) {
                e.source.addTag("4ks_liminion");
                e.source.runCommand("/summon 4ks_ring:electric_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:electric_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §9Zipzap has been summoned!");
            } else {
                e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cYou have already summoned this pet!\" } ] }")
            };
        } else {
            if (e.source.hasTag("4ks_ring_li")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_li")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:tnt_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_tminion") === false) {
                e.source.addTag("4ks_tminion");
                e.source.runCommand("/summon 4ks_ring:tnt_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:tnt_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §9Boomki has been summoned!");
            } else {
                e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cYou have already summoned this pet!\" } ] }")
            };
        } else {
            if (e.source.hasTag("4ks_ring_t")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_t")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:ice_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_iminion") === false) {
                e.source.addTag("4ks_iminion");
                e.source.runCommand("/summon 4ks_ring:ice_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:ice_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §9Bigbear has been summoned!");
            } else {
                e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cYou have already summoned this pet!\" } ] }")
            };
        } else {
            if (e.source.hasTag("4ks_ring_i")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_i")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:light_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_lminion") === false) {
                e.source.addTag("4ks_lminion");
                e.source.runCommand("/summon 4ks_ring:light_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:light_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §9Jira has been summoned!");
            } else {
                e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cYou have already summoned this pet!\" } ] }")
            };
        } else {
            if (e.source.hasTag("4ks_ring_l")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_l")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:nature_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_nminion") === false) {
                e.source.addTag("4ks_nminion");
                e.source.runCommand("/summon 4ks_ring:nature_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:nature_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §9Fauna has been summoned!");
            } else {
                e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cYou have already summoned this pet!\" } ] }")
            };
        } else {
            if (e.source.hasTag("4ks_ring_n")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_n")
            };
        };
    };
    if (e.itemStack.typeId === "4ks_ring:ender_ring") {
        let timeduration = e.useDuration
        // FOR MINION
        if (timeduration < 99988) {
            if (e.source.hasTag("4ks_eminion") === false) {
                e.source.addTag("4ks_eminion");
                e.source.runCommand("/summon 4ks_ring:ender_minion ^ ^1.3 ^3")
                e.source.runCommand("/execute as @e[type=4ks_ring:ender_minion,r=5,c=1] at @s run particle 4ks_ring:poof");
                e.source.runCommand("/title @p[r=1] actionbar §9Voodoom has been summoned!");
            } else {
                e.source.runCommand("/titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§cYou have already summoned this pet!\" } ] }")
            };
        } else {
            if (e.source.hasTag("4ks_ring_e")) {
                e.source.runCommand("/title @p actionbar §cRing power on cooldown!")
            } else {
                e.source.addTag("4ks_ring_e")
            };
        };
    };
});



function loop_commands(player) {
    if (player.hasTag("4ks_ring_ss") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('snowball', location);
        projectile.setRotation(player.getRotation());
        projectile.addTag("4ks_ring_sst")
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove 4ks_ring_ss")
    };
    if (player.hasTag("4ks_ring_ts") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('4ks_ring:tnt_shoot', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove 4ks_ring_ts")
    };
    if (player.hasTag("4ks_ring_ms") === true) {
        let location = player.getHeadLocation();
        const velocity = player.getViewDirection();
        location = {
            x: location.x + velocity.x*1.5,
            y: location.y + velocity.y*1.5,
            z: location.z + velocity.z*1.5
        };
        const projectile = player.dimension.spawnEntity('4ks_ring:metal_burst', location);
        projectile.setRotation(player.getRotation());
        projectile.clearVelocity();
        projectile.applyImpulse({ x: velocity.x * 2, y: velocity.y * 2, z: velocity.z * 2 })
        player.runCommand("/tag @s remove 4ks_ring_ms")
    };
    player.runCommand("/function 4ks/ring/commands");
}

world.afterEvents.itemUse.subscribe(e => {
    if (e.itemStack.typeId === "4ks_ring:guidebook") {
        menushow(e.source);
    }
});

world.afterEvents.playerSpawn.subscribe(({ player }) => {
    if (player.hasTag("4ks_ring_join") === false) {
        player.runCommand("function 4ks/ring/setup");
        player.runCommand(`/tellraw @p { \"rawtext\" : [ { \"text\" : \"§7[§2§lRings§r§7] §f-§r §2Guidebook Received\" } ] }`);
        world.getDimension(player.dimension.id).spawnItem(new ItemStack("4ks_ring:guidebook", 1), player.location);
        player.addTag("4ks_ring_join")
    };
});

system.runInterval(() => {
    const players = world.getAllPlayers(); 
    players.forEach(loop_commands);
});
