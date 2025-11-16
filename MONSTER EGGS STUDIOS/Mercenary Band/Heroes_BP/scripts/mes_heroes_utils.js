//@ts-check
import { world, ItemStack, EnchantmentTypes, EquipmentSlot, system } from "@minecraft/server";

const coordinatesCooldown = new Map();

export function norme(vector) {
	return Math.sqrt(vector.x ** 2 + vector.y ** 2 + vector.z ** 2);
}

export function distance(point1, point2) {
	return Math.sqrt((point1.x - point2.x) ** 2 + (point1.y - point2.y) ** 2 + (point1.z - point2.z) ** 2);
}
export function randint(min, max) {
	return Math.floor(Math.random() * (Number(max) - Number(min) + 1)) + Number(min);
}

export function randfloat(float1, float2) {
	if (float1 > float2) {
		const temp = float1;
		float1 = float2;
		float2 = temp;
	}
	return (float2 - float1) * Math.random() + float1;
}
export function getTopSolidBlockY(dim, x, z, leavesAllowed = true, startingLocationY) {
	let yToReturn = null;
	for (let y = startingLocationY - 3; y <= worldLimits(dim).max - 1; y++) {
		const block = dim.getBlock({ x, y, z });
		if (!block) continue;

		if (leavesAllowed ? isSolidBlock(block) : isSolidBlock(block, false)) {
			const above = dim.getBlock({ x, y: y + 1, z });
			if (above && above.typeId === "minecraft:air") {
				yToReturn = y + 1;
				break;
			}
		}
	}
	let min;
	if (!yToReturn) {
		min = worldLimits(dim).min;
	} else if (startingLocationY - Math.abs(startingLocationY - yToReturn) > -65) {
		min = startingLocationY - Math.abs(startingLocationY - yToReturn);
	} else {
		min = -64;
	}
	for (let y = startingLocationY + 3; y >= min; y--) {
		const block = dim.getBlock({ x, y, z });
		if (!block) continue;

		if (leavesAllowed ? isSolidBlock(block) : isSolidBlock(block, false)) {
			const above = dim.getBlock({ x, y: y + 1, z });
			if (above && above.typeId === "minecraft:air") {
				yToReturn = y + 1;
				break;
			}
		}
	}
	return yToReturn;
}
export function isSolidBlock(block, leavesAllowed = true) {
	const nonSolidBlockIds = new Set([
		"minecraft:air",
		"minecraft:cave_air",
		"minecraft:void_air",
		"minecraft:water",
		"minecraft:lava",
		"minecraft:tall_grass",
		"minecraft:snow_layer",
		"minecraft:fire",
	]);
	if (!leavesAllowed) {
		nonSolidBlockIds.add("minecraft:acacia_leaves");
		nonSolidBlockIds.add("minecraft:azalea_leaves");
		nonSolidBlockIds.add("minecraft:azalea_leaves_flowered");
		nonSolidBlockIds.add("minecraft:birch_leaves");
		nonSolidBlockIds.add("minecraft:cherry_leaves");
		nonSolidBlockIds.add("minecraft:dark_oak_leaves");
		nonSolidBlockIds.add("minecraft:jungle_leaves");
		nonSolidBlockIds.add("minecraft:mangrove_leaves");
		nonSolidBlockIds.add("minecraft:oak_leaves");
		nonSolidBlockIds.add("minecraft:pale_oak_leaves");
		nonSolidBlockIds.add("minecraft:spruce_leaves");
	}

	return block && !nonSolidBlockIds.has(block.typeId);
}

