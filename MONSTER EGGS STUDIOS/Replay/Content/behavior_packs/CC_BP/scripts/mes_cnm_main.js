import { world, system, Player, ItemStack, MolangVariableMap, EnchantmentType} from '@minecraft/server';
import { ActionFormData, MessageFormData, ModalFormData } from '@minecraft/server-ui';
import * as menu from './mes_cnm_menu.js';

// FONCTION POUR LES INVENTAIRES

function saveInventory(player, invName = player.nameTag, storage = player) {
  const { container, inventorySize } = player.getComponent("inventory");
  const items = Array.from({ length: inventorySize }, (_, i) => {
      const item = container.getItem(i);
      if (!item) return null;
      return {
          typeId: item.typeId,
          amount: item.amount,
          nameTag: item.nameTag,
          lore: item.getLore(),
          canDestroy: item.getCanDestroy(),
          canPlaceOn: item.getCanPlaceOn(),
          enchantments: item.hasComponent("enchantable") 
              ? item.getComponent("enchantable").getEnchantments().map(e => ({ type: e.type.id, level: e.level })) 
              : null,
          durability: item.hasComponent("durability") 
              ? item.getComponent("durability").damage 
              : null
      };
  });
  storage.setDynamicProperty(`inventory:${invName}`, JSON.stringify(items));
}

function loadInventory(player, invName = player.nameTag, storage = player) {
  const { container, inventorySize } = player.getComponent("inventory");
  const items = JSON.parse(storage.getDynamicProperty(`inventory:${invName}`) || "[]");
  items.forEach((data, i) => {
      if (!data) {
          container.setItem(i);
          return;
      }
      const item = new ItemStack(data.typeId, data.amount);
      item.nameTag = data.nameTag;
      item.setLore(data.lore);
      item.setCanDestroy(data.canDestroy);
      item.setCanPlaceOn(data.canPlaceOn);
      if (data.enchantments) {
          item.getComponent("enchantable").addEnchantments(data.enchantments.map(e => ({ ...e, type: new EnchantmentType(e.type) })));
      }
      if (data.durability !== null) {
          item.getComponent("durability").damage = data.durability;
      }
      container.setItem(i, item);
  });
}

function showPerspectiveMenu(player) {
  const perspectiveMenu = new ActionFormData()
    .title("§l§3Perspective Menu")
    .button("Top View")
    .button("Right Shoulder")
    .button("Left Shoulder")
    .button("Isometric")
    .button("Custom Offset Camera")
    .button("Custom Still Camera")
    .button("Reset/Normal View");

  perspectiveMenu.show(player).then(reponse => {
    if (reponse.selection === 0) {
      player.playSound("camera.take_picture", {
        'volume': 0.5
      });
      ajout_perspective(player, "mes_cnm_cam1");
    } else if (reponse.selection === 1) {
      player.playSound("camera.take_picture", {
        'volume': 0.5
      });
      ajout_perspective(player, "mes_cnm_cam2");
    } else if (reponse.selection === 2) {
      player.playSound("camera.take_picture", {
        'volume': 0.5
      });
      ajout_perspective(player, "mes_cnm_cam3");
    } else if (reponse.selection === 3) {
      player.playSound("camera.take_picture", {
        'volume': 0.5
      });
      ajout_perspective(player, "mes_cnm_cam4");
    } else if (reponse.selection === 4) {
      showCustomOffsetCameraMenu(player);
    } else if (reponse.selection === 5) {
      showCustomStillCameraMenu(player);
    } else if (reponse.selection === 6) {
      player.playSound("camera.take_picture", {
        'volume': 0.5
      });
      ajout_perspective(player, "none");
    };
    player.camera.clear()
  });
}

var xOffset, yOffset, zOffset;
var xFixed, yFixed, zFixed;

function showCustomOffsetCameraMenu(player) {
  const customOffsetCameraMenu = new ModalFormData()
    .title("§l§3Custom Offset Camera Position")
    .slider("X Offset", -10, 10, 0.1, 2)
    .slider("Y Offset", -10, 10, 0.1, 4)
    .slider("Z Offset", -10, 10, 0.1, 2);

  customOffsetCameraMenu.show(player).then(selection => {
    if (selection.canceled) return;

    [xOffset, yOffset, zOffset] = selection.formValues;
    player.playSound("camera.take_picture", {
      'volume': 0.5
    });
    ajout_perspective(player, "mes_cnm_cam5");
  });
}

function showCustomStillCameraMenu(player) {
  const defaultX = Math.round(player.location.x);
  const defaultY = Math.round(player.location.y)+1.5;
  const defaultZ = Math.round(player.location.z);

  const customStillCameraMenu = new ModalFormData()
    .title("§l§3Custom Still Camera Position")
    .textField("X Position", "Enter X coordinate", `${defaultX}`)
    .textField("Y Position", "Enter Y coordinate", `${defaultY}`)
    .textField("Z Position", "Enter Z coordinate", `${defaultZ}`);

  customStillCameraMenu.show(player).then(selection => {
    if (selection.canceled) return;
    xFixed = selection.formValues[0] ? parseFloat(selection.formValues[0]) : defaultX;
    yFixed = selection.formValues[1] ? parseFloat(selection.formValues[1]) : defaultY;
    zFixed = selection.formValues[2] ? parseFloat(selection.formValues[2]) : defaultZ;
    player.playSound("camera.take_picture", {
      'volume': 0.5
    });
    ajout_perspective(player, "mes_cnm_cam6");
  });
}

function getColor(trackIndex) {
  let adjustedIndex = trackIndex - 1;
  while (adjustedIndex >= 14) {
    adjustedIndex -= 14;
  }
  return trackColors[adjustedIndex];
}

function getPos(player, xoff = 0, yoff = 0, zoff = 0) {
  return {
    'x': player.location.x + xoff,
    'y': player.location.y + yoff,
    'z': player.location.z + zoff
  };
}
;

function convertRot(player) {
  let rotation_p = player.getRotation();
  return {
    'x': rotation_p.x,
    'y': Math.sign(rotation_p.y) == 1 ? rotation_p.y : 0xb4 + (0xb4 - Math.abs(rotation_p.y))
  };
}
function ajout_tag(player, tag_to_add) {
  player.removeTag("mes_cnm_path_1")
  player.removeTag("mes_cnm_path_2")
  player.removeTag("mes_cnm_cinema")
  player.addTag(tag_to_add)
}

function ajout_perspective(player, tag_to_add) {
  for (let step = 1; step < 8; step++) {
    player.removeTag(`mes_cnm_cam${step}`)
  }
  if (tag_to_add !== "none") {
    player.camera.clear()
    player.addTag(tag_to_add)
  } else {
    player.camera.clear()
  };
}

// GESTION DES INV ET UTILISATION ITEMS

