export class Vector3Utils {
    /**
     * Additionne deux vecteurs
     */
    static add(vector1, vector2) {
        return { x: vector1.x + vector2.x, y: vector1.y + vector2.y, z: vector1.z + vector2.z };
    }
    ;
    /**
     * Soustrait deux vecteurs
     */
    static substract(vector1, vector2) {
        return { x: vector1.x - vector2.x, y: vector1.y - vector2.y, z: vector1.z - vector2.z };
    }
    ;
    /**
     * Renvoie le produit d'un nombre avec le vecteur
     */
    static scale(vector1, scale) {
        return { x: vector1.x * scale, y: vector1.y * scale, z: vector1.z * scale };
    }
    ;
}
;
