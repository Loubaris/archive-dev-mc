
import { world, system, ItemStack, EntityInventoryComponent } from "@minecraft/server";
import { MessageFormResponse, MessageFormData, ActionFormData } from '@minecraft/server-ui';


export function menushow(player) {
	player.playSound("item.book.put");
	const craftingform = new ActionFormData()
		.title({ translate: "mes_splbk.crafting_title" })
		.body({ translate: "mes_splbk.crafting_body" })
		.button("Mana Potion", "textures/mes/splbk/items/mana_potion")
		.button("Fire book", "textures/mes/splbk/items/fire_book")
		.button("Water book", "textures/mes/splbk/items/water_book")
		.button("Air book", "textures/mes/splbk/items/air_book")
		.button("Earth book", "textures/mes/splbk/items/earth_book")
		.button("Necro book", "textures/mes/splbk/items/necro_book")
		.button("Arcane book", "textures/mes/splbk/items/arcane_book")
		.button("Druid book", "textures/mes/splbk/items/druid_book")
		.button("Light book", "textures/mes/splbk/items/light_book")
		.button("Shadow book", "textures/mes/splbk/items/shadow_book")
		.button("Guide book", "textures/mes/splbk/items/guide_book")
		.button("mes_splbk.page1_btn3", "textures/blocks/barrier")


	const form = new ActionFormData()
		.title({ translate: "mes_splbk.tutorial_title" })
		.body({ translate: "mes_splbk.page1_body", "with": ["\n"] })
		.button({ translate: "mes_splbk.page1_btn1" }, "textures/mes/splbk/items/shadow_book")
		.button({ translate: "mes_splbk.page1_btn2" }, "textures/blocks/crafting_table_side")
		.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");


	form.show(player).then((response) => {
		if (response.selection === 1) {
			craftingform.show(player).then((repcraft) => {
				if (repcraft.selection == 0) {
					const craftpagep = new ActionFormData()
						.title("§bMana Potion")
						.body({ translate: "mes_splbk.mana_potion_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpagep.show(player);
				};
				if (repcraft.selection == 1) {
					const craftpage = new ActionFormData()
						.title("§4Fire Book")
						.body({ translate: "mes_splbk.fire_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage.show(player);
				};
				if (repcraft.selection == 2) {
					const craftpage2 = new ActionFormData()
						.title("§bWater Book")
						.body({ translate: "mes_splbk.water_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage2.show(player);
				};
				if (repcraft.selection == 3) {
					const craftpage3 = new ActionFormData()
						.title("§fAir Book")
						.body({ translate: "mes_splbk.air_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage3.show(player);
				};
				if (repcraft.selection == 4) {
					const craftpage4 = new ActionFormData()
						.title("§2Earth Book")
						.body({ translate: "mes_splbk.earth_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage4.show(player);
				};
				if (repcraft.selection == 5) {
					const craftpage5 = new ActionFormData()
						.title("§8Necro Book")
						.body({ translate: "mes_splbk.necro_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage5.show(player);
				};
				if (repcraft.selection == 6) {
					const craftpage6 = new ActionFormData()
						.title("§5Arcane Book")
						.body({ translate: "mes_splbk.arcane_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage6.show(player);
				};
				if (repcraft.selection == 7) {
					const craftpage7 = new ActionFormData()
						.title("§aDruid Book")
						.body({ translate: "mes_splbk.druid_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage7.show(player);
				};
				if (repcraft.selection == 9) {
					const craftpage8 = new ActionFormData()
						.title("§0§lShadow§r§0 Book")
						.body({ translate: "mes_splbk.shadow_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage8.show(player);
				};
				if (repcraft.selection == 8) {
					const craftpage9 = new ActionFormData()
						.title("§eLight Book")
						.body({ translate: "mes_splbk.light_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage9.show(player);
				};
				if (repcraft.selection == 10) {
					const craftpage10 = new ActionFormData()
						.title("Guide Book")
						.body({ translate: "mes_splbk.guide_book_craft", "with": ["\n"] })
						.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
					craftpage10.show(player);
				};
			});
		};
		if (response.selection === 0) {
			const explications = new ActionFormData()
				.title("§f§lGeneral Info")
				.body({ translate: "mes_splbk.general_info.text", "with": ["\n"] })
				.button({ translate: "mes_splbk.page1_btn3" }, "textures/blocks/barrier");
			explications.show(player);
		};
		if (response.selection === 2) {
			return;
		};
	});
}



export function firemenu(player) {
	let response = 0
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§4Fire Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`Current Spell §8:§r ${cspell + 1}`, `textures/mes/splbk/entity/attachable/fire_pages/fire_page${cspell + 1}`)
		.button(`1 §f-§r Fireball §f[§11-3§f]`, "textures/mes/splbk/entity/attachable/fire_pages/fire_page1")
		.button(`2 §f-§r Firewall §f[§14§f]`, "textures/mes/splbk/entity/attachable/fire_pages/fire_page2")
		.button(`3 §f-§r Flame Geyser §f[§13§f]`, "textures/mes/splbk/entity/attachable/fire_pages/fire_page3")
		.button(`4 §f-§r Inferno §f[§13§f]`, "textures/mes/splbk/entity/attachable/fire_pages/fire_page4")
		.button(`5 §f-§r Volcano §f[§15§f]`, "textures/mes/splbk/entity/attachable/fire_pages/fire_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function airmenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§f§lAir Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`§9Current Spell §f: §l${cspell + 1}`, `textures/mes/splbk/entity/attachable/air_pages/air_page${cspell + 1}`)
		.button(`1 §f-§r Zephyr Jump §f[§15§f]`, "textures/mes/splbk/entity/attachable/air_pages/air_page1")
		.button(`2 §f-§r Cyclone §f[§13§f]`, "textures/mes/splbk/entity/attachable/air_pages/air_page2")
		.button(`3 §f-§r Wind Tunnel §f[§13§f]`, "textures/mes/splbk/entity/attachable/air_pages/air_page3")
		.button(`4 §f-§r Air Defense §f[§13§f]`, "textures/mes/splbk/entity/attachable/air_pages/air_page4")
		.button(`5 §f-§r Lightning Strike §f[§12-4§f]`, "textures/mes/splbk/entity/attachable/air_pages/air_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function lightmenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§e§lLight Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`§9Current Spell §f: §l${cspell + 1}`, `textures/mes/splbk/entity/attachable/light_pages/light_page${cspell + 1}`)
		.button(`1 §f-§r Light Orb §f[§12§f]`, "textures/mes/splbk/entity/attachable/light_pages/light_page1")
		.button(`2 §f-§r Sword Of Light §f[§15§f]`, "textures/mes/splbk/entity/attachable/light_pages/light_page2")
		.button(`3 §f-§r Luminous Arrow §f[§13§f]`, "textures/mes/splbk/entity/attachable/light_pages/light_page3")
		.button(`4 §f-§r Solar Burst §f[§14§f]`, "textures/mes/splbk/entity/attachable/light_pages/light_page4")
		.button(`5 §f-§r Celestial Wave §f[§15§f]`, "textures/mes/splbk/entity/attachable/light_pages/light_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function druidmenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§2Druid Book Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`Current Spell §8:§r ${cspell + 1}`, `textures/mes/splbk/entity/attachable/druid_pages/druid_page${cspell + 1}`)
		.button(`1 §f-§r Wolf §f[§13§f]`, "textures/mes/splbk/entity/attachable/druid_pages/druid_page1")
		.button(`2 §f-§r Shapeshift Rabbit §f[§15§f]`, "textures/mes/splbk/entity/attachable/druid_pages/druid_page2")
		.button(`3 §f-§r Shapeshift Bat §f[§110§f]`, "textures/mes/splbk/entity/attachable/druid_pages/druid_page3")
		.button(`4 §f-§r Entangling Vines §f[§14§f]`, "textures/mes/splbk/entity/attachable/druid_pages/druid_page4")
		.button(`5 §f-§r Sacred Seed §f[§14§f]`, "textures/mes/splbk/entity/attachable/druid_pages/druid_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function necromenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§8Necro Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`Current Spell §8:§r ${cspell + 1}`, `textures/mes/splbk/entity/attachable/necro_pages/necro_page${cspell + 1}`)
		.button(`1 §f-§r Skeleton Army §f[§13§f]`, "textures/mes/splbk/entity/attachable/necro_pages/necro_page1")
		.button(`2 §f-§r Undead Horde §f[§13§f]`, "textures/mes/splbk/entity/attachable/necro_pages/necro_page2")
		.button(`3 §f-§r Corpse Explosion §f[§12§f]`, "textures/mes/splbk/entity/attachable/necro_pages/necro_page3")
		.button(`4 §f-§r Death Ward §f[§115§f]`, "textures/mes/splbk/entity/attachable/necro_pages/necro_page4")
		.button(`5 §f-§r Death Coil §f[§13§f]`, "textures/mes/splbk/entity/attachable/necro_pages/necro_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function shadowmenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§r§lShadow Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`Current Spell §8:§r ${cspell + 1}`, `textures/mes/splbk/entity/attachable/shadow_pages/shadow_page${cspell + 1}`)
		.button(`1 §f-§r Shroud Of Shadows §f[§13§f]`, "textures/mes/splbk/entity/attachable/shadow_pages/shadow_page1")
		.button(`2 §f-§r Darkness §f[§12§f]`, "textures/mes/splbk/entity/attachable/shadow_pages/shadow_page2")
		.button(`3 §f-§r Shadow Shot §f[§14§f]`, "textures/mes/splbk/entity/attachable/shadow_pages/shadow_page3")
		.button(`4 §f-§r Ebon Tendrils §f[§14§f]`, "textures/mes/splbk/entity/attachable/shadow_pages/shadow_page4")
		.button(`5 §f-§r Dash Attack §f[§16§f]`, "textures/mes/splbk/entity/attachable/shadow_pages/shadow_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function watermenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§bWater Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`Current Spell §8:§r ${cspell + 1}`, `textures/mes/splbk/entity/attachable/water_pages/water_page${cspell + 1}`)
		.button(`1 §f-§r Tidal Wave §f[§13§f]`, "textures/mes/splbk/entity/attachable/water_pages/water_page1")
		.button(`2 §f-§r Ice Double §f[§13§f]`, "textures/mes/splbk/entity/attachable/water_pages/water_page2")
		.button(`3 §f-§r Water Jet §f[§13§f]`, "textures/mes/splbk/entity/attachable/water_pages/water_page3")
		.button(`4 §f-§r Ice Lance §f[§11-3§f]`, "textures/mes/splbk/entity/attachable/water_pages/water_page4")
		.button(`5 §f-§r Waters Embrace §f[§13§f]`, "textures/mes/splbk/entity/attachable/water_pages/water_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function earthmenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§2Earth Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`Current Spell §8:§r ${cspell + 1}`, `textures/mes/splbk/entity/attachable/earth_pages/earth_page${cspell + 1}`)
		.button(`1 §f-§r Stone Fists §f[§13§f]`, "textures/mes/splbk/entity/attachable/earth_pages/earth_page1")
		.button(`2 §f-§r Entomb §f[§13§f]`, "textures/mes/splbk/entity/attachable/earth_pages/earth_page2")
		.button(`3 §f-§r Stone Body §f[§15§f]`, "textures/mes/splbk/entity/attachable/earth_pages/earth_page3")
		.button(`4 §f-§r Stalactite Drop §f[§13§f]`, "textures/mes/splbk/entity/attachable/earth_pages/earth_page4")
		.button(`5 §f-§r Earthquake §f[§13§f]`, "textures/mes/splbk/entity/attachable/earth_pages/earth_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}

export function arcanemenu(player) {
	player.playSound("item.book.put");
	const cspell = world.scoreboard.getObjective("mes_splbk_book").getScore(player);
	const form = new ActionFormData()
		.title({ translate: "§5Arcane Book" })
		.body({ translate: "mes_splbk.bookpage1_body" })
		.button(`Current Spell §8:§r ${cspell + 1}`, `textures/mes/splbk/entity/attachable/arcane_pages/arcane_page${cspell + 1}`)
		.button(`1 §f-§r Arcane Bolts §f[§12-4§f]`, "textures/mes/splbk/entity/attachable/arcane_pages/arcane_page1")
		.button(`2 §f-§r Blink §f[§12§f]`, "textures/mes/splbk/entity/attachable/arcane_pages/arcane_page2")
		.button(`3 §f-§r Polymorph §f[§18§f]`, "textures/mes/splbk/entity/attachable/arcane_pages/arcane_page3")
		.button(`4 §f-§r Arcane Explosion §f[§18§f]`, "textures/mes/splbk/entity/attachable/arcane_pages/arcane_page4")
		.button(`5 §f-§r Arcane Ward §f[§13§f]`, "textures/mes/splbk/entity/attachable/arcane_pages/arcane_page5");
	form.show(player).then((response) => {
		;
		if (response.canceled) return;
		let nvlpage = response.selection;
		if (nvlpage === 0) return;
		player.runCommand(`/scoreboard players set @p[r=1] mes_splbk_book ${nvlpage - 1}`)
		player.runCommand('/tag @s remove mes_sb_cldown')
		player.playSound("item.book.page_turn")
	});
}