function hbHandle(player, array_items) {
  const main_tools_1 = ['cinema_mode', 'blank', "path_mode", "blank", "blank", 'help', 'saves', 'settings', "exit"];
  const path_tools_1 = ['play', 'add', "remove", "edit", "grab", 'speed1', 'hide_points', 'next', "quit_mode"];
  const path_tools_2 = ['blank', 'blank', "blank", "preview", 'saves', 'hide_points', 'path_settings', "previous", "quit_mode"];
  const cinema_tools = ['start_movement',  'forward', "perspective", 'add_focus', 'remove_focus', 'hide_points', 'speed1', 'cinema_settings', 'quit_mode'];
  switch (array_items) {
    case "next":
      {
        if (player.hasTag("mes_cnm_path_1")) {
          ajout_tag(player, "mes_cnm_path_2")
          array_items = path_tools_2;
          for (let slot_inv_tools = 0; slot_inv_tools < array_items.length; slot_inv_tools++) {
            let liste_items = array_items[slot_inv_tools] ? "mes_cnm:" + array_items[slot_inv_tools] : "air";
            player.runCommand(`/replaceitem entity @p slot.hotbar ${slot_inv_tools} ${liste_items} 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
          for (let slot_inv = 0; slot_inv < 27; slot_inv++) {
            player.runCommand(`/replaceitem entity @p slot.inventory ${slot_inv} mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
        } else if (player.hasTag("mes_cnm_path_2")) {
          ajout_tag(player, "mes_cnm_path_1")
          array_items = path_tools_1;
          for (let slot_inv_tools = 0; slot_inv_tools < array_items.length; slot_inv_tools++) {
            let liste_items = array_items[slot_inv_tools] ? "mes_cnm:" + array_items[slot_inv_tools] : "air";
            player.runCommand(`/replaceitem entity @p slot.hotbar ${slot_inv_tools} ${liste_items} 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
          for (let slot_inv = 0; slot_inv < 27; slot_inv++) {
            player.runCommand(`/replaceitem entity @p slot.inventory ${slot_inv} mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
        }
        break;

      };
    case "path_mode":
      {
        ajout_tag(player, "mes_cnm_path_1")
        array_items = path_tools_1;
        for (let slot_inv_tools = 0; slot_inv_tools < array_items.length; slot_inv_tools++) {
          let liste_items = array_items[slot_inv_tools] ? "mes_cnm:" + array_items[slot_inv_tools] : "air";
          player.runCommand(`/replaceitem entity @p slot.hotbar ${slot_inv_tools} ${liste_items} 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
        };
        for (let slot_inv = 0; slot_inv < 27; slot_inv++) {
          player.runCommand(`/replaceitem entity @p slot.inventory ${slot_inv} mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
        };
        break;

      };
    case "cinema_mode":
      {
        ajout_tag(player, "mes_cnm_cinema")
        array_items = cinema_tools;
        for (let slot_inv_tools = 0; slot_inv_tools < array_items.length; slot_inv_tools++) {
          let liste_items = array_items[slot_inv_tools] ? "mes_cnm:" + array_items[slot_inv_tools] : "air";
          player.runCommand(`/replaceitem entity @p slot.hotbar ${slot_inv_tools} ${liste_items} 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
        };
        for (let slot_inv = 0; slot_inv < 27; slot_inv++) {
          player.runCommand(`/replaceitem entity @p slot.inventory ${slot_inv} mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
        };
        break;

      };
    case "saves":
      {
        Saves(player)
        break;

      };
    case "preview":
      {
        if (player.hasTag("mes_cnm_preview")) {
          player.removeTag("mes_cnm_preview")
        } else {
          player.addTag("mes_cnm_preview")
        }
        break;

      };
    case "forward":
      {
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:right 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.onScreenDisplay.setActionBar("§2Right");
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "right":
      {
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:backward 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.onScreenDisplay.setActionBar("§2Backward");
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "backward":
      {
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:left 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.onScreenDisplay.setActionBar("§2Left");
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "left":
      {
        player.onScreenDisplay.setActionBar("§2Up");
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:up 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "up":
      {
        player.onScreenDisplay.setActionBar("§2Down");
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:down 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "down":
      {
        player.onScreenDisplay.setActionBar("§2Head Rotation");
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:head_rotation 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "head_rotation":
      {
        player.onScreenDisplay.setActionBar("§2Focus Point Rotation");
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:focus_rotation 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "focus_rotation":
      {
        player.onScreenDisplay.setActionBar("§2Forward");
        player.runCommand(`/replaceitem entity @p slot.hotbar 1 mes_cnm:forward 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "perspective":
      {
        showPerspectiveMenu(player);
        player.playSound("random.pop2", {
          'volume': 0.5
        });
        break;
      };
    case "hide_points":
      {
        for (let camentity of player.dimension.getEntities({
          'type': "mes_cnm:tcam"
        })) {
          camentity.runCommand("/particle mes_cnm:point_visual ~ ~ ~");
        }
        if (player.hasTag("mes_cnm_hidden")) {
          player.runCommand("/effect @e[family=mes] clear")
          player.removeTag("mes_cnm_hidden")
          player.playSound("random.pop2", {
            'volume': 0.5
          });
        } else {
          player.addTag("mes_cnm_hidden")
          player.playSound("random.pop", {
            'volume': 0.5
          });
        }
        break;

      };
    case "enter_cinemacraft":
        {
          player.sendMessage("§8[§rCinemaCraft§8]§r §2Your INVENTORY has been saved!");
          // SAVE ET DONNER main_tools_1
          array_items = main_tools_1;
          saveInventory(player);
          for (let slot_inv_tools = 0; slot_inv_tools < array_items.length; slot_inv_tools++) {
            let liste_items = array_items[slot_inv_tools] ? "mes_cnm:" + array_items[slot_inv_tools] : "air";
            player.runCommand(`/replaceitem entity @p slot.hotbar ${slot_inv_tools} ${liste_items} 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
          for (let slot_inv = 0; slot_inv < 27; slot_inv++) {
            player.runCommand(`/replaceitem entity @p slot.inventory ${slot_inv} mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
          break;
  
        };
    case "quit_mode":
        {
          player.runCommand("/effect @s invisibility 0 0")
          player.runCommand("/effect @s night_vision 0 0")
          player.removeTag("mes_cnm_mv");
          array_items = main_tools_1;
          for (let slot_inv_tools = 0; slot_inv_tools < array_items.length; slot_inv_tools++) {
            let liste_items = array_items[slot_inv_tools] ? "mes_cnm:" + array_items[slot_inv_tools] : "air";
            player.runCommand(`/replaceitem entity @p slot.hotbar ${slot_inv_tools} ${liste_items} 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
          for (let slot_inv = 0; slot_inv < 27; slot_inv++) {
            player.runCommand(`/replaceitem entity @p slot.inventory ${slot_inv} mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`);
          };
          break;
  
        };
    case 'exit':
      {
        // DONNER INVENTAIRE NORMAL
        loadInventory(player);
        break;
      };
    case 'speed':
      {
        if (player.hasTag("mes_cnm_cinema")) {
          if (mvtspeed >= 0 && mvtspeed < 4) {
            mvtspeed += 1
            player.onScreenDisplay.setActionBar(`§a[§fSpeed§a]§r ${mvtspeed}`);
            if (mvtspeed >= 1 && mvtspeed < 3) {
              player.runCommand(`/replaceitem entity @p slot.hotbar 6 mes_cnm:speed2 6 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
            } else if (mvtspeed == 3) {
              player.runCommand(`/replaceitem entity @p slot.hotbar 6 mes_cnm:speed3 6 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
            }
          }
          else if (mvtspeed == 4) {
            mvtspeed = 1
            player.onScreenDisplay.setActionBar(`§a[§fSpeed§a]§r ${mvtspeed}`);
            player.runCommand(`/replaceitem entity @p slot.hotbar 6 mes_cnm:speed1 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
          }
        } else {
          for (let [key, pts] of camPoints) {
            if (pts.speedlevel >= 0 && pts.speedlevel < 4) {
              pts.speedlevel += 1
              pts.pointEase = pts.pointEase/1.9
              player.onScreenDisplay.setActionBar(`§a[§fSpeed§a]§r ${pts.speedlevel}`);
              if (pts.speedlevel >= 1 && pts.speedlevel < 3) {
                player.runCommand(`/replaceitem entity @p slot.hotbar 5 mes_cnm:speed2 6 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
              } else if (pts.speedlevel == 3) {
                player.runCommand(`/replaceitem entity @p slot.hotbar 5 mes_cnm:speed3 6 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
              }
            }
            else if (pts.speedlevel == 4) {
              pts.speedlevel = 1
              pts.pointEase = pts.pointEase * ((1.9)**4);
              player.onScreenDisplay.setActionBar(`§a[§fSpeed§a]§r ${pts.speedlevel}`);
              player.runCommand(`/replaceitem entity @p slot.hotbar 5 mes_cnm:speed1 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
            }
          };
        }
        
        break;
      };
  }
};



var Track = class {
constructor() {
  this.trackPoints = [];
  this.trackData = [];
}
};
var camPoints = new Map()
var camTracks = new Map()
var options = new MolangVariableMap();
var camOps = new Map();
var gameCamera = null;
var focus_point_x;
var focus_point_y;
var focus_point_z;
let mvtspeed = 1;



var Dolly = class {
  constructor(dimensionObj, rotationObj) {
    this.track = curTrack;
    this.color = getColor(this.track);
    this.dimension = dimensionObj.dimension;
    this.location = {
      'x': dimensionObj.location.x,
      'y': dimensionObj.location.y + 0.3,
      'z': dimensionObj.location.z
    };
    this.rotation = rotationObj.getRotation();
    this.fullRot = convertRot(rotationObj);
    this.pNum = camTracks.get(curTrack).trackPoints.length + 1;
    this.point = dimensionObj;
    // SPEED & EASETIME
    this.speedlevel = 0;
    this.pointEase = _easeTime * 20;
    // TEXT ACTIONBAR TO SHOW
    this.textToShow = "";
    // LIGHT LEVEL
    this.lightlevel = 0;

    this.point.nameTag = this.color + "S" + this.track + " - P" + this.pNum;
    this.point.setRotation(this.rotation);
  }

  ["remove"](shouldReorder = false) {
    let currentPoint = this.point;
    if (shouldReorder) {
      let pointNumber = this.pNum;
      let trackPointsArray = camTracks.get(curTrack).trackPoints;
      for (let i = 0; i < trackPointsArray.length; i++) {
        let trackPoint = camPoints.get(trackPointsArray[i]);
        if (trackPoint.pNum <= pointNumber) {
          continue;
        }
        trackPoint.pNum -= 1;
        trackPoint.point.nameTag = trackPoint.color + 'S' + trackPoint.track + " - P" + trackPoint.pNum;
      }
      let pointIndex = trackPointsArray.indexOf(currentPoint);
      if (pointIndex > -1) {
        trackPointsArray.splice(pointIndex, 1);
      }
    }
    camPoints["delete"](currentPoint);
    currentPoint.triggerEvent('mes_cnm:remove');
  }

  ["rotate"](shouldRotate = false, newRotationObj) {
    if (shouldRotate) {
      this.rotation = newRotationObj.getRotation();
      this.fullRot = convertRot(newRotationObj);
      this.location = {
        'x': this.point.location.x,
        'y': this.point.location.y + 0.3,
        'z': this.point.location.z
      };
    }
    this.point.setRotation(this.rotation);
  }
};

var grabPoint;
var actionId = null;
var actionIndex = 0;
var actionTick = 0;
var ease = 0;
var canCut = true;
var rolling = false;
var testing = false;
var Crew = class {
  constructor(playerData) {
    this.player = playerData;
  }

  ["action"](pointIndex = null) {
    if (!camTracks.get(curTrack) || camTracks.get(curTrack).trackPoints.length <= 1 || !canCut) {
      this.player.sendMessage("§cNot enough camera points!")
      this.player.runCommand("/effect @s invisibility 0 0")
      this.player.runCommand("/effect @s night_vision 0 0")
      this.player.runCommand("/hud @s reset all")
      return;
    }
    let trackPoints = camTracks.get(curTrack).trackPoints;
    let actionPointIndex = pointIndex ? pointIndex - 1 : 0;
    actionIndex = actionPointIndex;
    actionTick = 0;
    ease = camPoints.get(trackPoints[actionPointIndex + 1]).pointEase;
    canCut = false;
    rolling = rolling ? this.cut() : true;

    if (rolling || testing) {
      system.runTimeout(() => {
        if (optIsAnchored) {
          this.player.dimension.runCommand(`ride "${this.player.nameTag}" start_riding @e[type=mes_cnm:camera, c=1] teleport_ride`);
        }
        if (optHideUi) {
          this.player.dimension.runCommand(`hud "${this.player.nameTag}" hide all`);
        }
        this.player.camera.setCamera("mes_cnm:free", {
          'location': camPoints.get(trackPoints[actionPointIndex]).location,
          'rotation': camPoints.get(trackPoints[actionPointIndex]).rotation
        });
        system.runTimeout(() => {
          actionId = system.runInterval(() => {
            action(trackPoints, camOps.get(this.player));
          }, 1);
          canCut = true;
        }, 20);
      }, 2);
    }
  }

  ['cut']() {
    if (gameCamera) {
      gameCamera.remove();
    } else {
      0;
    }
    gameCamera = null;
    system.clearRun(actionId);
    canCut = true;
    rolling = false;
    testing = false;
    system.runTimeout(() => {
      this.player.camera.clear();
      this.player.dimension.runCommand(`hud "${this.player.nameTag}" reset all`);
      const camPointsArray = Array.from(camPoints);
      for (let i = 0; i < camPointsArray.length; i++) {
          const [key, pts] = camPointsArray[i];
          if (i === camPointsArray.length - 1) {
              this.player.onScreenDisplay.setActionBar(pts.textToShow)
          }
          if (pts.lightlevel !== 0) {
              this.player.runCommand(`/execute as @s at @s if block ${pts.location.x} ${pts.location.y} ${pts.location.z} light_block run setblock ${pts.location.x} ${pts.location.y} ${pts.location.z} air`);
          }
      }
      this.player.dimension.runCommand(`effect "${this.player.nameTag}" invisibility 0 0`);
      this.player.dimension.runCommand(`effect "${this.player.nameTag}" night_vision 0 0`);
    }, 2);
  }

  ['select'](maxDistance = 30, autoSwitch = false) {
    let selectedEntity;
    let currentPlayer = this.player;

    for (let nearbyEntity of currentPlayer.dimension.getEntities({
      'type': "mes_cnm:tcam",
      'location': getPos(currentPlayer, 0, 1),
      'maxDistance': 100
    })) {
      nearbyEntity.triggerEvent("mes_cnm:deselect");
      nearbyEntity.removeTag("mes_cnm_selected");
      if (rolling) {
        nearbyEntity.addEffect("invisibility", 3, {
          'showParticles': false
        });
      }
      camPoints.get(nearbyEntity).rotate();
    }

    if (rolling) {
      return;
    }

    for (let viewedEntity of currentPlayer.getEntitiesFromViewDirection({
      'maxDistance': maxDistance
    })) {
      if (!rolling && viewedEntity.entity.typeId == "mes_cnm:tcam") {
        if (!optAutoSwitch && camPoints.get(viewedEntity.entity).track != curTrack) {
          currentPlayer.onScreenDisplay.setActionBar("§7[ Inactive Track ]§r");
          return;
        }
        viewedEntity.entity.addTag("mes_cnm_selected");
      }
      if (!rolling && viewedEntity.entity.typeId == "mes_cnm:focus_point") {
        if (!currentPlayer.hasTag("mes_cnm_mv")) {
          currentPlayer.onScreenDisplay.setActionBar("§2[ Focus Point ]§r");
        };
        viewedEntity.entity.addTag("mes_cnm_selected");
      }
    }

    for (let selectedNearby of currentPlayer.dimension.getEntities({
      'type': "mes_cnm:tcam",
      'tags': ["mes_cnm_selected"],
      'location': getPos(currentPlayer, 0, 1),
      'closest': 1,
      'minDistance': 0.3,
      'maxDistance': maxDistance
    })) {
      selectedEntity = selectedNearby;
      selectedNearby.triggerEvent('mes_cnm:select');
      selectedNearby.dimension.spawnParticle("mes_cnm:point_visual", getPos(selectedNearby, 0, 0.16), options);
      let pointData = camPoints.get(selectedNearby);
      if (!pointData) {
        return;
      }
      if (autoSwitch && optAutoSwitch) {
        curTrack = pointData.track;
      }
      currentPlayer.onScreenDisplay.setActionBar(pointData.color + "Save:" + pointData.track + " - Point:" + pointData.pNum + '§r');
    }
    return selectedEntity;
  }

  ["tick"]() {
    this.select();
    if (grabPoint != null) {
      grabPoint.teleport(getPos(this.player, 0, 1.2));
      camPoints.get(grabPoint).rotate(true, this.player);
    }
  }
};

var lerpPoint = {
  'pos': {
    'x': 0,
    'y': 0,
    'z': 0
  },
  'rot': {
    'x': 0,
    'y': 0
  }
};
function lerpVector(startVector, endVector, t) {
  let deltaY = endVector.rot.y - startVector.rot.y;
  if (0x168 + endVector.rot.y - startVector.rot.y < Math.abs(endVector.rot.y - startVector.rot.y)) {
    deltaY = 0x168 + endVector.rot.y - startVector.rot.y;
  } else if (0x168 + startVector.rot.y - endVector.rot.y < Math.abs(endVector.rot.y - startVector.rot.y)) {
    deltaY = -1 * (0x168 + startVector.rot.y - endVector.rot.y);
  }
  return {
    'pos': {
      'x': startVector.pos.x + (endVector.pos.x - startVector.pos.x) * t,
      'y': startVector.pos.y + (endVector.pos.y - startVector.pos.y) * t,
      'z': startVector.pos.z + (endVector.pos.z - startVector.pos.z) * t
    },
    'rot': {
      'x': startVector.rot.x + (endVector.rot.x - startVector.rot.x) * t,
      'y': startVector.rot.y + deltaY * t
    }
  };
}

function action(path, playerObj) {
  let cameraEaseFactor = 0.3;
  if (actionIndex != path.length - 1) {
    let currentCamPoint = camPoints.get(path[actionIndex]);
    let nextCamPoint = camPoints.get(path[actionIndex + 1]);
    if (currentCamPoint.textToShow !== "") {
      playerObj.player.onScreenDisplay.setActionBar(currentCamPoint.textToShow)
    };
    let start = {
      'pos': currentCamPoint.location,
      'rot': currentCamPoint.fullRot
    };
    let end = {
      'pos': nextCamPoint.location,
      'rot': nextCamPoint.fullRot
    };
    lerpPoint = lerpVector(start, end, actionTick / ease);
    if (actionTick >= ease) {
      actionIndex++;
      actionTick = 1;
      if (actionIndex != path.length - 1) {
        ease = camPoints.get(path[actionIndex + 1]).pointEase;
      } else {
        ease = 0x28;
      }
    } else {
      actionTick++;
    }
  } else {
    cameraEaseFactor = 0.3 + -0.3 * (actionTick / ease);
    actionTick++;
    if (actionTick >= ease) {
      playerObj.cut();
      return;
    }
  }
  if (optIsAnchored) {
    if (playerObj.player.isSneaking) {
      playerObj.cut();
    }
    gameCamera.teleport({
      'x': lerpPoint.pos.x,
      'y': lerpPoint.pos.y + 2,
      'z': lerpPoint.pos.z
    });
    gameCamera.addEffect("invisibility", 2, {
      'showParticles': false
    });
    playerObj.player.addEffect('invisibility', 0xa, {
      'showParticles': false
    });
  }
  playerObj.player.dimension.runCommandAsync(`camera "${playerObj.player.nameTag}" set mes_cnm:free ease ${cameraEaseFactor} in_out_sine pos ${lerpPoint.pos.x} ${lerpPoint.pos.y} ${lerpPoint.pos.z} rot ${lerpPoint.rot.x} ~${lerpPoint.rot.y}`);
}

var optNightVision = false;
var optHideUi = true;
var optAskFrame = false;
var optIsInvisible = false;
var optAutoSwitch = false;
var optIsAnchored = false;
var optPointPos = 0;

function Saves(player) {
  const mainMenu = new ActionFormData()
    .title("§l§8Tracks Menu")
    .body("§8[§rCurrent Track§8:§r " + curTrack + " §8]")

    mainMenu
      .button("§2Create new Track")
      .button("§4Reset Current Track Points")
      .button("§8[§r Choose a track to switch on §8 ]");

      for (let i = 0; i < camTracks.size; i++) {
        const key = Array.from(camTracks.keys())[i];
        mainMenu.button(`§l${getColor(i+1)}Save ` + key);
      }
  

    const resetConfirmation = new MessageFormData()
      .title("§4Reset Track Data?")
      .body("This will delete all point data for §lTrack " + curTrack + "§r!")
      .button1("§2Confirm")
      .button2("§4Cancel");

    mainMenu.show(player).then(reponse => {
      let rep = reponse.selection
      if (rep > 2) {
        curTrack = rep-2;
        player.sendMessage("§8[§rCinemaCraft§8]§r The active track is now " + getColor(curTrack) + "Track" + curTrack);
      } else if (rep === 0) {
        curTrack = camTracks.size + 1;
        camTracks.set(curTrack, new Track());
        player.sendMessage("§8[§rCinemaCraft§8]§r A new track has been added. Active track now set to " + getColor(curTrack) + "Track " + curTrack + "§r");
      } else if (rep === 1) {
        resetConfirmation.show(player).then(resetSelection => {
          if (resetSelection.selection === 0) {
            let trackPoints = camTracks.get(curTrack).trackPoints;
            for (let i = 0; i < trackPoints.length; i++) {
              let point = camPoints.get(trackPoints[i]);
              point.remove();
            }
            trackPoints.length = 0;
            player.playSound("block.false_permissions");
          }
        });
      }
    });
}

function PathMenuShow(player) {
  const mainMenu = new ModalFormData()
    .title("§l§3Path Mode Settings")
    .dropdown("Set Point Position", ["Head", "Feet"], optPointPos)
    .textField("\nDefault Ease Time (In Seconds)", "Enter Ease Time in Seconds", "" + _easeTime)
    .toggle("Auto-switch tracks when editing", optAutoSwitch)
    .toggle("Hide UI", optHideUi)
    .toggle("Directly display new point options", optAskFrame)
    .toggle("Anchor player to camera", optIsAnchored)
    .toggle("Invisible player", optIsInvisible)
    .toggle("Night Vision", optNightVision);

  mainMenu.show(player).then(selection => {
    const values = selection.formValues;
    if (selection.canceled) return;
    // Toggle auto-switch if the value changed
    if (values[2] !== optAutoSwitch && !isNaN(values[2])) {
      optAutoSwitch = values[2];
      player.sendMessage(optAutoSwitch
        ? "§8[§rCinemaCraft§8]§r Auto-switch is now enabled: §7§oTrack editing is no longer limited to the current Track."
        : "§8[§rCinemaCraft§8]§r Auto-switch has been disabled.");
    }

    // Update point position if changed
    if (values[0] !== optPointPos && !isNaN(values[0])) {
      optPointPos = values[0];
      player.sendMessage(optPointPos == 0
        ? "§8[§rCinemaCraft§8]§r Default point position is now anchored to the Head."
        : "§8[§rCinemaCraft§8]§r Default point position is now anchored to the Feet.");
    }

    // Update ease time if changed and valid
    if (values[1] != _easeTime && !isNaN(values[1])) {
      const newEaseTime = parseFloat(values[1]);
      if (isNaN(newEaseTime) || newEaseTime === 0) {
        player.sendMessage("§8[§rCinemaCraft§8]§r §cInvalid input!");
        return;
      }
      _easeTime = newEaseTime;
      player.sendMessage("§8[§rCinemaCraft§8]§r Default Ease Time has been set to §l" + _easeTime + " Seconds");
    }
    if (values[3] != optHideUi) {
      optHideUi = values[3];
      player.sendMessage(optHideUi
        ? "§8[§rCinemaCraft§8]§r Auto-hide UI is enabled: §7§oAll UI elements will be hidden during playback."
        : "§8[§rCinemaCraft§8]§r Auto-hide UI is disabled.");
    }
    if (values[4] != optAskFrame) {
      optAskFrame = values[4];
      player.sendMessage(optAskFrame
        ? "§8[§rCinemaCraft§8]§r Keyframe panel is enabled: §7§oShows point properties when adding a new point."
        : "§8[§rCinemaCraft§8]§r Keyframe panel is disabled.");
    }
    if (values[5] != optIsAnchored) {
      optIsAnchored = values[5];
      player.sendMessage(optIsAnchored
        ? "§8[§rCinemaCraft§8]§r Player-to-Camera Anchor is enabled: §7§oThe player will move with the camera during playback."
        : "§8[§rCinemaCraft§8]§r Player-to-Camera Anchor is disabled.");
    }
    if (values[6] != optIsInvisible) {
      optIsInvisible = values[6];
      player.sendMessage(optIsInvisible
        ? "§8[§rCinemaCraft§8]§r The player is now invisible during playback."
        : "§8[§rCinemaCraft§8]§r The player's invisibility has been disabled.");
    }
    if (values[7] != optNightVision) {
      optNightVision = values[7];
      player.sendMessage(optNightVision
        ? "§8[§rCinemaCraft§8]§r Night Vision/Conduit effect is now enabled."
        : "§8[§rCinemaCraft§8]§r Night Vision/Conduit effect is disabled.");
    }
  });
}


function CinemaMenuShow(player) {
  const time = world.getTimeOfDay();
  const currentHour = (time / 1000 + 6) % 24;

  const mainMenu = new ModalFormData()
    .title("§l§3Camera/Player Mode")
    .toggle("Invisible Player", optIsInvisible)
    .toggle("Night Vision", optNightVision)
    .slider("Time of the day", 0, 24, 1, currentHour)
    .toggle("Auto-hide UI", optHideUi);

  mainMenu.show(player).then(selection => {
    if (selection.canceled) return;
    const values = selection.formValues; 
    
    if (values[0] != optIsInvisible) {
      optIsInvisible = values[0];
      player.sendMessage(optIsInvisible
        ? "§8[§rCinemaCraft§8]§r The player is now invisible during playback."
        : "§8[§rCinemaCraft§8]§r The player's invisibility has been disabled.");
    }
    
    if (values[1] != optNightVision) {
      optNightVision = values[1];
      player.sendMessage(optNightVision
        ? "§8[§rCinemaCraft§8]§r Night Vision/Conduit effect is now enabled."
        : "§8[§rCinemaCraft§8]§r Night Vision/Conduit effect is disabled.");
    }

    const heureReelle = values[2];

    if (heureReelle !== currentHour) {
      const ticks = ((heureReelle + 18) % 24) * 1000;
      player.runCommand(`/time set ${ticks}`);
      player.sendMessage(`§8[§rCinemaCraft§8]§r Time set to ${heureReelle}h.`);
    }

    if (values[3] != optHideUi) {
      optHideUi = values[3];
      player.sendMessage(optHideUi
        ? "§8[§rCinemaCraft§8]§r Auto-hide UI is enabled: §7§oAll UI elements will be hidden during playback."
        : "§8[§rCinemaCraft§8]§r Auto-hide UI is disabled.");
    }
  });
}

function trackMenu(player) {
  const mainMenu = new ActionFormData()
    .title("§l§3Main Settings")
    .button("§lPlayer Mode Settings", "textures/mes/cnm/items/cinema_mode")
    .button("§lPath Mode Settings", "textures/mes/cnm/items/path_mode")
    .button("§lClose", "textures/blocks/barrier")

  mainMenu.show(player).then(rep => {
    if (rep.canceled) return;
    if (rep.selection == 0) {
      CinemaMenuShow(player);
    } else if (rep.selection == 1) {
      PathMenuShow(player);
    }

  });
}


function pointMenu(player, pts) {
  const editmenu = new ModalFormData()
        .title("§8Point: §r" + pts.pNum)
        .textField("\nSet Ease Time", "Time in Seconds", '' + (pts.pointEase * 0.05).toFixed(2))
        .textField("\nLight Level", "[1 to 15]", `${pts.lightlevel}`)
        .textField("\nText to show on point", "Actionbar Text", '' + pts.textToShow)
  editmenu.show(player).then(rep => {
    if (rep.canceled) return;
    let reponses = rep.formValues;
    if (reponses[0] != pts.pointEase && !isNaN(reponses[0])) {
      if (reponses[0] == 0) {
        player.sendMessage("§8[§rCinemaCraft§8]§r §cCannot set Ease Time to 0!");
        player.playSound("block.false_permissions");
        return;
      }
      pts.pointEase = parseFloat(reponses[0]) * 20;
    };
    if (reponses[1] != pts.lightlevel && !isNaN(reponses[1])) {
      if (pts.lightlevel >= 0 && pts.lightlevel <= 15) {
        pts.lightlevel = parseInt(reponses[1]);
      } else {
        player.sendMessage("§cLight level must be [1-15}")
        player.playSound("block.false_permissions");
      }
    }
    if (reponses[2] != pts.textToShow && reponses[2] != "") {
      pts.textToShow = reponses[2];
    }
    if (pts.textToShow != '') {
      player.sendMessage("§8[§rCinemaCraft§8]§r §lNew attributes " + getColor(pts.track) + "P:" + pts.pNum + "\n§rEase Time set to §a" + (pts.pointEase * 0.05).toFixed(2) + " seconds\n§rText to display: " + pts.textToShow + "\n§rLight Level: §a" + pts.lightlevel);
    } else {
        player.sendMessage("§8[§rCinemaCraft§8]§r §lNew attributes " + getColor(pts.track) + "P:" + pts.pNum + "\n§rEase Time set to §a" + (pts.pointEase * 0.05).toFixed(2) + " seconds\n§rLight Level: §a" + pts.lightlevel);
    }
  })["catch"](() => {});
}
var curTrack = 1;
world.afterEvents.itemUse.subscribe(async ({
  source: joueur,
  itemStack: _0x48d554
}) => {
  if (!(joueur instanceof Player)) {
    return;
  }
  _0x48d554.cancel = true;
  let _0x44458b = camOps.get(joueur);
  switch (_0x48d554.typeId) {
    case "mes_cnm:cam_repos":
      {
        break;
      }
    case "mes_cnm:perspective":
      {
        hbHandle(joueur, 'perspective')
        break;
      }
    case "mes_cnm:hide_points":
      {
        joueur.removeTag("mes_cnm_preview")
        hbHandle(joueur, 'hide_points')
        break;
      }
    case "mes_cnm:next":
      {
        hbHandle(joueur, 'next')
        break;
      }
    case "mes_cnm:previous":
      {
        hbHandle(joueur, 'next')
        break;
      }
    case "mes_cnm:saves":
      {
        hbHandle(joueur, 'saves')
        break;
      }
    case "mes_cnm:preview":
      {
        hbHandle(joueur, 'preview')
        joueur.runCommand("/replaceitem entity @s slot.hotbar 3 mes_cnm:previewno 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}")
        break;
      }
    case "mes_cnm:previewno":
      {
        hbHandle(joueur, 'preview')
        joueur.runCommand("/replaceitem entity @s slot.hotbar 3 mes_cnm:preview 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}")
        break;
      }
    case "mes_cnm:exit":
      {
        hbHandle(joueur, 'exit')
        break;
      }
    case "mes_cnm:speed1":
      {
        hbHandle(joueur, 'speed')
        break;
      }
    case "mes_cnm:speed2":
      {
        hbHandle(joueur, 'speed')
        break;
      }
    case "mes_cnm:speed3":
      {
        hbHandle(joueur, 'speed')
        break;
      }
    case "mes_cnm:quit_mode":
        {
          hbHandle(joueur, 'quit_mode')
          break;
        }
    case "mes_cnm:help":
        {
          const info = new ActionFormData()
            .title("CinemaCraft")
            .body({ translate: "mes_cnm.main_menu.text", "with": ["\n"] })
            .button("Close book", "textures/blocks/barrier")
          info.show(joueur);
          break;
        }
    case "mes_cnm:cinema_mode":
        {
          hbHandle(joueur, 'cinema_mode')
          break;
        }
    case "mes_cnm:path_mode":
        {
          hbHandle(joueur, 'path_mode')
          break;
        }
    case "mes_cnm:cinemacraft":
      {
        hbHandle(joueur, 'enter_cinemacraft');
        break;
      }
    case "mes_cnm:forward":
      {
        hbHandle(joueur, 'forward');
        break;
      }
    case "mes_cnm:backward":
      {
        hbHandle(joueur, 'backward');
        break;
      }
    case "mes_cnm:left":
      {
        hbHandle(joueur, 'left');
        break;
      }
    case "mes_cnm:right":
      {
        hbHandle(joueur, 'right');
        break;
      }
    case "mes_cnm:up":
      {
        hbHandle(joueur, 'up');
        break;
      }
    case "mes_cnm:down":
      {
        hbHandle(joueur, 'down');
        break;
      }
    case "mes_cnm:head_rotation":
      {
        hbHandle(joueur, 'head_rotation');
        break;
      }
    case "mes_cnm:focus_rotation":
      {
        hbHandle(joueur, 'focus_rotation');
        break;
      }
    case "mes_cnm:grab":
      {
        let _0x2c818d = !!grabPoint;
        grabPoint = !grabPoint ? _0x44458b.select(5, true) : null;
        if (_0x44458b.select(5) != null || _0x2c818d && !grabPoint) {
          joueur.playSound("armor.equip_netherite", {
            'volume': 0.2,
            'pitch': 1.2
          });
        }
        break;
      }
    case "mes_cnm:settings":
      {
        trackMenu(joueur);
        break;
      }
    
    case "mes_cnm:path_settings":
      {
        PathMenuShow(joueur);
        break;
      }
    case 'mes_cnm:play':
      {
        for (let [key, pts] of camPoints) {
          if (pts.lightlevel !== 0) {
            joueur.runCommand(`/execute as @s at @s if block ${pts.location.x} ${pts.location.y} ${pts.location.z} air run setblock ${pts.location.x} ${pts.location.y} ${pts.location.z} light_block ["block_light_level"=${pts.lightlevel}]`)
          };
        };
        joueur.removeTag("mes_cnm_preview")
        if (optIsInvisible) {
          joueur.runCommand("/effect @s invisibility 99999 255 true")
        };
        if (optNightVision) {
          joueur.runCommand("/effect @s night_vision 99999 255 true")
        }
        if ((gameCamera == null || !gameCamera.isValid()) && optIsAnchored) {
          let _0x2e2593 = joueur.dimension.spawnEntity('mes_cnm:camera', getPos(_0x44458b.player, 0, 1));
          gameCamera = _0x2e2593;
        }
        let _0x1c1eea = _0x44458b.select();
        if (_0x1c1eea != null) {
          _0x44458b.action(camPoints.get(_0x1c1eea).pNum);
        } else {
          _0x44458b.action();
        }
        break;
      }
    case "mes_cnm:add":
      {
        let _0x30991d = optPointPos === 0 ? 1.2 : 0.2;
        let _0x5b1270 = joueur.dimension.spawnEntity("mes_cnm:tcam", getPos(joueur, 0, _0x30991d));
        if (!camTracks.has(curTrack)) {
          camTracks.set(curTrack, new Track());
        }
        camPoints.set(_0x5b1270, new Dolly(_0x5b1270, joueur));
        camTracks.get(curTrack).trackPoints.push(_0x5b1270);
        joueur.playSound("random.pop", {
          'volume': 0.4,
          'pitch': 0.6
        });
        if (optAskFrame && camTracks.get(curTrack).trackPoints.length != 1) {
          pointMenu(joueur, camPoints.get(_0x5b1270));
        }
        break;
      }
    case "mes_cnm:edit":
      {
        let _0x513dd2 = _0x44458b.select(5);
        if (_0x513dd2 != null) {
          pointMenu(joueur, camPoints.get(_0x513dd2));
        }
        break;
      }
    // CINEMA MODE
    case "mes_cnm:add_focus":
      {
        joueur.runCommand("/kill @e[type=mes_cnm:focus_point]")
        joueur.dimension.spawnEntity("mes_cnm:focus_point", getPos(joueur, 0, 1.2));
        focus_point_x = joueur.location.x
        focus_point_y = joueur.location.y
        focus_point_z = joueur.location.z
        joueur.playSound("random.pop", {
          'volume': 0.4,
          'pitch': 0.6
        });
        break;
      }
    case "mes_cnm:start_movement":
      {
        ajout_perspective(joueur, "none")
        if (optHideUi) {
          joueur.runCommand("hud @s hide all");
        };
        if (optNightVision) {
          joueur.runCommand("/effect @s night_vision 99999 255 true")
        };
        if (optIsInvisible) {
          joueur.runCommand("/effect @s invisibility 99999 255 true")
        };
        joueur.runCommand("/gamerule sendcommandfeedback false")
        const slot = joueur.getComponent("inventory").container.getSlot(1);
        if (slot && slot.typeId === "mes_cnm:forward") {
          joueur.addTag("mes_cnm_mvf")
        } else if (slot && slot.typeId === "mes_cnm:backward") {
          joueur.addTag("mes_cnm_mvb")
        } else if (slot && slot.typeId === "mes_cnm:right") {
          joueur.addTag("mes_cnm_mvr")
        } else if (slot && slot.typeId === "mes_cnm:left") {
          joueur.addTag("mes_cnm_mvl")
        } else if (slot && slot.typeId === "mes_cnm:up") {
          joueur.addTag("mes_cnm_mvu")
        } else if (slot && slot.typeId === "mes_cnm:down") {
          joueur.addTag("mes_cnm_mvd")
        } else if (slot && slot.typeId === "mes_cnm:head_rotation") {
          joueur.addTag("mes_cnm_mvh")
        } else if (slot && slot.typeId === "mes_cnm:focus_rotation") {
          joueur.addTag("mes_cnm_mvfr")
        }
        joueur.runCommand("/replaceitem entity @s slot.hotbar 1 mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}")
        joueur.runCommand("/replaceitem entity @s slot.hotbar 2 mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}")
        joueur.runCommand("/replaceitem entity @s slot.hotbar 8 mes_cnm:blank 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}")
        joueur.addTag("mes_cnm_mv")
        joueur.runCommand(`/replaceitem entity @s slot.hotbar 0 mes_cnm:pause 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        joueur.camera.clear()
        break;
      }
    case "mes_cnm:pause":
      {
        if (joueur.hasTag("mes_cnm_mvf")) {
          joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:forward 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        } else if (joueur.hasTag("mes_cnm_mvb")) {
            joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:backward 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        } else if (joueur.hasTag("mes_cnm_mvr")) {
            joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:right 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        } else if (joueur.hasTag("mes_cnm_mvl")) {
            joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:left 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        } else if (joueur.hasTag("mes_cnm_mvu")) {
            joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:up 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        } else if (joueur.hasTag("mes_cnm_mvd")) {
            joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:down 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        } else if (joueur.hasTag("mes_cnm_mvh")) {
            joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:head_rotation 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        } else if (joueur.hasTag("mes_cnm_mvfr")) {
            joueur.runCommand(`/replaceitem entity @s slot.hotbar 1 mes_cnm:focus_rotation 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        }
        removeallmvtags(joueur)
        joueur.runCommand("/replaceitem entity @s slot.hotbar 8 mes_cnm:quit_mode 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}")
        joueur.runCommand("/replaceitem entity @s slot.hotbar 2 mes_cnm:perspective 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}")
        joueur.runCommand("/gamerule sendcommandfeedback true")
        joueur.runCommand("/effect @s invisibility 0 0")
        joueur.runCommand("/effect @s night_vision 0 0")
        joueur.runCommand("/hud @s reset all")
        joueur.runCommand(`/replaceitem entity @s slot.hotbar 0 mes_cnm:start_movement 1 0 {\"minecraft:item_lock\":{\"mode\":\"lock_in_slot\"}}`)
        for (let [key, pts] of camPoints) {
          if (pts.lightlevel !== 0) {
            joueur.runCommand(`/execute as @s at @s if block ${pts.location.x} ${pts.location.y} ${pts.location.z} light_block run setblock ${pts.location.x} ${pts.location.y} ${pts.location.z} air`)
          };
        };
        break;
      }
    case "mes_cnm:cinema_settings":
        {
          CinemaMenuShow(joueur);
          break;
        }
    case "mes_cnm:remove":
      {
        let _0x561d04 = _0x44458b.select(undefined, true);
        _0x561d04 = camPoints.get(_0x561d04);
        if (!_0x561d04) {
          return;
        }
        joueur.playSound("random.pop2", {
          'volume': 0.5
        });
        _0x561d04.remove(true);
        break;
      }
    case "mes_cnm:remove_focus":
      {
        for (let viewedEntity of joueur.getEntitiesFromViewDirection({
          'maxDistance': 5
        })) {
          if (viewedEntity.entity.typeId == "mes_cnm:focus_point") {
            focus_point_x = null
            focus_point_y = null
            focus_point_z = null
            joueur.runCommand("/kill @e[type=mes_cnm:focus_point]")
          };
        };
      }
    case 'mes_cnm:tools':
      {
        hbHandle(joueur, "tools");
        break;
      }
  }
});

function removeallmvtags(joueur) {
        joueur.removeTag("mes_cnm_mv")
        joueur.removeTag("mes_cnm_mvf")
        joueur.removeTag("mes_cnm_mvb")
        joueur.removeTag("mes_cnm_mvu")
        joueur.removeTag("mes_cnm_mvd")
        joueur.removeTag("mes_cnm_mvr")
        joueur.removeTag("mes_cnm_mvl")
        joueur.removeTag("mes_cnm_mvh")
        joueur.removeTag("mes_cnm_mvfr")
}
var _easeTime = 2;
const trackColors = ['§2', '§b', '§c', '§d', '§e', '§3', '§5', '§6', '§g', '§1', '§4', '§s', '§9', '§8'];
var initialized = false;
system.run(function fmTick() {
  system.run(fmTick);
  if (!initialized) {
    world.getAllPlayers().forEach(player => {
      if (player != null && player.isValid) {
          camOps.set(player, new Crew(player));
          for (let camentity of player.dimension.getEntities({
            'type': "mes_cnm:tcam"
          })) {
            camentity.kill();
          }
          player.dimension.runCommand("kill @e[type=mes_cnm:camera]");
          player.dimension.runCommand("kill @e[type=mes_cnm:focus_point]");
          initialized = true;
      }
    });
  }
  for (let player of world.getAllPlayers()) {
    
    if (player.hasTag("mes_cnm_preview")) {
      let track = camTracks.get(curTrack);
      if (!track || track.trackPoints.length < 2) {
        player.onScreenDisplay.setActionBar("§cInsufficient points.");
        return;
      }
    
      let stepSize = 0.3; 
      let maxParticles = 100; 
      let particleCount = 0; 
    
      for (let i = 0; i < track.trackPoints.length - 1; i++) {
        let startPoint = camPoints.get(track.trackPoints[i]).location;
        let endPoint = camPoints.get(track.trackPoints[i + 1]).location;
    
        for (let t = 0; t <= 1; t += stepSize) {
          if (particleCount >= maxParticles) break; 
    
          let lerpX = startPoint.x + (endPoint.x - startPoint.x) * t;
          let lerpY = startPoint.y + (endPoint.y - startPoint.y) * t;
          let lerpZ = startPoint.z + (endPoint.z - startPoint.z) * t;
    
          player.dimension.spawnParticle(
            "mes_cnm:path_particle",
            { x: lerpX, y: lerpY, z: lerpZ },
            options
          );
    
          particleCount++;
        }
        if (particleCount >= maxParticles) break;
      }
    }
    if (player.hasTag("mes_cnm_hidden")) {
      player.runCommand("/effect @e[family=mes] invisibility 99999 255 true")
    };
    // CAMERA TYPE
    if (player.hasTag("mes_cnm_cam1")) {
      player.runCommand("execute as @p at @s anchored eyes unless block ~ ~8 ~ air run camera @s clear")
      player.runCommand("execute as @p at @s anchored eyes if block ~ ~8 ~ air run camera @s set minecraft:free ease 0.1 linear pos ~ ~8 ~ facing @s")
    } else if (player.hasTag("mes_cnm_cam2")) {
      player.runCommand("execute as @p at @s anchored eyes unless block ^-1.5^^-1.5 air run camera @s clear")
      player.runCommand("execute as @p at @s anchored eyes if block ^-1.5^^-1.5 air run camera @s set minecraft:free ease 0.1 linear pos ^-1.5^^-1.5 rot ~~")
    } else if (player.hasTag("mes_cnm_cam3")) {
      player.runCommand("execute as @p at @s anchored eyes unless block ^1.5^^-1.5 air run camera @s clear")
      player.runCommand("execute as @p at @s anchored eyes if block ^1.5^^-1.5 air run camera @s set minecraft:free ease 0.1 linear pos ^1.5^^-1.5 rot ~~")
    } else if (player.hasTag("mes_cnm_cam4")) {
      player.runCommand("execute as @p at @s anchored eyes unless block ~7 ~6 ~7 air run camera @s clear")
      player.runCommand("execute as @p at @s anchored eyes if block ~7 ~6 ~7 air run camera @s set minecraft:free ease 0.1 linear pos ~7 ~6 ~7 facing @s")
    } else if (player.hasTag("mes_cnm_cam5")) {
      player.runCommand(`execute as @p at @s anchored eyes unless block ~${xOffset} ~${yOffset} ~${zOffset} air run camera @s clear`)
      player.runCommand(`execute as @p at @s anchored eyes if block ~${xOffset} ~${yOffset} ~${zOffset} air run camera @s set minecraft:free ease 0.1 linear pos ~${xOffset} ~${yOffset} ~${zOffset} facing @s`)
    } else if (player.hasTag("mes_cnm_cam6")) {
      player.runCommand(`execute as @p at @s anchored eyes if block ${xFixed} ${yFixed} ${zFixed} air run camera @s set minecraft:free pos ${xFixed} ${yFixed} ${zFixed} facing @s`)
    };
    // MOVEMENTS
    if (player.hasTag("mes_cnm_mv")) {
      player.camera.clear()
      let tpspeed;
      if (mvtspeed == 1) {
        tpspeed = 0.01
      } else {
        tpspeed = 0.01*(mvtspeed * 2.2)
      };
      if (player.hasTag("mes_cnm_mvf")) {
        player.runCommand(`/execute as @s at @s if block ^ ^ ^0.15 water run tp @s ^ ^ ^${tpspeed}`)
        player.runCommand(`/execute as @s at @s if block ^ ^ ^0.15 air run tp @s ^ ^ ^${tpspeed}`)
        player.runCommand(`/execute as @s at @s unless block ^ ^ ^0.15 air run tp @s ^ ^0.1 ^${tpspeed}`)
      } else if (player.hasTag("mes_cnm_mvb")) {
        player.runCommand(`/execute as @s at @s if block ^ ^ ^-0.15 water run tp @s ^ ^ ^-${tpspeed}`)
        player.runCommand(`/execute as @s at @s if block ^ ^ ^-0.15 air run tp @s ^ ^ ^-${tpspeed}`)
      } else if (player.hasTag("mes_cnm_mvl")) {
        player.runCommand(`/execute as @s at @s if block ^0.15 ^ ^ water run tp @s ^${tpspeed} ^ ^`)
        player.runCommand(`/execute as @s at @s if block ^0.15 ^ ^ air run tp @s ^${tpspeed} ^ ^`)
      } else if (player.hasTag("mes_cnm_mvr")) {
        player.runCommand(`/execute as @s at @s if block ^-0.15 ^ ^ water run tp @s ^-${tpspeed} ^ ^`)
        player.runCommand(`/execute as @s at @s if block ^-0.15 ^ ^ air run tp @s ^-${tpspeed} ^ ^`)
      } else if (player.hasTag("mes_cnm_mvh")) {
        player.runCommand(`/execute as @s at @s run tp @s ~ ~ ~ ~${mvtspeed*0.4} ~`)
      };
      if (isNaN(focus_point_x) | focus_point_x == null) {
        if (player.hasTag("mes_cnm_mvu")) {
          player.runCommand(`/execute as @s at @s if block ~ ~0.15 ~ water run tp @s ~ ~${tpspeed} ~`)
          player.runCommand(`/execute as @s at @s if block ~ ~0.15 ~ air run tp @s ~ ~${tpspeed} ~`)
        } else if (player.hasTag("mes_cnm_mvd")) {
          player.runCommand(`/execute as @s at @s if block ~ ~-0.15 ~ water run tp @s ~ ~-${tpspeed} ~`)
          player.runCommand(`/execute as @s at @s if block ~ ~-0.15 ~ air run tp @s ~ ~-${tpspeed} ~`)
        } else if (player.hasTag("mes_cnm_mvfr")) {
          player.onScreenDisplay.setActionBar("§cThere is no focus point!")
          player.playSound("block.false_permissions");
        };
      } else {
        if (player.hasTag("mes_cnm_mvu")) {
          player.runCommand(`/execute as @s at @s if block ~ ~0.15 ~ air run tp @s ~ ~${tpspeed} ~ facing ${focus_point_x} ${focus_point_y} ${focus_point_z}`)
        } else if (player.hasTag("mes_cnm_mvd")) {
          player.runCommand(`/execute as @s at @s if block ~ ~-0.15 ~ air run tp @s ~ ~-${tpspeed} ~ facing ${focus_point_x} ${focus_point_y} ${focus_point_z}`)
        } else if (player.hasTag("mes_cnm_mvfr")) {
          player.runCommand(`/execute as @s at @s if block ^0.15 ^ ^ air run tp @s ^${tpspeed} ^ ^ facing ${focus_point_x} ${focus_point_y} ${focus_point_z}`)
        };
      }
    };
    let _0x13bba5 = camOps.get(player);
    if (_0x13bba5) {
      _0x13bba5.tick();
    }
  }
});

world.afterEvents.itemUse.subscribe(e => {
  if (e.itemStack.typeId === "mes_cnm:guide_book") {
      menu.menushow(e.source);
  }
});

world.afterEvents.playerSpawn.subscribe(({ player }) => {
  if (player.hasTag("mes_cnm_join") === false) {
      player.runCommand(`/tellraw @p { \"rawtext\" : [ { \"text\" : \"§8[§rCinemaCraft§8]§r §f-§r §2Cinema Guidebook Received\" } ] }`);
      world.getDimension(player.dimension.id).spawnItem(new ItemStack("mes_cnm:guide_book", 1), player.location);
      player.addTag("mes_cnm_join")
  };
});