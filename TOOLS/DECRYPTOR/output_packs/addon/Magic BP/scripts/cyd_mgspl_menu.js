import * as mc from "@minecraft/server";
import * as ui from "@minecraft/server-ui";
import * as main from "./cyd_mgspl_main";
import * as lib from "./cyd_mgspl_lib";

const SOUND_TURN_PAGE = "item.book.page_turn";
const SOUND_OPTIONS = { pitch: 1.0, volume: 1.0, };

const MENU_MAIN = new ui.ActionFormData();
const MENU_TUTORIAL = new ui.ActionFormData();
const MENU_TUTORIAL_CASTING = new ui.ActionFormData();
const MENU_TUTORIAL_MANA = new ui.ActionFormData();

const MENU_SPELL_LIST = new ui.ActionFormData();

const MENU_ITEM_LIST = new ui.ActionFormData();
const MENU_ITEM_ARMOR = new ui.ActionFormData();
const MENU_ITEM_POTIONS = new ui.ActionFormData();

const MENU_ABOUT = new ui.ActionFormData();

//most of the menus don't ever change contents so we set them up once at the very start
export function setupStaticMenus() {
    //GUIDEBOOK MAIN
    MENU_MAIN.title({ translate: "cyd_mgspl.menu_main_title" });
    MENU_MAIN.body({ translate: "cyd_mgspl.menu_main_body", "with": ["\n"] });

    MENU_MAIN.button({ translate: "cyd_mgspl.menu_button_tutorial" }, "textures/cyd/mgspl/items/guidebook");
    MENU_MAIN.button({ translate: "cyd_mgspl.menu_button_spells" }, "textures/cyd/mgspl/items/fireball_menu");
    MENU_MAIN.button({ translate: "cyd_mgspl.menu_button_items" }, "textures/cyd/mgspl/items/wizard_hat");
    MENU_MAIN.button({ translate: "cyd_mgspl.menu_button_settings" }, "textures/cyd/mgspl/items/mana_cookie");
    MENU_MAIN.button({ translate: "cyd_mgspl.menu_button_about" }, "textures/cyd/mgspl/items/mana_potion");

    //GUIDEBOOK TUTORIAL
    MENU_TUTORIAL.title({ translate: "cyd_mgspl.menu_tutorial_title" });
    MENU_TUTORIAL.body({ translate: "cyd_mgspl.menu_tutorial_body", "with": ["\n"] });
    MENU_TUTORIAL.button({ translate: "cyd_mgspl.menu_button_howtospells" }, "textures/cyd/mgspl/items/fireball_menu");
    MENU_TUTORIAL.button({ translate: "cyd_mgspl.menu_button_mana" }, "textures/cyd/mgspl/items/manamote");
    MENU_TUTORIAL.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    MENU_TUTORIAL_CASTING.title({ translate: "cyd_mgspl.menu_howtospell_title" });
    MENU_TUTORIAL_CASTING.body({ translate: "cyd_mgspl.menu_howtospell_body", "with": ["\n"] });
    MENU_TUTORIAL_CASTING.button({ translate: "cyd_mgspl.menu_button_mana" }, "textures/cyd/mgspl/items/manamote");
    MENU_TUTORIAL_CASTING.button({ translate: "cyd_mgspl.menu_button_list" }, "textures/cyd/mgspl/items/fireball_menu");
    MENU_TUTORIAL_CASTING.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    MENU_TUTORIAL_MANA.title({ translate: "cyd_mgspl.menu_mana_title" });
    MENU_TUTORIAL_MANA.body({ translate: "cyd_mgspl.menu_mana_body", "with": ["\n"] });
    MENU_TUTORIAL_MANA.button({ translate: "cyd_mgspl.menu_button_armor" }, "textures/cyd/mgspl/items/wizard_hat");
    MENU_TUTORIAL_MANA.button({ translate: "cyd_mgspl.menu_button_potions" }, "textures/cyd/mgspl/items/mana_potion");
    MENU_TUTORIAL_MANA.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    //GUIDEBOOK SPELLS
    MENU_SPELL_LIST.title({ translate: "cyd_mgspl.menu_spells_title" });
    //MENU_SPELL_LIST.body({ translate: "cyd_mgspl.menu_spells_body", "with": ["\n"] }); don't think we need this line
    for (let index = 0; index < lib.SPELL_ITEMS.length; index++) {
        const element = lib.SPELL_ITEMS[index];
        let text = "cyd_mgspl." + lib.getSpellFromItem(element);
        MENU_SPELL_LIST.button({ translate: text }, "textures/cyd/mgspl/items/" + lib.getSpellFromItem(element));
    }
    MENU_SPELL_LIST.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    //GUIDEBOOK ITEMS
    MENU_ITEM_LIST.title({ translate: "cyd_mgspl.menu_item_title" });
    MENU_ITEM_LIST.body({ translate: "cyd_mgspl.menu_item_body", "with": ["\n"] });
    MENU_ITEM_LIST.button({ translate: "cyd_mgspl.menu_item_armor" }, "textures/cyd/mgspl/items/wizard_hat");
    MENU_ITEM_LIST.button({ translate: "cyd_mgspl.menu_item_potions" }, "textures/cyd/mgspl/items/mana_potion");
    MENU_ITEM_LIST.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    MENU_ITEM_ARMOR.title({ translate: "cyd_mgspl.menu_armor_title" });
    MENU_ITEM_ARMOR.body({ translate: "cyd_mgspl.menu_armor_body", "with": ["\n"] });
    MENU_ITEM_ARMOR.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    MENU_ITEM_POTIONS.title({ translate: "cyd_mgspl.menu_potions_title" });
    MENU_ITEM_POTIONS.body({ translate: "cyd_mgspl.menu_potions_body", "with": ["\n"] });
    MENU_ITEM_POTIONS.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    //GUIDEBOOK CREDITS
    MENU_ABOUT.title({ translate: "cyd_mgspl.menu_about_title" });
    MENU_ABOUT.body({ "rawtext": [{ "text": "Version: §a" + main.VERSION + "\n\n" }, { translate: "cyd_mgspl.menu_about_body", "with": ["\n"] }] });
    MENU_ABOUT.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");
}

