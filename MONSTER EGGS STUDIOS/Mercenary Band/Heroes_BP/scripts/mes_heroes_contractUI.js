import { system } from "@minecraft/server";
import { MessageFormResponse, ActionFormData, ActionFormResponse, MessageFormData, ModalFormData } from "@minecraft/server-ui";
import { cleric } from "./mes_heroes_cleric";
import { addHeroToPlayer, getMercPropList, getMercPropNames, getNbMerc, getRelatedPlayer, removeNbMerc } from "./mes_heroes_utils";
export function contractUI(player, Hero) {
	if (!Hero || !player) return;
	const relatedPlayer = getRelatedPlayer(Hero);

	if (!relatedPlayer) {
		system.run(() => {
			if (getNbMerc(player) >= 8) {
				const form = new ActionFormData()
					.title("Too Much Contracts!")
					.body("Hey, you already have more than 8 contracts, release a Hero or come back later!")
					.button("Close");

				form.show(player).then((response) => {});
				return;
			}
			//Open UI to hire
			let mercText = "";
			switch (Hero.typeId.split(":")[1]) {
				case "archer":
					mercText =
						"Hi. I'm the Archer. You won't hear me coming-but you'll feel my arrows. Silent, swift, and always watching from the shadows. So, would you like to hire me for some exciting adventures?";
					break;
				case "beastmaster":
					mercText =
						"Hi! I'm the Beastmaster. I command the wild, and the wild obeys. With fangs, claws, and loyalty at my side, I bring nature's wrath to the battlefield. So, would you like to hire me for some exciting adventures?";
					break;
				case "cleric":
					mercText =
						"Greetings, I am the Cleric. I mend what is broken and guard what is sacred. The divine walks with me-and perhaps, with you too. So, would you like to hire me for some exciting adventures?";
					break;
				case "guardian":
					mercText =
						"Hi! I'm the Guardian. I shield those who cannot shield themselves. With my mighty armor and unshakable resolve, I'll stand between you and danger-no matter how grim it gets. So, would you like to hire me for some exciting adventures?";
					break;
				case "rogue":
					mercText =
						"Hi! I'm the Rogue. You won't see me coming, and honestly, that's the point. I strike fast, vanish faster, and I might steal your heart-if not your coin. So, would you like to hire me for some exciting adventures?";
					break;
				case "sellsword":
					mercText =
						"Hi! I'm the Sellsword. I fight for coin, but I give my enemies something priceless-regret. Whether it's steel, skill, or sarcasm, I've got you covered. So, would you like to hire me for some exciting adventures?";
					break;
			}

			let entityName = Hero.typeId.split(":")[1];
			entityName = entityName.charAt(0).toUpperCase() + entityName.slice(1);
			const messageForm = new MessageFormData().title("Hire?").body(`${mercText}`).button1("Yes, of course !").button2("Not interested, sorry.");

			messageForm.show(player).then((response) => {
				if (response.canceled) return;

				if (response.selection == 0) {
					if (getNbMerc(player) < 8) {
						Hero.addTag("follow");
						Hero.nameTag = Hero.nameTag + " - " + player.name;
						addHeroToPlayer(player, Hero);
						player.runCommand("title @s actionbar §aYou hired a new Hero!");
						player.runCommand("playsound beacon.activate @s");
					}
				}
			});
		});
	} else if (relatedPlayer == player) {
		//Open UI to manage
		system.run(() => {
			const form = new ActionFormData()
				.title("Manage Merceneary")
				.body("Chose an Option")
				.button(Hero.hasTag("follow") ? "Stay Here!" : "Follow Me!", "textures/items/compass_item.png")
				.button("Rename Me!", "textures/items/name_tag.png")
				.button("Teleport to player", "textures/items/ender_pearl.png")
				.button("Release", "textures/items/feather.png");

			form.show(player).then((response) => {
				if (response.canceled) return;

				switch (response.selection) {
					case 0:
						if (Hero.hasTag("follow")) {
							Hero.removeTag("follow");
							Hero.runCommandAsync("event entity @s enable_stroll");
							Hero.runCommandAsync("tag @s add has_stroll");
						} else {
							Hero.addTag("follow");
						}
						break;
					case 1:
						system.run(() => {
							const modalForm = new ModalFormData().title("Rename Me!");

							modalForm.textField("What nickname would you like to give me?", "?");

							modalForm.show(player).then((formData) => {
								try {
									let list = player.getDynamicPropertyIds();
									for (const element in list) {
										const prop = player.getDynamicProperty(element);
										if (!prop) continue;
										const propList = JSON.parse(String(prop));
										if (element.startsWith("Hero") && propList[0] == Hero.typeId.split(":")[1] && propList[1] == formData.formValues[0]) {
											return player.sendMessage(`You already have a Hero named ${formData.formValues[0]} !`);
										}
									}

									let relatedMercList = JSON.parse(String(player.getDynamicProperty(`Hero:${Hero.id}`)));
									Hero.nameTag = formData.formValues[0] + " - " + player.name;
									relatedMercList[1] = Hero.nameTag;
									player.setDynamicProperty(`Hero:${Hero.id}`, JSON.stringify(relatedMercList));
								} catch {
									player.sendMessage("Please choose the correct format !");
								}
							});
						});
						break;
					case 2:
						Hero.teleport(player.location);
						player.runCommand("playsound mob.shulker.teleport @s");
						break;
					case 3:
						removeNbMerc(player, Hero);
						Hero.nameTag = Hero.nameTag.split(" - ")[0];
						player.runCommand("playsound beacon.deactivate @s");
						break;
				}
			});
		});
	}
}