export function guardianItem(entity, rider) {
	const storedRider = entity.getDynamicProperty("riderName");
	const savedItem = entity.getDynamicProperty("inventory");
	if (rider) {
		if (!storedRider || storedRider == "{}" || storedRider == undefined) {
			entity.setDynamicProperty("riderName", JSON.stringify(rider.id));
		}
		if (!savedItem) {
			takeAndSaveSlot(entity, rider);
		}
	} else if (savedItem && storedRider) {
		giveItem(JSON.parse(storedRider), JSON.parse(savedItem));
		entity.setDynamicProperty("riderName", null);
		entity.setDynamicProperty("inventory", null);
	}

	function takeAndSaveSlot(entity, rider) {
		const inv = rider.getComponent("inventory").container;
		const item = inv.getItem(8);
		if (!item) {
			entity.setDynamicProperty("inventory", JSON.stringify(null));
			const shieldItem = new ItemStack("mes_heroes:shield_item", 1);
			// @ts-ignore
			shieldItem.lockMode = "slot";
			inv.setItem(8, shieldItem);
			return;
		}

		const saveItem = {
			typeId: item.typeId,
			amount: item.amount,
			nameTag: item.nameTag,
			lore: item.getLore(),
			canDestroy: item.getCanDestroy(),
			canPlaceOn: item.getCanPlaceOn(),
			enchantments: item.getComponent("enchantable")
				? item
						.getComponent("enchantable")
						.getEnchantments()
						.map((e) => ({ type: e.type.id, level: e.level }))
				: null,
			durability: item.getComponent("durability") ? item.getComponent("durability").damage : null,
		};

		entity.setDynamicProperty("inventory", JSON.stringify(saveItem));
		const shieldItem = new ItemStack("mes_heroes:shield_item", 1);
		// @ts-ignore
		shieldItem.lockMode = "slot";
		inv.setItem(8, shieldItem);
	}

	function recreateItem(saveItem) {
		if (!saveItem || !saveItem.typeId || !saveItem.amount) return null;
		const item = new ItemStack(saveItem.typeId, saveItem.amount);
		if (saveItem.nameTag) {
			item.nameTag = saveItem.nameTag;
		}
		if (saveItem.lore) {
			item.setLore(saveItem.lore);
		}
		if (saveItem.canDestroy) {
			item.setCanDestroy(saveItem.canDestroy);
		}
		if (saveItem.canPlaceOn) {
			item.setCanPlaceOn(saveItem.canPlaceOn);
		}
		if (saveItem.enchantments) {
			const enchantable = item.getComponent("enchantable");
			enchantable.addEnchantments(
				saveItem.enchantments.map((e) => ({
					type: EnchantmentTypes.get(e.type),
					level: e.level,
				}))
			);
		}
		if (saveItem.durability !== null && item.getComponent("durability")) {
			const durability = item.getComponent("durability");
			durability.damage = saveItem.durability;
		}
		return item;
	}

	function giveItem(ID, item) {
		let targetPlayer = null;
		for (const player of world.getPlayers()) {
			if (player.id === ID) {
				targetPlayer = player;
				break;
			}
		}
		if (!targetPlayer) return;
		const inv = targetPlayer.getComponent("inventory")?.container;
		if (!inv) return;
		inv.setItem(8, null);
		const newItem = recreateItem(item);
		if (!newItem) return;
		inv.setItem(8, newItem);
	}
}

export function saveInventory(player, invName = player.nameTag, storage = player) {
	const { container, inventorySize } = player.getComponent("inventory");
	const items = Array.from({ length: inventorySize }, (_, i) => {
		const item = container.getItem(i);
		return serializeItem(item);
	});
	storage.setDynamicProperty(`inventory:${invName}`, JSON.stringify(items));

	const equip = player.getComponent("equippable");
	const armorSlots = [EquipmentSlot.Head, EquipmentSlot.Chest, EquipmentSlot.Legs, EquipmentSlot.Feet];

	const armor = armorSlots.map((slot) => {
		const item = equip.getEquipment(slot); //native type conversion failed. Function argument [0] expected type: equipmentSLot
		return serializeItem(item);
	});
	storage.setDynamicProperty(`armor:${invName}`, JSON.stringify(armor));

	storage.setDynamicProperty(`xp:${invName}`, player.level);

	function serializeItem(item) {
		return item
			? {
					typeId: item.typeId,
					amount: item.amount,
					nameTag: item.nameTag,
					lore: item.getLore(),
					canDestroy: item.getCanDestroy(),
					canPlaceOn: item.getCanPlaceOn(),
					enchantments: item.getComponent("enchantable")
						? item
								.getComponent("enchantable")
								.getEnchantments()
								.map((e) => ({ type: e.type.id, level: e.level }))
						: null,
					durability: item.getComponent("durability") ? item.getComponent("durability").damage : null,
			  }
			: null;
	}
}

