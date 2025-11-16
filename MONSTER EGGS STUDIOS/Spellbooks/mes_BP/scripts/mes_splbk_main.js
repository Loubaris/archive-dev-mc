import * as menu from './mes_splbk_menu.js';
import * as launches from './mes_splbk_launches.js';
import { world, system, ItemStack} from "@minecraft/server";


world.afterEvents.itemStopUse.subscribe(e => {
    let manabar = world.scoreboard.getObjective("mes_splbk_mana").getScore(e.source);

    if (e.itemStack.typeId === "mes_splbk:mana_potion" && e.useDuration === 0) {
        e.source.runCommand("/scoreboard players set @p mes_splbk_mana 15")
    }
    if (e.source.hasTag("mes_sb_cldown") === true) {
        e.source.runCommand("/titleraw @a[r=0.5] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
    };
    if (manabar <= 0) {
        if (e.source.hasTag("mes_sb_cldown") === false) {
            let fullbar = "⬛".repeat(manabar);
            let videbar = "⬛".repeat(15-manabar);
            e.source.onScreenDisplay.setActionBar(`§b            Mana Bar\n§r§f§l[§r§b${fullbar}§c${videbar}§f§l]\n§b       Not enough mana!`);
        };
    } else {
        // FIRE BOOK
        if (e.itemStack.typeId === "mes_splbk:fire_book") {
            if (e.source.isSneaking) {
                menu.firemenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] add mes_sb_fireswrd")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] mes_splbk_mana 1")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] add mes_sb_td")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=4..}] add mes_sb_lava")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=3..}] add mes_sb_geyser")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] add mes_sb_inferno")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=5..}] add mes_sb_volcano")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3..4,mes_splbk_mana=..3}] add mes_sb_notmana")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_lvt=..5,mes_splbk_mana=4..}] mes_splbk_mana 4")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=5..}] mes_splbk_mana 5")
                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:light_book") {
            if (e.source.isSneaking) {
                menu.lightmenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=2..}] add mes_sb_lightb")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_lghtbl=..3,mes_splbk_mana=2..}] mes_splbk_mana 2")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=..5,mes_splbk_lswrdt=..2}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=5..,mes_splbk_lswrdt=..2}] add mes_sb_lsword")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=3..}] add mes_sb_larrow")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=4..}] add mes_sb_sburst")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=5..}] add mes_sb_cwave")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1..4,mes_splbk_mana=..3}] add mes_sb_notmana")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=5..,mes_splbk_lswrdt=..2}] mes_splbk_mana 5")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=3..,mes_splbk_larrwt=..2}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=4..,mes_splbk_burstt=..2}] mes_splbk_mana 4")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=5..,mes_splbk_cwavet=..2}] mes_splbk_mana 5")
                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:water_book") {
            if (e.source.isSneaking) {
                menu.watermenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mlt=0,mes_splbk_mana=3..}] add mes_sb_wave")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0..2,mes_splbk_mana=..3}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mlt=0,mes_splbk_mana=3..}] add mes_sb_snow")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=3..}] add mes_sb_bble")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] add mes_sb_iclce")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] add mes_sb_td")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mlt=0,mes_splbk_mana=3..}] add mes_sb_water")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] mes_splbk_mana 1")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0..2,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=0,mes_splbk_mlt=3..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=1,mes_splbk_mlt=3..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=4,mes_splbk_mlt=3..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:earth_book") {
            if (e.source.isSneaking) {
                menu.earthmenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] add mes_sb_stnfsts")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=3..}] add mes_sb_entomb")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=5..}] add mes_sb_stnbdy")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0..1,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=5..}] mes_splbk_mana 5")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] add mes_sb_aval")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=3..}] add mes_sb_earqke")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=2,mes_splbk_stnbt=50..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:druid_book") {
            if (e.source.isSneaking) {
                menu.druidmenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_wlft=..4}] add mes_sb_wolf")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_wlft=..4}] mes_splbk_mana 3")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_drdt=..4,mes_splbk_mana=5..}] add mes_sb_spider")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_drdt=..4,mes_splbk_mana=..4}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_drdt=..4,mes_splbk_mana=..9}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_drdt=..4,mes_splbk_mana=10..}] add mes_sb_bat")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_drdt=..4,mes_splbk_mana=5..}] mes_splbk_mana 5")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_drdt=..4,mes_splbk_mana=10..}] mes_splbk_mana 10")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=4..}] add mes_sb_vines")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=4..}] add mes_sb_seed")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=3..4,mes_splbk_mana=4..}] mes_splbk_mana 4")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3..4,mes_splbk_mana=..4}] add mes_sb_notmana")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=1,mes_splbk_drdt=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=0,mes_splbk_wlft=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=2,mes_splbk_drdt=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")

                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:necro_book") {
            if (e.source.isSneaking) {
                menu.necromenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_ncrt=..4,mes_splbk_mana=3..},tag=!zombie] add mes_sb_skltn")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_ncrt=..4,mes_splbk_mana=3..},tag=!skeleton] add mes_sb_zmbie")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_ncrt=..4,mes_splbk_mana=3..},tag=!zombie] add mes_sb_td")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_ncrt=..4,mes_splbk_mana=3..},tag=!skeleton] add mes_sb_td")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=2..}] add mes_sb_mnion")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=15}] add mes_sb_totem")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=..15}] add mes_sb_notmana")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=15}] mes_splbk_mana 15")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mana=2..}] mes_splbk_mana 2")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=3..}] add mes_sb_drk")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0..1,mes_splbk_mana=3..,mes_splbk_ncrt=0}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_drkt=..2,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=0,mes_splbk_ncrt=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=1,mes_splbk_ncrt=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")

                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:arcane_book") {
            if (e.source.isSneaking) {
                menu.arcanemenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] add mes_sb_tballs")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] add mes_sb_td")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=2..,mes_splbk_blkt=0}] add mes_sb_blink")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_plmrt=..2,mes_splbk_mana=8..}] add mes_sb_plmrph")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2..3,mes_splbk_mana=..7}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=8..}] add mes_sb_arcexpl")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=3..}] add mes_sb_arcward")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=2..3,mes_splbk_mana=8..}] mes_splbk_mana 8")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=3..,mes_splbk_blkt=0}] mes_splbk_mana 2")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=2,mes_splbk_plmrt=2..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=3,mes_splbk_arcext=1..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=1,mes_splbk_blkt=1..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:air_book") {
            if (e.source.isSneaking) {
                menu.airmenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=5..}] add mes_sb_zephyr")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=..5}] add mes_sb_notmana")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=5..}] mes_splbk_mana 5")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mlt=..3,mes_splbk_mana=3..}] add mes_sb_mlstrm")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mlt=..3,mes_splbk_mana=3..}] add mes_sb_hdblt")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mlt=..3,mes_splbk_mana=..3}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_mlt=..3,mes_splbk_mana=..3}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] add mes_sb_dfsv")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=1..2,mes_splbk_mana=3..,mes_splbk_mlt=..3}] mes_splbk_mana 3")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_lightt=..2,mes_splbk_mana=4..}] add mes_sb_td")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_lightt=..2,mes_splbk_mana=4..}] add mes_sb_lttng")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=2..}] mes_splbk_mana 2")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=2,mes_splbk_mlt=3..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=4,mes_splbk_lightt=3..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=1,mes_splbk_mlt=3..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }") 
                };
            };
        };
        if (e.itemStack.typeId === "mes_splbk:shadow_book") {
            if (e.source.isSneaking) {
                menu.shadowmenu(e.source)
            } else {
                if (e.source.hasTag("mes_sb_cldown") === false) {
                    e.source.runCommand("/effect @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] invisibility 15 255 true")
                    e.source.runCommand("/execute as @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] at @s run particle mes_splbk:necro_poof ^ ^ ^0.2")
                    e.source.runCommand("/execute as @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] at @s run playsound mes.splbk.shoot_ability @a[r=5]")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=2..}] add mes_sb_blind")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_ncrt=..2,mes_splbk_mana=4..}] add mes_sb_heat")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_ncrt=..2,mes_splbk_mana=4..}] add mes_sb_ebon")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=2,mes_splbk_ncrt=..2,mes_splbk_mana=..4}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=3,mes_splbk_ncrt=..2,mes_splbk_mana=..4}] add mes_sb_notmana")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_ncrt=..2,mes_splbk_mana=6..}] add mes_sb_dash")
                    e.source.runCommand("/tag @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_ncrt=..2,mes_splbk_mana=..6}] add mes_sb_notmana")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=2..3,mes_splbk_mana=4..}] mes_splbk_mana 4")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=4,mes_splbk_mana=6..}] mes_splbk_mana 6")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=0,mes_splbk_mana=3..}] mes_splbk_mana 3")
                    e.source.runCommand("/scoreboard players remove @p[r=0.5,scores={mes_splbk_book=1,mes_splbk_mana=2..}] mes_splbk_mana 2")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=2,mes_splbk_ncrt=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=4,mes_splbk_ncrt=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }")
                    e.source.runCommand("/titleraw @a[r=0.5,scores={mes_splbk_book=3,mes_splbk_ncrt=4..}] actionbar { \"rawtext\" : [ { \"translate\" : \"mes_splbk.general.wait\" } ] }") 
                };
            };
        };
        if (e.source.hasTag("mes_sb_cldown") === false) {
            manabar = world.scoreboard.getObjective("mes_splbk_mana").getScore(e.source);
            let fullbar = "⬛".repeat(manabar);
            let videbar = "⬛".repeat(15-manabar);
            if (e.source.hasTag("mes_sb_notmana") === false) {
                e.source.onScreenDisplay.setActionBar(`§b            Mana Bar\n§r§f§l[§r§b${fullbar}§c${videbar}§f§l]`);
            } else {
                e.source.onScreenDisplay.setActionBar(`§b            Mana Bar\n§r§f§l[§r§b${fullbar}§c${videbar}§f§l]\n§b       Not enough mana!`);
                e.source.removeTag("mes_sb_notmana");
            }
        };
         // FOR CHARGING BOOKS
        if (e.source.hasTag("mes_sb_td") === true) {
            let timeduration = e.useDuration
            if (timeduration > 99975) {
                e.source.addTag("mes_sb_small");
                e.source.runCommand("/title @p actionbar   ");
            };
            if (timeduration > 99940 && timeduration < 99976) {
                e.source.addTag("mes_sb_medium");
                e.source.runCommand("/title @p[r=1] actionbar   ");
                e.source.runCommand("/scoreboard players remove @p mes_splbk_mana 1");
            };
            if (timeduration < 99941) {
                e.source.addTag("mes_sb_big");
                e.source.runCommand("/title @p[r=1] actionbar   ");
                e.source.runCommand("/scoreboard players remove @p mes_splbk_mana 2");
            };
        };
    };

});


