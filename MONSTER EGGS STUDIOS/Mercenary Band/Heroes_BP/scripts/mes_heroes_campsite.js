import { system, ItemStack } from "@minecraft/server";
import { ActionFormData } from "@minecraft/server-ui";
import { getRelatedPlayer, smoothKill, worldLimits } from "./mes_heroes_utils";

export function campsiteUI(player, campsite) {
	const type = `mes_${campsite.typeId.split("_")[1]}`;
	const tagID = campsite.getTags().find((tag) => tag.startsWith("ID"));
	if (!tagID) return;
	const relatedMerc = campsite.dimension.getEntities({
		tags: [tagID],
		type: type,
	});

	system.run(() => {
		let toDisplay = "";
		for (const merc of relatedMerc) {
			if (merc == campsite) continue;
			const healthComp = merc.getComponent("minecraft:health");
			const type = merc.typeId;

			const maxHealth = healthComp?.defaultValue ?? "Inconnu";
			const currentHealth = healthComp?.currentValue ?? "Inconnu";
			const name = merc.nameTag != "" ? merc.nameTag : "No Name";
			const hired = getRelatedPlayer(merc);
			toDisplay += `Name : ${name} \nHired : ${hired ? "Yes" : "No"} \nHealth : ${currentHealth} / ${maxHealth}\nPosition : ${Math.floor(
				merc.location.x
			)}, ${Math.floor(merc.location.y)}, ${Math.floor(merc.location.z)}\nKills: ${
				merc
					.getTags()
					.find((tag) => tag.startsWith("kill"))
					?.split("-")[1] ?? 0
			}\n\n`;
		}

		const form = new ActionFormData().title(`Hero Stats / Campsite Stats`).body(toDisplay).button("Close").button("Remove Campsite");

		form.show(player).then((response) => {
			campsite.addTag("mes_heroes_clm");
			switch (response.selection) {
				case 0:
					break;
				case 1:
					const newCamp = new ItemStack(`${campsite.typeId}_spawn_egg`, 1);
					newCamp.nameTag = `${player.name} - ${
						campsite.typeId.split(":")[1].split("_")[0].charAt(0).toUpperCase() + campsite.typeId.split(":")[1].split("_")[0].slice(1)
					} Campsite`;
					for (const merc of relatedMerc) {
						// add the tag 'merc.addTag("mes_heroes_rem");' if the hero is hired, if not kill the hero smootKill(merc);
						// if merc has tag follow or tag stroll
						if (merc.hasTag("follow")) {
							merc.addTag("mes_heroes_rem");
							player.getComponent("minecraft:inventory")?.container.addItem(newCamp);
						} else {
							smoothKill(merc);
						}
					}
					smoothKill(campsite);
					break;
			}
		});
	});
}

export function campsiteRegen(campsite) {
	const nearbyMerc = campsite.dimension.getEntities({
		location: campsite.location,
		maxDistance: 7,
		type: `mes_heroes:${campsite.typeId.split(":")[1].split("_")[0]}`,
	});

	for (const merc of nearbyMerc) {
		const healthComp = merc.getComponent("minecraft:health");
		if (healthComp.currentValue < healthComp.defaultValue) {
			merc.runCommand("effect @s regeneration 3 3");
			merc.runCommand("particle mes_heroes:regen_camp ~ ~ ~");
		}
	}
}