export function contractUI_Families(player) {
	system.run(() => {
		const categories = ["Archer", "Beastmaster", "Cleric", "Guardian", "Rogue", "Sellsword"];
		const mercList = getMercPropList(player);
		let nbArcher = 0;
		let nbBeastmaster = 0;
		let nbCleric = 0;
		let nbGuardian = 0;
		let nbRogue = 0;
		let nbSellsword = 0;

		//Hero:ID=[type,name,x,y,z]
		for (const merc of mercList) {
			switch (merc[0]) {
				case "archer":
					nbArcher++;
					break;
				case "beastmaster":
					nbBeastmaster++;
					break;
				case "cleric":
					nbCleric++;
					break;
				case "guardian":
					nbGuardian++;
					break;
				case "rogue":
					nbRogue++;
					break;
				case "sellsword":
					nbSellsword++;
					break;
			}
		}
		const form = new ActionFormData()
			.title(`Choose a category (${getNbMerc(player)}/8 contracts)`)
			.button(`Archer (${nbArcher})`, "textures/mes/heroes/items/archer.png")
			.button(`Beastmaster (${nbBeastmaster})`, "textures/mes/heroes/items/beastmaster.png")
			.button(`Cleric (${nbCleric})`, "textures/mes/heroes/items/cleric.png")
			.button(`Guardian (${nbGuardian})`, "textures/mes/heroes/items/guardian.png")
			.button(`Rogue (${nbRogue})`, "textures/mes/heroes/items/rogue.png")
			.button(`Sellsword (${nbSellsword})`, "textures/mes/heroes/items/sellsword.png");

		form.show(player).then((response) => {
			if (response.canceled) return;

			const mercType = categories[response.selection].toLowerCase();

			const idList = [];

			for (const propName of player.getDynamicPropertyIds()) {
				const prop = player.getDynamicProperty(propName);
				if (!prop) continue;
				const propList = JSON.parse(String(prop));
				if (propName.startsWith("Hero") && propList[0] == mercType) {
					idList.push(propName.split(":")[1]);
				}
			}

			let allHeroes = player.dimension.getEntities({
				type: `mes_heroes:${mercType}`,
			});

			let relatedHeroes = allHeroes.filter((merc) => idList.includes(merc.id));

			const allMercPropNames = getMercPropNames(player);

			const form2 = new ActionFormData().title("Chose a Hero you want to manage");

			const buttonList = [];
			for (const propName of allMercPropNames) {
				//Hero:ID=[type,name,x,y,z]
				const array = JSON.parse(String(player.getDynamicProperty(propName)));
				if (array[0] == mercType) {
					const currentHeroes = player.dimension.getEntities({
						location: { x: array[2], y: array[3], z: array[4] },
						maxDistance: 30,
						type: `mes_heroes:${mercType}`,
					});
					const goodCurrentHero = currentHeroes.filter((merc) => merc.nameTag == array[1])[0];
					const healthComp = goodCurrentHero?.getComponent("minecraft:health");

					const maxHealth = healthComp?.defaultValue ?? "??";
					const currentHealth = healthComp?.currentValue ?? "??";
					const nbKills =
						goodCurrentHero
							?.getTags()
							?.find((tag) => tag.startsWith("kill"))
							?.split("-")[1] ?? 0;
					buttonList.push(array[1]);
					form2.button(array[1] + "\n" + currentHealth + "/" + maxHealth + "HP" + " - " + nbKills + " Kills");
				}
			}
			form2.button("Go Back");

			form2.show(player).then((response) => {
				if (response.canceled) return;
				//is merc reachable ?
				const goBackBtn = buttonList.length;
				if (response.selection == goBackBtn) {
					contractUI_Families(player);
					return;
				}
				for (const merc of relatedHeroes) {
					for (const mercPropName of allMercPropNames) {
						const mercProp = JSON.parse(String(player.getDynamicProperty(mercPropName)));
						if (merc.nameTag == mercProp[1] && mercProp[1] == buttonList[response.selection] && mercType == mercProp[0]) {
							const relatedMerc = relatedHeroes.find((merc) => merc.nameTag == buttonList[response.selection]);

							contractUI(player, relatedMerc);
							return;
						}
					}
				}

				//merc is not reachable:

				let [x, y, z] = [0, 0, 0];
				for (const mercProp of getMercPropList(player)) {
					if (mercProp[0] == mercType && mercProp[1] == buttonList[response.selection]) {
						// We are now focusing the good mercProperty
						[x, y, z] = mercProp.splice(2, 5);
					}
				}

				player.runCommand(`tickingarea add circle ${x} ${y} ${z} 1 mes_heroes_load`);
				system.runTimeout(() => {
					player.runCommand(`tickingarea remove mes_heroes_load`);

					allHeroes = player.dimension.getEntities({
						type: `mes_heroes:${mercType}`,
					});

					relatedHeroes = allHeroes.filter((merc) => idList.includes(merc.id));

					for (const merc of relatedHeroes) {
						for (const mercPropName of allMercPropNames) {
							const mercProp = JSON.parse(String(player.getDynamicProperty(mercPropName)));
							if (merc.nameTag == mercProp[1] && mercProp[1] == buttonList[response.selection] && mercType == mercProp[0]) {
								const relatedMerc = relatedHeroes.find((merc) => merc.nameTag == buttonList[response.selection]);
								relatedMerc?.teleport(player.location);
								player.runCommand("playsound mob.shulker.teleport @s");
								contractUI(player, relatedMerc);
								return;
							}
						}
					}

					// if we are here, the merc is dead (we didn't find it)
					const mercPropNames = getMercPropNames(player);
					for (const mercPropName of allMercPropNames) {
						const mercProp = JSON.parse(String(player.getDynamicProperty(mercPropName)));
						if (mercProp[1] == buttonList[response.selection] && mercType == mercProp[0]) {
							return player.setDynamicProperty(mercPropName, null);
						}
					}
				}, 20 * 2); //TODO
				// const notFoundForm = new ActionFormData()
				// 	.title(`Hero Not Found`)
				// 	.body(
				// 		`Hey ! I'm kind of lost right not... Last time someone saw me I was near \n${x} ${y} ${z}`
				// 	)
				// 	.button("Close");

				// notFoundForm.show(player).then((response) => {
				// 	return;
				// });
			});
		});
	});
}