world.afterEvents.itemUse.subscribe(e => {
        if (e.itemStack.typeId === "mes_splbk:guide_book") {
            menu.menushow(e.source);
        }
    });

function loop_commands(player) {

    player.runCommand("/function mes/splbk/commands");
        
    launches.test(player);
    if (player.isJumping) {
        player.runCommand("/execute as @a[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=..600}] at @s run particle mes_splbk:earth_shockwave ~ ~ ~ ");
        player.runCommand("/execute as @a[tag=mes_sb_zephyr,scores={mes_splbk_airt=5..}] at @s run playsound mob.breeze.slide @a[r=5]");
        player.runCommand("/execute as @a[tag=mes_sb_zephyr,scores={mes_splbk_airt=5..}] at @s run particle mes_splbk:zephyr ~ ~-1 ~");
        player.runCommand("/execute as @a[tag=mes_sb_zephyr,scores={mes_splbk_airt=5..}] at @s run tag @s add mes_sb_rmvjp");
        player.runCommand("/execute as @a[tag=mes_sb_zephyr,scores={mes_splbk_airt=5..}] at @s run effect @s levitation 1 27 true");
    };
    if (player.isSneaking) {
        player.runCommand("/execute as @a[tag=mes_sb_spider,scores={mes_splbk_drdt=5..}] at @s run scoreboard players set @p mes_splbk_drdt 595");
        player.runCommand("/execute as @a[tag=mes_sb_bat,scores={mes_splbk_drdt=5..}] at @s run scoreboard players set @p mes_splbk_drdt 595");
        let manabarplein = world.scoreboard.getObjective("mes_splbk_mana").getScore(player);
        let fullbar = "⬛".repeat(manabarplein);
        let videbar = "⬛".repeat(15-manabarplein);
        player.onScreenDisplay.setActionBar(`§b            Mana Bar\n§r§f§l[§r§b${fullbar}§c${videbar}§f§l]`);
    };
}

world.afterEvents.playerSpawn.subscribe(({ player }) => {
    if (player.hasTag("mes_sb_join") === false) {
        player.runCommand(`/tellraw @p { \"rawtext\" : [ { \"text\" : \"§7[§2§lSpellbooks§r§7] §f-§r §2Spellbook Guidebook Received\" } ] }`);
        player.runCommand("function mes/splbk/setup");
        world.getDimension(player.dimension.id).spawnItem(new ItemStack("mes_splbk:guide_book", 1), player.location);
        player.addTag("mes_sb_join")
    };
});


system.runInterval(() => {
    const players = world.getAllPlayers(); 
    players.forEach(loop_commands);
});