export function loadInventory(player, invName = player.nameTag, storage = player) {
	// @ts-ignore
	const { container, inventorySize } = player.getComponent("inventory");
	const items = JSON.parse(storage.getDynamicProperty(`inventory:${invName}`) || "[]");
	items.forEach((data, i) => {
		if (!data) {
			container.setItem(i);
			return;
		}
		const item = deserializeItem(data);
		container.setItem(i, item);
	});

	const armorData = JSON.parse(storage.getDynamicProperty(`armor:${invName}`) || "[]");
	const equip = player.getComponent("equippable");
	const armorSlots = [EquipmentSlot.Head, EquipmentSlot.Chest, EquipmentSlot.Legs, EquipmentSlot.Feet];

	armorSlots.forEach((slot, index) => {
		const data = armorData[index];
		const item = data ? deserializeItem(data) : undefined;
		equip.setEquipment(slot, item);
	});

	const xpLevel = storage.getDynamicProperty(`xp:${invName}`) || 0;

	player.runCommand("xp -2147483648L");
	player.runCommand(`xp ${xpLevel}L`);

	function deserializeItem(data) {
		const item = new ItemStack(data.typeId, data.amount);
		item.nameTag = data.nameTag;
		item.setLore(data.lore);
		item.setCanDestroy(data.canDestroy);
		item.setCanPlaceOn(data.canPlaceOn);
		if (data.enchantments) {
			const enchantable = item.getComponent("enchantable");
			enchantable.addEnchantments(
				data.enchantments.map((e) => ({
					type: EnchantmentTypes.get(e.type),
					level: e.level,
				}))
			);
		}
		if (data.durability !== null) {
			item.getComponent("durability").damage = data.durability;
		}

		return item;
	}
}

export function normalize(vector, vectorLength = 1) {
	const vectCoef = Math.sqrt(vector.x ** 2 + vector.y ** 2 + vector.z ** 2);
	if (vectCoef == 0) return { x: 0, y: 0, z: 0 };
	let normalizedVector = {
		x: (vectorLength * vector.x) / vectCoef,
		y: (vectorLength * vector.y) / vectCoef,
		z: (vectorLength * vector.z) / vectCoef,
	};
	return normalizedVector;
}

export function reviveEntity(deadEntity) {
	const clerics = deadEntity.dimension.getEntities({
		location: deadEntity.location,
		maxDistance: 30,
		type: "mes_heroes:cleric",
	});

	const IDTag = deadEntity.getTags().find((tag) => tag.startsWith("ID"));
	const campsites = deadEntity.dimension.getEntities({
		type: `mes_heroes:${deadEntity.typeId.split(":")[1]}_campsite`,
		tags: [IDTag?.toString() ?? "null"],
		location: deadEntity.location,
		distance: 50,
	});
	const player = getRelatedPlayer(deadEntity);

	let relatedSpawner = null;
	let nameTag = "";
	let relatedPlayer = null;

	if (clerics.length != 0 && deadEntity.typeId != "mes_heroes:cleric") {
		for (const cleric of clerics) {
			relatedPlayer = getRelatedPlayer(cleric);
			if (!relatedPlayer) continue;
			relatedSpawner = cleric;
			nameTag = deadEntity.nameTag;
			break;
		}
	} else if (campsites.length != 0) {
		relatedSpawner = campsites[0];
		nameTag = getRandomName();
		if (player) {
			removeNbMerc(player, deadEntity);
			player.runCommand(`title @a[r=15] actionbar ${deadEntity.nameTag} has died`);
			world.sendMessage(`${deadEntity.nameTag} has died`);
		}
	} else {
		//No respawn
		if (player) {
			removeNbMerc(player, deadEntity);
			player.setDynamicProperty(`${deadEntity.typeId.split(":")[1]}:${deadEntity.id}`, null);

			player.runCommand(`title @a[r=15] actionbar ${deadEntity.nameTag} has died`);
			world.sendMessage(`${deadEntity.nameTag} has died`);
		}
		return;
	}
	if (relatedSpawner == null) return;

	const posToSpawn = relatedSpawner.typeId == "mes_heroes:cleric" ? deadEntity.location : relatedSpawner.location;

	if (!isChunkLoaded(posToSpawn, deadEntity.dimension)) return;

	const newEntity = relatedSpawner.dimension.spawnEntity(deadEntity.typeId, posToSpawn);

	newEntity.runCommand("particle mes_heroes:campsite_build ~ ~ ~");

	newEntity.nameTag = nameTag;
	newEntity.addTag(IDTag);

	if (relatedPlayer && clerics.length != 0) {
		removeNbMerc(relatedPlayer, deadEntity);
		addHeroToPlayer(relatedPlayer, newEntity);
		relatedSpawner.runCommand("playanimation @s animation.mes_heroes.cleric.healing_wave");
	}

	relatedPlayer?.runCommand(`title @a[r=15] actionbar ${nameTag} was revived by ${relatedSpawner?.nameTag}`);
}