export function menuMain(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_MAIN.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuTutorial(player);
                break;
            case 1:
                menuSpell(player);
                break;
            case 2:
                menuItems(player);
                break;
            case 3:
                menuSettings(player);
                break;
            case 4:
                menuAbout(player);
                break;
            default: break;
        }
    });
}

function menuTutorial(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_TUTORIAL.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuTutorialCasting(player);
                break;
            case 1:
                menuTutorialMana(player);
                break;
            case 2:
                menuMain(player);
                break;
            default: break;
        }
    });
}

function menuTutorialCasting(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_TUTORIAL_CASTING.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuTutorialMana(player);
                break;
            case 1:
                menuSpell(player);
                break;
            case 2:
                menuTutorial(player);
                break;
            default: break;
        }
    });
}

function menuTutorialMana(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_TUTORIAL_MANA.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuItemsArmor(player);
                break;
            case 1:
                menuItemsPotions(player);
                break;
            case 2:
                menuTutorial(player);
                break;
            default: break;
        }
    });
}

function menuSpell(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_SPELL_LIST.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        if (response == lib.SPELL_ITEMS.length) {   //last button in spell items is back
            menuMain(player);
        }
        else {
            spellDetailMenu(player, response);
        }

    });
}

function menuItems(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_ITEM_LIST.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuItemsArmor(player);
                break;
            case 1:
                menuItemsPotions(player);
                break;
            case 2:
                menuMain(player);
                break;
            default: break;
        }
    });
}

function menuItemsArmor(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_ITEM_ARMOR.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuItems(player);
                break;
            default: break;
        }
    });
}

function menuItemsPotions(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_ITEM_POTIONS.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuItems(player);
                break;
            default: break;
        }
    });
}

function menuSettings(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    let player_info_mode = mc.world.scoreboard.getObjective("cyd_mgspl_info_mode").getScore(player);
    let player_fail_mode = mc.world.scoreboard.getObjective("cyd_mgspl_fail_note").getScore(player);

    let info_options = [{ translate: "cyd_mgspl.settings_format_option_1" }, { translate: "cyd_mgspl.settings_format_option_2" }, { translate: "cyd_mgspl.settings_format_option_3" }];
    let fail_options = [{ translate: "cyd_mgspl.settings_fail_option_1" },{ translate: "cyd_mgspl.settings_fail_option_2" },{ translate: "cyd_mgspl.settings_fail_option_3" }];

    let form = new ui.ModalFormData()
    form.title({ translate: "cyd_mgspl.menu_settings_title" })
    form.dropdown({ translate: "cyd_mgspl.menu_settings_formatting" }, info_options, player_info_mode);
    form.dropdown({ translate: "cyd_mgspl.menu_settings_fail" }, fail_options, player_fail_mode);

    form.show(player).then(result => {
        if (result.canceled) return;

        mc.world.scoreboard.getObjective("cyd_mgspl_info_mode").setScore(player, result.formValues[0])
        mc.world.scoreboard.getObjective("cyd_mgspl_fail_note").setScore(player, result.formValues[1])
        main.updatePlayerSettings(player);
    });
}

function menuAbout(player) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    MENU_ABOUT.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuMain(player);
                break;
            default: break;
        }
    });
}


