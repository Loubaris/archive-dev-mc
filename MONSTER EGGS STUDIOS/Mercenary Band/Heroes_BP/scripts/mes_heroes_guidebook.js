import { ActionFormData, } from "@minecraft/server-ui";
import { system } from "@minecraft/server"
export function guide_book(player) {

    // Reusable page function
    function showPage(player, title, body, backFn) {
        const form = new ActionFormData()
            .title(title)
            .body(body)
            .button("Back", "textures/mes/heroes/menu/return");
        form.show(player).then(() => backFn(player));
    }

    // Main menu
    function mainMenu(player) {
        const form = new ActionFormData()
            .title("Heroes Add-On Guidebook")
            .body("Welcome to the §6Heroes Add-On§r, where you can recruit powerful warriors to aid you on your adventures! This add-on introduces a variety of heroes, each with unique skills and combat styles. Whether you need a tank, damage dealer, or support, there's a hero to fit your needs. \n\n")
            // .button("1. Guide", "textures/mes/heroes/menu/guide")
            .button("Guide", "textures/mes/heroes/menu/guide")
            .button("Classes", "textures/mes/heroes/menu/classes")
            // .button("4. Progression", "textures/mes/heroes/menu/progression")
            .button("Crafting", "textures/mes/heroes/menu/crafting")
            // .button("6. Tips and Strategy", "textures/mes/heroes/menu/tips")
            .button("About", "textures/mes/heroes/menu/about")
        // .button("8. Changelog", "textures/mes/heroes/menu/changelog")
        // .button("9. Help and Support", "textures/mes/heroes/menu/help");

        form.show(player).then((res) => {
            if (res.canceled) return;
            const pages = [
                // page1_Introduction,
                page2_Guide,
                page3_Types,
                // page4_Growth,
                page4_Crafting,
                // page6_Tips,
                page5_About
            ];
            pages[res.selection](player);
        });
    }

    //     function page1_Introduction(player) {
    //         showPage(player, "Guide", `Welcome to the §6Heroes Add-On§r, where you can recruit powerful warriors to aid you on your adventures! This Add-On introduces a variety of Heroes, each with unique skills and combat styles. Whether you need a tank, damage dealer, or support, there's a Hero to fit your needs.

    // This guide will walk you through everything you need to know about hiring and managing Heroes using Contracts.`, mainMenu);
    //     }

    function page2_Guide(player) {
        showPage(player, "Guide", `§6Heroes§r are managed through §6Contracts§r, which serve as a way to track and command those under your control. Each contract has a limit, allowing you to manage up to eight heroes per contract for better organization.

§6Obtaining Contracts§r - Contracts can be acquired through crafting. Right-click / left-trigger (or tap on mobile) to use them.

§6Contract Limits§r - A contract can bind up to eight Heroes.

§6Recruiting Heroes§r - Speak to Heroes at the camp to invite them to join your team (if you have contract space). Right-click / left-trigger (or tap on mobile) on a Hero to recruit them.

§6Hero Interaction§r - Interacting with your heroes can allow you to rename them or give them instructions.

§6Releasing Heroes§r - If you no longer need a Hero, you can release them from the contract.

§6Campsites§r - Campsites appear naturally around the world and act as recruitment and management spots for Heroes. Each one offers different types of Heroes depending on the camp type.
`, mainMenu);
    }

    function page3_Types(player) {
        showPage(player, "Classes", `Each Hero specializes in a different combat role:

§6Guardian§r - A durable protector that absorbs damage for the team.

§6Sellsword§r - A well-rounded melee fighter with strong attacks.

§6Archer§r - A ranged combatant excelling in precision strikes.

§6Rogue§r - A fast-moving assassin with high damage output.

§6Beastmaster§r - A warrior who commands animals in battle.

§6Cleric§r - A support unit that heals and buffs allies.

More are planned for future updates!

Choosing the right mix of Heroes is key to forming an effective team.`, mainMenu);
    }

    //     function page4_Growth(player) {
    //         showPage(player, "4. Hero Growth and Upgrades", `Heroes will improve naturally over time as they fight and gain experience. You do not need to use special items to upgrade them. Instead, their stats, abilities, and tactics will evolve as they engage in battle.

    // Experience-Based Growth - Heroes grow stronger through combat.

    // No Manual Upgrades - Their progression happens automatically, requiring no direct intervention from the player.

    // This system ensures that Heroes become stronger the longer they survive, making them valuable long-term allies.`, mainMenu);
    //     }

    function page4_Crafting(player) {
        showPage(player, "Crafting", `The only required materials for managing Heroes are:

§6Contracts§r - Used to recruit Heroes.
§8|--§rIron Ingot§8-|-§rRedstone Dust§8-|
|----§rBook§8----|-----§rPaper§8----|§r

§6Guidebook§r - Provides in-game information about Heroes.
§8|-§rIron Ingot§8-|-§rBook§8-|§r

These can be crafted through the crafting table, found, or traded in the world.`, mainMenu);
    }

    //     function page6_Tips(player) {
    //         showPage(player, "6. Tips and Strategy", `

    // Balance your team by mixing different roles.

    // Keep Heroes active in combat to ensure they grow stronger.

    // Strategically release weaker Heroes if you need to make room for stronger recruits.`, mainMenu);
    //     }

    // function page7_About(player) {
    //     showPage(player, "7. About", `The §6Heroes Add-On§r was developed by Monster Egg Studios to bring an engaging and tactical Hero system to Minecraft. Whether you're exploring dangerous lands, defending villages, or facing powerful foes, your Heroes will always have your back!`, mainMenu);
    // }

    function page5_About(player) {
        const form = new ActionFormData()
            .title("About")
            .body("Get in touch, read common questions or see what's new.")
            .button("Get in touch", "textures/mes/heroes/menu/contact")
            .button("FAQs", "textures/mes/heroes/menu/faqs")
            .button("Changelog", "textures/mes/heroes/menu/changelog")
            .button("Back", "textures/mes/heroes/menu/return");

        form.show(player).then(res => {
            if (res.canceled) return;
            if (res.selection === 0) {
                page5a_Contact(player);
            } else if (res.selection === 1) {
                page5b_FAQs(player);
            } else if (res.selection === 2) {
                page5c_Changelog(player);
            } else if (res.selection === 3) {
                mainMenu(player);
            }
        });
    }

    function page5a_Contact(player) {
        const form = new ActionFormData()
            .title("Get in touch")
            .body("Choose a contact option:")
            .button("Email", "textures/mes/heroes/menu/contact")
            .button("Discord", "textures/mes/heroes/menu/contact")
            .button("Social Media", "textures/mes/heroes/menu/contact")
            .button("Back", "textures/mes/heroes/menu/return");

        form.show(player).then(res => {
            if (res.canceled) return;
            if (res.selection === 0) {
                showPage(player, "Email", `Email: §6Support@Monsteregg.co.uk§r

Send us a detailed message, and our team will respond as quickly as possible.`, page5a_Contact);
            } else if (res.selection === 1) {
                showPage(player, "Discord", `Join Our Community at §6discord.gg/VvPqFF4FTP§r

Get live support, connect with other players, and stay updated on all our projects.`, page5a_Contact);
            } else if (res.selection === 2) {
                showPage(player, "Social Media", `Follow us on §6Twitter§r, §6Facebook§r & §6Instagram§r - §n§6@MonsterEggMC§r

Stay in the loop with news, updates, and sneak peeks of upcoming content.`, page5a_Contact);
            } else if (res.selection === 3) {
                page5_About(player);
            }
        });
    }

    function page5b_FAQs(player) {
        showPage(player, "FAQs", `Check our Frequently Asked Questions for quick solutions to common issues.

If you can't find the answer you're looking for, feel free to reach out to us for support!`, page5_About);
    }

    function page5c_Changelog(player) {
        showPage(player, "Changelog", `Future Updates planned.

* New Heroes

* New Campsites

* Quality of Life Improvements
`, page5_About);
    }

    system.run(() => {
        mainMenu(player)
    })
}
