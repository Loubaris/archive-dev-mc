import { world, EntityScaleComponent, system, EasingType } from '@minecraft/server';
import { Vector3Utils } from 'utilities/vector3_utils';
/**
 * Adapte la caméra des joueurs qui ont une taille différente à 1
 */
system.runInterval(() => {
    const players = world.getAllPlayers();
    players.forEach(player => {
        const scaleComp = player.getComponent(EntityScaleComponent.componentId);
        if (scaleComp.value === 1.0)
            return player.camera.clear();
        const playerViewDirection = player.getViewDirection();
        const playerLocation = player.location;
        const playerRotation = player.getRotation();
        const cameraOffset = { x: 0, y: scaleComp.value * 1.65, z: 0 };
        const cameraLocation = Vector3Utils.add(cameraOffset, Vector3Utils.substract(playerLocation, Vector3Utils.scale(playerViewDirection, scaleComp.value * 1.65)));
        player.camera.setCamera("douarmc:free", { location: cameraLocation, rotation: playerRotation, easeOptions: { easeType: EasingType.Linear, easeTime: 0.1 } });
    });
});
