import { world, system } from "@minecraft/server";
// Affiche le nombre de PV des joueurs en dessous de leur pseudo.
system.runInterval(() => {
    const players = world.getAllPlayers();
    players.forEach((player) => {
        const playerHealthComponent = player.getComponent("minecraft:health");
        let playerCurrentHealth = playerHealthComponent.currentValue;
        const playerAbsorptionEffect = player.getEffect("absorption");
        if (playerAbsorptionEffect !== undefined) {
            const playerAbsorptionHealth = 4 * playerAbsorptionEffect.amplifier;
            playerCurrentHealth = playerCurrentHealth + playerAbsorptionHealth;
            player.nameTag = `${player.name}` + "\n" + `[§e${playerCurrentHealth}§f` + "/" + `${playerHealthComponent.effectiveMax}]`;
        }
        else {
            player.nameTag = `${player.name}` + "\n" + `[${playerCurrentHealth}` + "/" + `${playerHealthComponent.effectiveMax}]`;
        }
        ;
    });
});
// Enlève l'affichage des PV du joueur si celui-ci a le tag 'douarmc:hide_player_health'
system.runInterval(() => {
    const players = world.getAllPlayers();
    players.forEach((player) => {
        if (player.hasTag("douarmc:hide_player_health") === false)
            return;
        player.nameTag = player.name;
    });
});