//pulls data from individual spells to compose the spell detail menu
function spellDetailMenu(player, spell_id) {
    player.playSound(SOUND_TURN_PAGE, SOUND_OPTIONS);
    let form = new ui.ActionFormData();
    let spell_class = lib.getSpellClassFromID(spell_id);
    
    let spell_hint = { translate: "cyd_mgspl.spell_hint_none", "with": ["\n"] };

    let spell_data_manacost = { "text": ""};
    let spell_data_cooldown = { "text": ""};
    let spell_data_damage = { "text": ""};
    let spell_data_range = { "text": ""};
    let spell_data_radius = { "text": ""};
    let spell_data_pull_radius = { "text": ""};
    let spell_data_duration = { "text": ""};

    if (spell_class.TYPE != undefined) {
        if (spell_class.TYPE == "CHANNELLING") spell_data_manacost = { "rawtext": [{ translate: "cyd_mgspl.spells_data_Manacost" },{"text":": §b" + (4 * spell_class.MANACOST) + " "},{ translate: "cyd_mgspl.spells_unit_per_second" },{"text":"\n§f"}]};
        if (spell_class.TYPE == "CHARGING") spell_data_manacost = { "rawtext": [{ translate: "cyd_mgspl.spells_data_Manacost" },{"text":": §b" + (4 * spell_class.MANACOST) + " "},{ translate: "cyd_mgspl.spells_unit_per_charge" },{"text":"\n§f"}]};
    }
    else spell_data_manacost = { "rawtext": [{ translate: "cyd_mgspl.spells_data_Manacost" },{"text":": §b" + spell_class.MANACOST + " "},{"text":"\n§f"}]};

    spell_data_cooldown = { "rawtext": [{ translate: "cyd_mgspl.spells_data_Cooldown" },{"text":": §6" + (spell_class.COOLDOWN_IN_TICKS / 20) + " "},{ translate: "cyd_mgspl.spells_unit_seconds" },{"text":"\n§f"}]};

    if (spell_class.DAMAGE != undefined) spell_data_damage = { "rawtext": [{ translate: "cyd_mgspl.spells_data_damage" },{"text":": §c" + spell_class.DAMAGE + " "},{"text":"\n§f"}]};
    if (spell_class.RANGE != undefined) spell_data_range = { "rawtext": [{ translate: "cyd_mgspl.spells_data_cast_range" },{"text":": §a" + spell_class.RANGE + " "},{ translate: "cyd_mgspl.spells_unit_block" },{"text":"\n§f"}]};
    if (spell_class.RADIUS != undefined) spell_data_radius = { "rawtext": [{ translate: "cyd_mgspl.spells_data_effect_radius" },{"text":": §c" + spell_class.RADIUS + " "},{ translate: "cyd_mgspl.spells_unit_block" },{"text":"\n§f"}]};
    if (spell_class.PULL_RADIUS != undefined) spell_data_pull_radius = { "rawtext": [{ translate: "cyd_mgspl.spells_data_pull_radius" },{"text":": §c" + spell_class.PULL_RADIUS + " "},{ translate: "cyd_mgspl.spells_unit_block" },{"text":"\n§f"}]};
    if (spell_class.DURATION != undefined) spell_data_duration = { "rawtext": [{ translate: "cyd_mgspl.spells_data_effect_duration" },{"text":": §d" + spell_class.DURATION + " "},{ translate: "cyd_mgspl.spells_unit_seconds" },{"text":"\n§f"}]};

    if (spell_class.TYPE != undefined) {
        if (spell_class.TYPE == "CHANNELLING") spell_hint = { translate: "cyd_mgspl.spell_hint_channelling", "with": ["\n"] };
        if (spell_class.TYPE == "CHARGING") spell_hint = { translate: "cyd_mgspl.spell_hint_charging", "with": ["\n"] };
    }

    form.title({ "rawtext": [{ "text": "§l" }, { translate: "cyd_mgspl.menu_title.spell_detail" }, { "text": ": " }, { translate: "cyd_mgspl." + lib.getSpellFromItem(lib.SPELL_ITEMS[spell_id]) },] });
    form.body({ "rawtext": [
                            spell_data_manacost,
                            spell_data_cooldown,
                            spell_data_damage,
                            spell_data_range,
                            spell_data_radius,
                            spell_data_pull_radius,
                            spell_data_duration,
                            spell_hint, 
                            { translate: "cyd_mgspl." + lib.getSpellFromItem(lib.SPELL_ITEMS[spell_id]) + ".desc" , "with": ["\n"] }, 
                            { "text": " \n" }] });
    form.button({ translate: "cyd_mgspl.menu_button_return" }, "textures/cyd/mgspl/items/menu_return");

    form.show(player).then(result => {
        if (result.canceled) return;

        let response = result.selection;
        switch (response) {
            case 0:
                menuSpell(player);
                break;
            default: break;
        }
    });
}

function rawtextBuilder()
{

}