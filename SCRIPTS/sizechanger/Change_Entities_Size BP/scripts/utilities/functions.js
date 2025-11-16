import { EntityScaleComponent, system } from "@minecraft/server";
import { ModalFormData } from "@minecraft/server-ui";
/**
 * Renvoie une nouveau server form UI pour le changemennt de taille d'entité
 */
export function createChangeEntitySizeFormUI() {
    return new ModalFormData().title("Change Entity Size");
}
;
/**
 * Récupère la taille de l'entité, la met dans le server form UI, et change sa taille en fonction de la valeur choisi par le joueur.
 */
export function changeSizeByFormUI(playerConfig, entityInteracted) {
    system.run(async () => {
        const scaleComp = entityInteracted.getComponent(EntityScaleComponent.componentId);
        const changeEntitySizeFormData = createChangeEntitySizeFormUI().textField(`Change ${entityInteracted.typeId} size`, "Entity Size", scaleComp.value.toFixed(1));
        // @ts-ignore
        const result = await changeEntitySizeFormData.show(playerConfig);
        /* CONDITION D'ARRÊT */ if (result.canceled)
            return;
        const valueChoosen = Number(result.formValues[0]);
        if (isNaN(valueChoosen))
            return playerConfig.sendMessage("§cValue has to be a number !");
        if (!(valueChoosen >= 0.1 && valueChoosen <= 10))
            return playerConfig.sendMessage("§cValue has to be between 0.1 and 10 !");
        scaleComp.value = valueChoosen;
    });
}
;
/**
 * Renvoie l'Entité la plus proche obtenu par méthode de Raycast.
 * @param entitiesRaycasted La liste des Entités obtenus par Raycast.
 * @returns
 */
export function getClosestEntityRaycasted(entitiesRaycasted) {
    let entityClosest = entitiesRaycasted[0].entity;
    let minDistance = entitiesRaycasted[0].distance;
    for (let i = 0; i < entitiesRaycasted.length; i++) {
        if (entitiesRaycasted[i].distance < minDistance) {
            minDistance = entitiesRaycasted[i].distance;
            entityClosest = entitiesRaycasted[i].entity;
        }
    }
    ;
    return entityClosest;
}
;
