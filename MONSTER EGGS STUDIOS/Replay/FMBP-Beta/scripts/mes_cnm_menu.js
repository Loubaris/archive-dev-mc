
import { world, system, ItemStack, EntityInventoryComponent } from "@minecraft/server";
import { MessageFormResponse, MessageFormData, ActionFormData } from '@minecraft/server-ui';


export function menushow(player) {
	player.playSound("item.book.put");

	const craftingform = new ActionFormData()
		.title("Crafting Recipes")
		.body("\n")
		.button("Camera Toolbox", "textures/mes/cnm/items/cam")
		.button("Guide Book", "textures/mes/cnm/items/guide_book")
		.button("Close book", "textures/blocks/barrier")

	const info = new ActionFormData()
		.title("CinemaCraft")
		.body({ translate: "mes_cnm.main_menu.text", "with": ["\n"] })
		.button("Close", "textures/blocks/barrier")

	const infoform = new ActionFormData()
		.title("CinemaCraft")
		.body({ translate: "mes_cnm.info.text", "with": ["\n"] })
		.button("Close book", "textures/blocks/barrier")

	const form = new ActionFormData()
		.title("CinemaCraft")
		.body("Welcome to CinemaCraft!\nThis guidebook has everything you need to know to get started and make the most of your cinematic adventures in Minecraft Bedrock Edition. \nUse the menu below to find what you need.")
		.button("Main Info", "textures/mes/cnm/items/cam")
		.button("Crafting Recipes", "textures/blocks/crafting_table_side")
		.button("Need Help or Have Questions?", "textures/mes/cnm/items/help")
		.button("Close book", "textures/blocks/barrier")


	form.show(player).then((response) => {
		if (response.canceled) return;
		if (response.selection === 0) {
			info.show(player);
		} else if (response.selection === 1) {
			craftingform.show(player).then((resultat) => {
				if (resultat.canceled) return;
				if (resultat.selection === 0) {
					const camcraft = new ActionFormData()
						.title("CinemaCraft")
						.body({ translate: "mes_cnm.camcraft.text", "with": ["\n"] })
						.button("Close book", "textures/blocks/barrier")
					camcraft.show(player);
				} else if (resultat.selection === 1) {
					const guidecraft = new ActionFormData()
						.title("CinemaCraft")
						.body({ translate: "mes_cnm.guidebookcraft.text", "with": ["\n"] })
						.button("Close book", "textures/blocks/barrier")
					guidecraft.show(player);
				}
			});
		} else if (response.selection === 2) {
			infoform.show(player);
		}
	});
}