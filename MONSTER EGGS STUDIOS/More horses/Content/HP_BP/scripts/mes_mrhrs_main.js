import { world, system, ItemStack } from "@minecraft/server";
import { emberman_horse } from "./mes_mrhrs_emberman_horse";
import { hippocampus_horse } from "./mes_mrhrs_hippocampus_horse";
import { pegasus_horse } from "./mes_mrhrs_pegasus_horse";
import { unicorn_horse } from "./mes_mrhrs_unicorn_horse";
import { ghostmane_horse } from "./mes_mrhrs_ghostmane_horse";
import { arcane_horse } from "./mes_mrhrs_arcane_horse";
import { shadow_horse } from "./mes_mrhrs_shadow_horse";
import { glacian_horse } from "./mes_mrhrs_glacian_horse";
import { lushu_horse } from "./mes_mrhrs_lushu_horse";
import { hippogriff_horse } from "./mes_mrhrs_hippogriff_horse";
import { kirin_horse } from "./mes_mrhrs_kirin_horse";
import { MessageFormResponse, MessageFormData, ActionFormData, ModalFormData} from '@minecraft/server-ui';


function nameAndTagHorse(entity, name) {
    if (!entity.hasTag("named")) {
        entity.nameTag = name;
        entity.addTag("named");
    }
}

function loop_commands(player) {
    player.runCommand("/function mes/mrhrs/commands"); // Lance la fonction qui run les commandes minecraft

    for (let entity of player.dimension.getEntities()) {
        if (entity.typeId === "mes_mrhrs:emberman_horse") {
            nameAndTagHorse(entity, "Emberman Horse");
            emberman_horse(entity, player);
        } else if (entity.typeId === "mes_mrhrs:hippocampus_horse") {
            nameAndTagHorse(entity, "Hippocampus Horse");
            hippocampus_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:pegasus_horse") {
            nameAndTagHorse(entity, "Pegasus Horse");
            pegasus_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:unicorn_horse") {
            nameAndTagHorse(entity, "Unicorn Horse");
            unicorn_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:ghostmane_horse") {
            nameAndTagHorse(entity, "Ghostmane Horse");
            ghostmane_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:arcane_horse") {
            nameAndTagHorse(entity, "Arcane Horse");
            arcane_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:shadow_horse") {
            nameAndTagHorse(entity, "Shadow Horse");
            shadow_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:glacian_horse") {
            nameAndTagHorse(entity, "Glacian Horse");
            glacian_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:lushu_horse") {
            nameAndTagHorse(entity, "Lushu Horse");
            lushu_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:hippogriff_horse") {
            nameAndTagHorse(entity, "Hippogriff Horse");
            hippogriff_horse(entity);
        } else if (entity.typeId === "mes_mrhrs:kirin_horse") {
            nameAndTagHorse(entity, "Kirin Horse");
            kirin_horse(entity);
        }
    }

      
}


// INITIALISE ET DONNE LE GUIDE BOOK DE L'ADDON ( LE GUIDEBOOK JE LE CODERAIS MOI PLUS TARD)
world.afterEvents.playerSpawn.subscribe(({ player }) => {
	if (player.hasTag("mes_hrs_join") === false) {
		player.runCommand(
			`/tellraw @p { \"rawtext\" : [ { \"text\" : \"§7[§2§lMore Horses§r§7] §f-§r §2More Horses Add-On Guidebook Received\" } ] }`
		);
		player.runCommand("function mes/mrhrs/setup");
		world.getDimension(player.dimension.id).spawnItem(new ItemStack("mes_mrhrs:guide_book", 1), player.location);
		player.addTag("mes_hrs_join");
	}
});



world.afterEvents.itemUse.subscribe(e => {
    if (e.itemStack.typeId === "mes_mrhrs:claw") {
        e.source.addTag("mes_mrhrs_claw");
        e.source.runCommand("playsound mob.horse.idle @a[r=5]");
    };
    if (e.itemStack.typeId === "mes_mrhrs:guide_book") {
        const form = new ActionFormData()
            .title("Guidebook")
            .body({ translate: "mes_mrhrs.page1_body", "with": ["\n"] })
            .button( "Main Info", "textures/mes/mrhrs/items/help")
            .button( "Compendium", "textures/mes/mrhrs/items/guide_book")
            .button( "Tips and Tricks", "textures/mes/mrhrs/items/help")
            .button( "About", "textures/mes/mrhrs/items/help")
            .button( "Help and Support", "textures/mes/mrhrs/items/help")
            .button( "Close book", "textures/blocks/barrier");

        form.show(e.source).then((response) => {
            if (response.selection === 0) {
                const explications = new ActionFormData()
                    .title("§f§lGeneral Info")
                    .body({ translate: "mes_mrhrs.general_info.text", "with": ["\n"] })
                    .button("Close book", "textures/blocks/barrier");
                explications.show(e.source);
            } else if (response.selection === 1) {
                    const explications = new ActionFormData()
                        .title("§f§lCompendium")
                        .body({ translate: "mes_mrhrs.compendium.text", "with": ["\n"] })
                        .button("Close book", "textures/blocks/barrier");
                    explications.show(e.source);
            } else if (response.selection === 2) {
                const explications = new ActionFormData()
                    .title("§f§lTips And Tricks")
                    .body({ translate: "mes_mrhrs.tips.text", "with": ["\n"] })
                    .button("Close book", "textures/blocks/barrier");
                explications.show(e.source);
            } else if (response.selection === 3) {
                const explications = new ActionFormData()
                    .title("§f§lAbout")
                    .body({ translate: "mes_mrhrs.about.text", "with": ["\n"] })
                    .button("Close book", "textures/blocks/barrier");
                explications.show(e.source);
            } else if (response.selection === 4) {
                const explications = new ActionFormData()
                    .title("§f§lHelp and Support")
                    .body({ translate: "mes_mrhrs.help.text", "with": ["\n"] })
                    .button("Close book", "textures/blocks/barrier");
                explications.show(e.source);
            };
        });
    }
});

system.runInterval(() => {
	const players = world.getAllPlayers();
	players.forEach(loop_commands);
});

system.runInterval(() => {
    const players = world.getAllPlayers();
	
    players[0].runCommand("execute as @e[type=mes_mrhrs:unicorn_horse] at @s run particle mes_mrhrs:rainbow ~ ~ ~");
}, 100);