export function hasLineOfSight(dim, from, to, step = 0.5) {
	const dx = to.x - from.x;
	const dy = to.y - from.y;
	const dz = to.z - from.z;
	const dist = Math.sqrt(dx * dx + dy * dy + dz * dz);
	const steps = Math.ceil(dist / step);
	for (let i = 1; i <= steps; i++) {
		const x = from.x + dx * (i / steps);
		const y = from.y + dy * (i / steps);
		const z = from.z + dz * (i / steps);
		const block = dim.getBlock({ x, y, z });
		if (block && !block.isAir) {
			return false;
		}
	}
	return true;
}

export function isLookingAtEntity(player, entity, maxDistance = 3, maxAngleDeg = 20) {
	const plLoc = player.location;
	const entLoc = entity.location;

	// 1. Vérifie la distance
	const dx = entLoc.x - plLoc.x;
	const dy = entLoc.y + 1 - (plLoc.y + 1.6); // vise le centre de l'entité et les yeux du joueur
	const dz = entLoc.z - plLoc.z;

	const distance = Math.sqrt(dx * dx + dy * dy + dz * dz);
	if (distance > maxDistance) return false;

	// 2. Direction du regard du joueur (en radians)
	const rotation = player.getRotation(); // y = yaw, x = pitch
	const yaw = (rotation.y * Math.PI) / 180;
	const pitch = (rotation.x * Math.PI) / 180;

	const lookVec = {
		x: -Math.sin(yaw) * Math.cos(pitch),
		y: -Math.sin(pitch),
		z: Math.cos(yaw) * Math.cos(pitch),
	};

	const toEntity = {
		x: dx / distance,
		y: dy / distance,
		z: dz / distance,
	};

	// 3. Produit scalaire pour angle
	const dot = lookVec.x * toEntity.x + lookVec.y * toEntity.y + lookVec.z * toEntity.z;
	const angle = (Math.acos(dot) * 180) / Math.PI;

	return angle <= maxAngleDeg;
}

export function worldLimits(dimension) {
	switch (dimension.id) {
		case "minecraft:overworld":
			return { min: -64, max: 319 };
		case "minecraft:nether":
			return { min: 0, max: 127 };
		case "minecraft:the_end":
			return { min: 0, max: 255 };
		default:
			return { min: 0, max: 255 };
	}
}

export function shootProjectile(shooter, target, projectileType, speed = 3) {
	const coefHigh = 0.1;
	let directionVector = {
		x: target.location.x - (shooter.location.x - Math.sin((shooter.getRotation().y * Math.PI) / 180)),
		y: target.location.y + coefHigh * distance(target.location, shooter.location) - (shooter.location.y + 1.6),
		z: target.location.z - (shooter.location.z + Math.cos((shooter.getRotation().y * Math.PI) / 180)),
	};

	let coef = norme(directionVector);

	directionVector = {
		x: (speed * directionVector.x) / coef,
		y: (speed * directionVector.y) / coef,
		z: (speed * directionVector.z) / coef,
	};

	const projectile = shooter.dimension.spawnEntity(projectileType, {
		x: shooter.location.x - Math.sin((shooter.getRotation().y * Math.PI) / 180),
		y: shooter.location.y + 1.6,
		z: shooter.location.z + Math.cos((shooter.getRotation().y * Math.PI) / 180),
	});
	system.runTimeout(() => {
		//add despawn particle here
		if (!projectile?.isValid()) return;
		smoothKill(projectile);
	}, 20 * 5);
	projectile.applyImpulse(directionVector);

	return projectile;
}

