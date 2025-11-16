import { guardian } from "./mes_heroes_guardian";
import { world, system, ItemStack } from "@minecraft/server";

import {
	MessageFormResponse,
	MessageFormData,
	ActionFormData,
	ModalFormData,
} from "@minecraft/server-ui";
import { beastmaster } from "./mes_heroes_beastmaster";
import { archer } from "./mes_heroes_archer";
import { rogue } from "./mes_heroes_rogue";
import { sellswordUI, sellsword } from "./mes_heroes_sellsword";
import { listener } from "./mes_heroes_listener";
import { cleric } from "./mes_heroes_cleric";
import { isLookingAtEntity, repulse } from "./mes_heroes_utils";
import { campsiteRegen } from "./mes_heroes_campsite";

function loop_commands(player) {
	player.runCommand("/function mes/mrhrs/commands"); // Lance la fonction qui run les commandes minecraft
	for (let entity of player.dimension.getEntities()) {
		if (
			entity.typeId == "mes_heroes:archer" ||
			entity.typeId == "mes_heroes:guardian" ||
			entity.typeId == "mes_heroes:beastmaster" ||
			entity.typeId == "mes_heroes:rogue" ||
			entity.typeId == "mes_heroes:sellsword" ||
			entity.typeId == "mes_heroes:cleric"
		) {
			repulse(entity, 2, true)
		}
		if (entity.typeId === "mes_heroes:guardian") {
			guardian(entity);
		} else if (entity.typeId === "mes_heroes:beastmaster") {
			beastmaster(entity);
		} else if (entity.typeId === "mes_heroes:archer") {
			archer(entity);
		} else if (entity.typeId == "mes_heroes:rogue") {
			rogue(entity);
		} else if (entity.typeId == "mes_heroes:sellsword") {
			sellsword(entity);
			// if(entity.hasComponent("minecraft:variant")){
			// 	system.run(()=>{
			// 		entity.runCommand(`say ${entity.getComponent("minecraft:variant").value}`)
			// 	})
			// }
		} else if (entity.typeId == "mes_heroes:cleric") {
			cleric(entity);
		} else if (entity.typeId == "mes_heroes:beastwolf") {
			// entity.runCommand("t")
			repulse(entity, 2, true);
		} else if (entity.typeId.split(":")[1].split("_")[1] == "campsite") {
			campsiteRegen(entity);
		}
	}
	// player.runCommand(`say ${player.isOnGround}`)
}
//Moved to mes_heroes_listener.js
// const playerSpawnListener = world.afterEvents.playerSpawn.subscribe(({ player }) => {
// 	if (player.hasTag("mes_heroes_join") === false) {
// 		player.runCommand(
// 			`/tellraw @p { \"rawtext\" : [ { \"text\" : \"§7[§2§lHero Band§r§7] §f-§r §2Hero Band Add-On Guidebook Received\" } ] }`
// 		);
// 		player.runCommand("function mes/heroes/setup");
// 		//world.getDimension(player.dimension.id).spawnItem(new ItemStack("mes_mrhrs:guide_book", 1), player.location);
// 		player.addTag("mes_heroes_join");
// 	}
// });

listener();

//Pour le guidebook (a moi de le coder)
// world.afterEvents.itemUse.subscribe(e => {
//     if (e.itemStack.typeId === "mes_mrhrs:guide_book") {
//         const form = new ActionFormData()
//             .title("Guidebook")
//             .body({ translate: "mes_mrhrs.page1_body", "with": ["\n"] })
//             .button( "Main Info", "textures/mes/mrhrs/items/help")
//             .button( "Compendium", "textures/mes/mrhrs/items/guide_book")
//             .button( "Tips and Tricks", "textures/mes/mrhrs/items/help")
//             .button( "About", "textures/mes/mrhrs/items/help")
//             .button( "Help and Support", "textures/mes/mrhrs/items/help")
//             .button( "Close book", "textures/blocks/barrier");

//         form.show(e.source).then((response) => {
//             if (response.selection === 0) {
//                 const explications = new ActionFormData()
//                     .title("§f§lGeneral Info")
//                     .body({ translate: "mes_mrhrs.general_info.text", "with": ["\n"] })
//                     .button("Close book", "textures/blocks/barrier");
//                 explications.show(e.source);
//             } else if (response.selection === 1) {
//                     const explications = new ActionFormData()
//                         .title("§f§lCompendium")
//                         .body({ translate: "mes_mrhrs.compendium.text", "with": ["\n"] })
//                         .button("Close book", "textures/blocks/barrier");
//                     explications.show(e.source);
//             } else if (response.selection === 2) {
//                 const explications = new ActionFormData()
//                     .title("§f§lTips And Tricks")
//                     .body({ translate: "mes_mrhrs.tips.text", "with": ["\n"] })
//                     .button("Close book", "textures/blocks/barrier");
//                 explications.show(e.source);
//             } else if (response.selection === 3) {
//                 const explications = new ActionFormData()
//                     .title("§f§lAbout")
//                     .body({ translate: "mes_mrhrs.about.text", "with": ["\n"] })
//                     .button("Close book", "textures/blocks/barrier");
//                 explications.show(e.source);
//             } else if (response.selection === 4) {
//                 const explications = new ActionFormData()
//                     .title("§f§lHelp and Support")
//                     .body({ translate: "mes_mrhrs.help.text", "with": ["\n"] })
//                     .button("Close book", "textures/blocks/barrier");
//                 explications.show(e.source);
//             };
//         });
//     }
// });

system.runInterval(() => {
	const players = world.getAllPlayers();
	players.forEach(loop_commands);
});
system.runInterval(() => {
	const players = world.getAllPlayers();
	for (const player of players) {
		// player.runCommand(`summon zombie ${(player.location.x - Math.sin(player.getRotation().y*Math.PI/180))} ~ ${(player.location.z +Math.cos(player.getRotation().y*Math.PI/180))}`)
		for (const beastwolf of player.dimension.getEntities({
			type: "mes_heroes:beastwolf",
		})) {
			const nearbyMonster = beastwolf.dimension.getEntities({
				location: beastwolf.location,
				maxDistance: 4,
				families: ["monster"],
			});

			const wolfTime = beastwolf.getTags()[0];
			// Convert wolfTime tag (string) to a number for comparison
			if (
				wolfTime &&
				Date.now() - Number(wolfTime) > 15000 &&
				nearbyMonster.length == 0
			) {
				try {
					beastwolf.runCommand("playsound mob.wolf.death @a[r=15] ~ ~ ~ 0.3");
					beastwolf.runCommand("particle mes_heroes:poof ~ ~0.5 ~");
					beastwolf.runCommand("kill @s");
				} catch { }
			}
		}
	}
}, 20 * 1);

// system.runInterval(()=>{
// 	const players = world.getAllPlayers()
// 	const player=players[0]

// 	// player.dimension.spawnEntity("minecraft:zombie",{
// 	// 	x: player.location.x - Math.sin(player.getRotation().y*Math.PI/180),
// 	// 	y: player.location.y + 1.6,
// 	// 	z: player.location.z + Math.cos(player.getRotation().y*Math.PI/180)
// 	// })
// 	if(player.isSneaking){
// 		player.dimension.spawnEntity("minecraft:zombie", player.location)
// 		player.runCommand("replaceitem entity @e[type=zombie,r=1] slot.armor.head 0 iron_helmet")
// 		player.runCommand("replaceitem entity @e[type=zombie,r=1] slot.armor.chest 0 iron_chestplate")

// 	}
// },20*1)