export function getNearestEntity(entityList, location) {
	let dist = Infinity;
	let nearestEntity = null;
	for (const entity of entityList) {
		if (distance(entity.location, location) < dist) {
			dist = distance(entity.location, location);
			nearestEntity = entity;
		}
	}
	return [nearestEntity, dist];
}

export function addKill(entity) {
	const killTag = entity.getTags().find((tag) => tag.startsWith("kill"));
	if (!killTag) {
		entity.addTag("kill-1");
	} else {
		const number = parseInt(killTag.split("-")[1]);
		entity.removeTag(killTag);
		entity.addTag(`kill-${number + 1}`);
	}
}

export function removeNbMerc(player, merc) {
	const prop = player.getDynamicProperty(`Hero:${merc.id}`);
	if (prop) {
		player.setDynamicProperty(`Hero:${merc.id}`, null);
	}
}

export function getNbMerc(player) {
	return getMercPropNames(player).length;
}

export function findKillerAndAddKill(entityName, deadEntity) {
	const potentialKillers = deadEntity.dimension.getEntities({
		location: deadEntity.location,
		maxDistance: 15,
		type: entityName,
	});
	if (potentialKillers.length == 0) return;
	const nearestKiller = getNearestEntity(potentialKillers, deadEntity.location)[0];
	addKill(nearestKiller);
}

export function getRandomName() {
	const randomNames = [
		"Liam",
		"Olivia",
		"Noah",
		"Ava",
		"Ethan",
		"Isla",
		"Mason",
		"Mia",
		"Lucas",
		"Amelia",
		"Logan",
		"Sofia",
		"Aiden",
		"Ella",
		"James",
		"Harper",
		"Elijah",
		"Luna",
		"Benjamin",
		"Chloe",
		"Henry",
		"Grace",
		"Jackson",
		"Layla",
		"Sebastian",
		"Zoe",
		"Levi",
		"Scarlett",
		"Mateo",
		"Aria",
		"Owen",
		"Nora",
		"Wyatt",
		"Riley",
		"Julian",
		"Camila",
		"Asher",
		"Aurora",
		"Leo",
		"Penelope",
		"Jaxon",
		"Violet",
		"Isaac",
		"Hannah",
		"Caleb",
		"Savannah",
		"Josiah",
		"Ellie",
		"Daniel",
		"Hazel",
		"Kai",
		"Freya",
		"Emmett",
		"Thea",
		"Hunter",
		"Ivy",
		"Theo",
		"Emilia",
		"Ezra",
		"Maeve",
		"Luca",
		"Alice",
		"Axel",
		"Naomi",
		"Ryder",
		"Daisy",
		"Finn",
		"Clara",
		"Roman",
		"Lily",
		"Milo",
		"Adeline",
		"Nico",
		"Sienna",
		"Arlo",
		"Juliette",
		"Kian",
		"Eva",
		"Felix",
		"Maya",
		"Xander",
		"Stella",
		"Enzo",
		"Elodie",
		"Dante",
		"Lara",
		"Jonas",
		"Bianca",
		"Anders",
		"Greta",
		"Otto",
		"Nina",
		"Soren",
		"Ingrid",
		"Tobias",
		"Lina",
		"Bruno",
		"Alma",
		"Emil",
		"Matilda",
		"Adam",
		"Andee",
		"Emmanuel",
		"Simeon",
		"Lucie",
	];

	return randomNames[Math.round(Math.random() * (randomNames.length - 1))];
}

export function smoothKill(entity) {
	entity.runCommand("particle mes_heroes:poof ~ ~ ~");
	entity.teleport({
		x: entity.location.x,
		y: worldLimits(entity.dimension).max - 10,
		z: entity.location.z,
	});
	system.runTimeout(() => {
		try {
			entity?.kill();
		} catch {}
	}, 10);
}
export function repulse(entity, repulseDist = 1, ownType = false) {
	let nearbyEntities;
	if (ownType) {
		nearbyEntities = entity.dimension.getEntities({
			location: entity.location,
			maxDistance: repulseDist,
			type: entity.typeId,
		});
	} else {
		nearbyEntities = entity.dimension.getEntities({
			location: entity.location,
			maxDistance: repulseDist,
		});
	}

	for (const nearbyEntity of nearbyEntities) {
		if (nearbyEntity == entity || nearbyEntity.typeId.split(":")[1].split("_")[1] == "campsite") continue;
		const x1 = entity.location.x;
		const y1 = entity.location.y;
		const z1 = entity.location.z;

		const x2 = nearbyEntity.location.x;
		const y2 = nearbyEntity.location.y;
		const z2 = nearbyEntity.location.z;

		const normalizedVector = normalize(
			{
				x: x2 - x1,
				y: y2 - y1,
				z: z2 - z1,
			},
			0.2
		);

		nearbyEntity.applyImpulse(normalizedVector);
	}
}

export function saveCoordinates(Hero) {
	// @ts-ignore
	const players = world.getAllPlayers();
	const lastTimeSave = coordinatesCooldown.get(Hero.id) || 0;

	if (Date.now() - lastTimeSave < 5000) return;
	// const hasTag = Hero.getTags().find((tag) => tag.startsWith("Player"));
	// if (!hasTag) return;
	const player = getRelatedPlayer(Hero);
	if (!player) return;

	const { x, y, z } = Hero.location;

	// player.removeTag(`${Hero.typeId.split(":")[1]}-${Hero.nameTag}`);
	const propValue = player.getDynamicProperty(`Hero:${Hero.id}`);
	if (!propValue) return;
	let list = JSON.parse(String(propValue));

	list[2] = Math.round(x);
	list[3] = Math.round(y);
	list[4] = Math.round(z);

	player.setDynamicProperty(`Hero:${Hero.id}`, JSON.stringify(list));

	coordinatesCooldown.set(Hero.id, Date.now());
}

export function getMercPropNames(player) {
	const allProprieties = player.getDynamicPropertyIds();
	const allMercPropNames = [];
	for (const prop of allProprieties) {
		if (prop.startsWith("Hero") && player.getDynamicProperty(prop) != null) {
			allMercPropNames.push(prop);
		}
	}
	return allMercPropNames;
}
export function getMercPropList(player) {
	const allProprieties = player.getDynamicPropertyIds();
	const allMercProp = [];
	for (const prop of allProprieties) {
		if (prop.startsWith("Hero") && player.getDynamicProperty(prop) != null) {
			allMercProp.push(JSON.parse(String(player.getDynamicProperty(prop))));
		}
	}
	return allMercProp;
}

export function isChunkLoaded(pos, dimension) {
	try {
		const block = dimension.getBlock(pos);
		if (block) return true;
		return false;
	} catch {
		// out of chunk may generate errors
		return false;
	}
}

export function addHeroToPlayer(player, Hero) {
	const pos = Hero.location;
	const list = [Hero.typeId.split(":")[1], Hero.nameTag, pos.x, pos.y, pos.z];
	player.setDynamicProperty(`Hero:${Hero.id}`, JSON.stringify(list));
}

export function getRelatedPlayer(Hero) {
	const players = world.getAllPlayers();

	for (const player of players) {
		if (player.getDynamicProperty(`Hero:${Hero.id}`) != null) {
			return player;
		}
	}
	return null;
}

/**
 *
 * @param {import("mojang-minecraft").Vector3} location
 * @param {Number} size
 * @param {*} dimension
 * @returns
 */
export function isOnAPlatform(location, size, dimension) {
	for (let i = location.x - 1; i <= location.x + 1; i++) {
		for (let j = location.z - 1; j <= location.z + 1; j++) {
			const block = dimension.getBlock({ x: i, y: location.y - 1, z: j });
			if (!block || block.typeId === "minecraft:air") return false;
		}
	}
	return true;
}

export function areThereBlocksAbove(location, height, dimension) {
	for (let i = location.x - 1; i <= location.x + 1; i++) {
		for (let j = location.z - 1; j <= location.z + 1; j++) {
			const block = dimension.getBlock({ x: i, y: location.y + 1, z: j });
			if (block && block.typeId !== "minecraft:air") return true;
		}
	}
	return false;
}
