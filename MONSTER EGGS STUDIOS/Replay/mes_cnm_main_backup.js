import { world, system, Player, ItemStack, MolangVariableMap, EnchantmentType} from '@minecraft/server';
import { ActionFormData, MessageFormData, ModalFormData } from '@minecraft/server-ui';
import * as menu from './mes_cnm_menu.js';
/* Invisible en path mode et option invisibility during cinema*/
/*Add detection si l'inventaire est nul*/


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

// GESTION DES INV ET UTILISATION ITEMS

function hbHandle(player, array_items) {
  const main_tools_1 = ['cinema_mode', 'blank', "path_mode", "blank", "blank", 'help', 'saves', 'settings', "exit"];
  const path_tools_1 = ['play', 'add', "remove", "edit", "grab", 'add_focus', 'hide_points', 'next', "quit_mode"];
  const path_tools_2 = ['blank', 'blank', "blank", "preview", 'saves', 'hide_points', 'path_settings', "next", "quit_mode"];
  const cinema_tools = ['play', 'blank', 'blank', "blank", 'blank', 'hide_points', 'speed', 'cinema_settings', 'quit_mode'];
  switch (array_items) {
    case "next":
      {
        if (player.hasTag("mes_cnm_path_1")) {
          ajout_tag(player, "mes_cnm_path_2")
          world.sendMessage("PATH MODE HOTBAR 1");
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
          world.sendMessage("PATH MODE HOTBAR 2");
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
        world.sendMessage("PATH MODE 1");
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
        world.sendMessage("CINEMA MODE");
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
    case "enter_cinemacraft":
        {
          world.sendMessage("CINEMACRAFT, YOUR INVENTORY HAS BEEN SAVED TEXT");
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
          world.sendMessage("MAIN HOTBAR MODE");
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
        world.sendMessage("Normal INV");
        // DONNER INVENTAIRE NORMAL
        loadInventory(player);
        break;
      };
    case 'speed':
      {
        for (let [key, pts] of camPoints) {
          if (pts.speedlevel >= 0 && pts.speedlevel < 5) {
            pts.speedlevel += 1
            pts.pointEase = pts.pointEase/1.9
            player.onScreenDisplay.setActionBar(`§a[§fSpeed§a]§r ${pts.speedlevel}`);
          }
          else if (pts.speedlevel == 5) {
            pts.speedlevel = 1
            pts.pointEase = pts.pointEase * ((1.9)**7);
            player.onScreenDisplay.setActionBar(`§a[§fSpeed§a]§r ${pts.speedlevel}`);
          }
        };
        break;
      };
    case 'saves':
      {

        break;
      }
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

// Function to save camTracks and camPoints Maps to dynamic properties
function saveMaps() {
  const camTracksJSON = JSON.stringify(Array.from(camTracks.entries()));
  const camPointsJSON = JSON.stringify(Array.from(camPoints.entries()));
  world.setDynamicProperty("camTracks", camTracksJSON);
  world.setDynamicProperty("camPoints", camPointsJSON);
}

// Function to load camTracks and camPoints Maps from dynamic properties if they exist
function loadMaps() {
  const camTracksData = world.getDynamicProperty("camTracks");
  const camPointsData = world.getDynamicProperty("camPoints");
  // Only create new Maps if dynamic properties are empty
  camTracks = camTracksData ? new Map(JSON.parse(camTracksData)) : new Map();
  camPoints = camPointsData ? new Map(JSON.parse(camPointsData)) : new Map();

  
}

loadMaps();

world.afterEvents.playerPlaceBlock.subscribe((eventData) => {
  saveMaps();
  world.sendMessage("save")

  // This runs when the player joins the game for the first time!
});


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
    // FADES
    this.fadeout = false;
    this.fadeintime = 20;
    this.fadeholdtime = 20;
    this.fadeouttime = 20;
    this.fadecolor = 0;
    //
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
      world.sendMessage("§cNo camera points?")
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
          this.player.dimension.runCommand("ride " + this.player.nameTag + " start_riding @e[type=mes_cnm:camera, c=1] teleport_ride");
        }
        if (optHideUi) {
          this.player.dimension.runCommand("hud " + this.player.nameTag + " hide all");
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
      this.player.camera.setCamera("minecraft:first_person");
      this.player.dimension.runCommand("hud " + this.player.nameTag + " reset all");
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

function lerpValue(_0x148a57, _0x1cffc7, _0x34c632) {
  return _0x148a57 + (_0x1cffc7 - _0x148a57) * _0x34c632;
}
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
    world.sendMessage(`SPEED ${currentCamPoint.speedlevel} TEXT TO SHOW ${currentCamPoint.textToShow} FADE OPTIONS ${currentCamPoint.fadeout}` ); // CARACTERSTIQUE DE CHAQUE POINT AU PASSAGE
    if (currentCamPoint.fadeout == true && !playerObj.player.hasTag("mes_cnm_faded")) {
      playerObj.player.addTag("mes_cnm_faded")
      playerObj.player.runCommand(`/camera @s fade time ${currentCamPoint.fadeintime} ${currentCamPoint.fadeholdtime} ${currentCamPoint.fadeouttime} color 255 255 255 `)
    };
    if (currentCamPoint.fadeout == false) {
      playerObj.player.removeTag("mes_cnm_faded")
    };
    let nextCamPoint = camPoints.get(path[actionIndex + 1]);
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
  playerObj.player.dimension.runCommandAsync("camera " + playerObj.player.nameTag + " set mes_cnm:free ease " + cameraEaseFactor + " in_out_sine \n        pos " + lerpPoint.pos.x + " " + lerpPoint.pos.y + " " + lerpPoint.pos.z + " rot " + lerpPoint.rot.x + " ~" + lerpPoint.rot.y);
}

var optHideUi = true;
var optAskFrame = false;
var optIsInvisible = false;
var optAutoSwitch = false;
var optIsAnchored = false;
var optPointPos = 0;

function Saves(player) {
  const mainMenu = new ActionFormData()
    .title("§l§3Points Options")
    .body("Current Save " + curTrack)

    mainMenu
      .button("§lAdd New Track")
      .button("§l§4Reset Current Track Points")
      .button("§l§bClick on a save to switch into it");

    camTracks.forEach((value, key) => {
      mainMenu.button("§lSave " + key);
    });
  

    const resetConfirmation = new MessageFormData()
      .title("§l§3Reset Track Data?")
      .body("This will delete all point data for §lTrack " + curTrack + "§r!")
      .button1("§l§2Confirm")
      .button2("§l§4Cancel");

    mainMenu.show(player).then(reponse => {
      let rep = reponse.selection
      if (rep > 2) {
        curTrack = rep-2;
        player.sendMessage("[§aCinema§r] Active Track is now " + getColor(curTrack) + "Track" + curTrack);
      } else if (rep === 0) {
        curTrack = camTracks.size + 1;
        camTracks.set(curTrack, new Track());
        player.sendMessage("[§aCinema§r] Added new track. Set active track to " + getColor(curTrack) + "Track " + curTrack + "§r");
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
    .title("§l§3Points Options")
    .dropdown("Set Point Position", ["Head", "Feet"], optPointPos)
    .textField("\nDefault Ease Time (In Seconds)", "Enter Ease Time in Seconds", "" + _easeTime)
    .toggle("Auto-switch tracks when editing", optAutoSwitch);

  mainMenu.show(player).then(selection => {
    const values = selection.formValues; // Fix this line to use selection.formValues

    // Toggle auto-switch if the value changed
    if (values[2] !== optAutoSwitch && !isNaN(values[2])) {
      optAutoSwitch = values[2];
      player.sendMessage(optAutoSwitch
        ? "[§aCinema§r] Auto-switch enabled: §7§oTrack editing is no longer restricted to the current Track."
        : "[§aCinema§r] Auto-switch disabled.");
    }

    // Update point position if changed
    if (values[0] !== optPointPos && !isNaN(values[0])) {
      optPointPos = values[0];
      player.sendMessage(optPointPos === 0
        ? "[§aCinema§r] Default point position anchored to Head."
        : "[§aCinema§r] Default point position anchored to Feet.");
    }

    // Update ease time if changed and valid
    if (values[1] != _easeTime && !isNaN(values[1])) {
      const newEaseTime = parseFloat(values[1]);
      if (isNaN(newEaseTime) || newEaseTime === 0) {
        player.sendMessage("[§aCinema§r] §cError: Invalid input.");
        return;
      }
      _easeTime = newEaseTime;
      player.sendMessage("[§aCinema§r] Default Ease Time set to §l" + _easeTime + " Seconds");
    }
  });
}

function CinemaMenuShow(player) {
  const mainMenu = new ModalFormData()
    .title("§l§3Cinema Options")
    .toggle("Auto-hide UI", optHideUi)
    .toggle("Display keyframe of new points", optAskFrame)
    .toggle("Invisible player", optIsInvisible)
    .toggle("Anchor player to camera", optIsAnchored)

  mainMenu.show(player).then(selection => {
    const values = selection.formValues; 
    if (values[0] != optHideUi) {
      optHideUi = values[0];
      player.sendMessage(optHideUi
        ? "[§aCinema§r] Auto-hide UI enabled: §7§oHides all UI elements during playback."
        : "[§aCinema§r] Auto-hide UI disabled.");
    }
    if (values[1] != optAskFrame) {
      optAskFrame = values[1];
      player.sendMessage(optAskFrame
        ? "[§aCinema§r] Keyframe panel enabled: §7§oDisplays point properties when adding a new point."
        : "[§aCinema§r] Keyframe panel disabled.");
    }
    if (values[3] != optIsAnchored) {
      optIsAnchored = values[3];
      player.sendMessage(optIsAnchored
        ? "[§aCinema§r] Player-to-Camera Anchor enabled: §7§oPlayer will move with camera during playback."
        : "[§aCinema§r] Player-to-Camera Anchor disabled.");
    }
  });
}

function trackMenu(player) {
  const mainMenu = new ActionFormData()
    .title("§l§3Track Options")
    .button("§lSettings")
    .button("§lPoint Options")
    .button("§l")
    .button("§lAdd New Track")
    .button("§l§4Reset Track");

  const settingsMenu = new ModalFormData()
    .title("§l§3Settings")
    .textField("Set Active Track §o§7(Currently Track " + curTrack + ")§r", "Enter Track Number", "" + curTrack)
    .toggle("Auto-hide UI", optHideUi)
    .toggle("Display keyframe of new points", optAskFrame)
    .toggle("Anchor player to camera", optIsAnchored)
    .toggle("Auto-switch tracks when editing", optAutoSwitch);

  const pointOptionsMenu = new ModalFormData()
    .title("§l§3Point Options")
    .dropdown("Set Point Position", ["Head", "Feet"], optPointPos)
    .textField("\nDefault Ease Time (In Seconds)", "Enter Ease Time in Seconds", "" + _easeTime);

  const resetConfirmation = new MessageFormData()
    .title("§l§3Reset Track Data?")
    .body("This will delete all point data for §lTrack " + curTrack + "§r!")
    .button1("§l§2Confirm")
    .button2("§l§4Cancel");

  mainMenu.show(player).then(selection => {
    if (selection.selection === 0) {
      settingsMenu.show(player).then(formValues => {
        let values = formValues.formValues;
        if (values[0] != curTrack && !isNaN(values[0])) {
          values[0] = parseInt(values[0]);
          if (!camTracks.has(values[0])) {
            player.sendMessage("[§aCinema§r] §cError: Track does not exist.");
            return;
          }
          curTrack = values[0];
          player.sendMessage("[§aCinema§r] Active Track is now " + getColor(curTrack) + "Dolly Track " + curTrack);
        }
        if (values[1] != optHideUi) {
          optHideUi = values[1];
          player.sendMessage(optHideUi
            ? "[§aCinema§r] Auto-hide UI enabled: §7§oHides all UI elements during playback."
            : "[§aCinema§r] Auto-hide UI disabled.");
        }
        if (values[2] != optAskFrame) {
          optAskFrame = values[2];
          player.sendMessage(optAskFrame
            ? "[§aCinema§r] Keyframe panel enabled: §7§oDisplays point properties when adding a new point."
            : "[§aCinema§r] Keyframe panel disabled.");
        }
        if (values[3] != optIsAnchored) {
          optIsAnchored = values[3];
          player.sendMessage(optIsAnchored
            ? "[§aCinema§r] Player-to-Camera Anchor enabled: §7§oPlayer will move with camera during playback."
            : "[§aCinema§r] Player-to-Camera Anchor disabled.");
        }
        if (values[4] != optAutoSwitch) {
          optAutoSwitch = values[4];
          player.sendMessage(optAutoSwitch
            ? "[§aCinema§r] Auto-switch enabled: §7§oTrack editing is no longer restricted to the current Track."
            : "[§aCinema§r] Auto-switch disabled.");
        }
      })["catch"](() => {});
    } else if (selection.selection === 1) {
      pointOptionsMenu.show(player).then(pointValues => {
        let values = pointValues.formValues;
        if (values[0] != optPointPos) {
          optPointPos = values[0];
          player.sendMessage(optPointPos
            ? "[§aCinema§r] Default point position anchored to Head."
            : "[§aCinema§r] Default point position anchored to Feet.");
        }
        if (values[1] != _easeTime) {
          values[1] = parseFloat(values[1]);
          if (isNaN(values[1]) || values[1] === 0) {
            player.sendMessage("[§aCinema§r] §cError: Invalid input.");
            return;
          }
          _easeTime = values[1];
          player.sendMessage("[§aCinema§r] Default Ease Time set to §l" + _easeTime + " Seconds");
        }
      })["catch"](() => {});
    } else if (selection.selection === 2) {
      player.sendMessage("saves text or menu");
    } else if (selection.selection === 3) {
      curTrack = camTracks.size + 1;
      camTracks.set(curTrack, new Track());
      player.sendMessage("[§aCinema§r] Added new track. Set active track to " + getColor(curTrack) + "Dolly Track " + curTrack + "§r");
    } else if (selection.selection === 4) {
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


function pointMenu(_0xa8c1b1, pts) {
  const editmenu = new ModalFormData()
        .title("§8Point: §r" + pts.pNum)
        .textField("\nSet Ease Time", "Time in Seconds", '' + (pts.pointEase * 0.05).toFixed(2))
        .textField("\nLight Level", "[1 to 15]", '')
        .textField("\nText to show on point", "Actionbar Text", '' + pts.textToShow)
        .toggle("Fade", pts.fadeout);
  editmenu.show(_0xa8c1b1).then(rep => {
    if (rep.canceled) return;
    let reponses = rep.formValues;
    if (reponses[0] != pts.pointEase && !isNaN(reponses[0])) {
      if (reponses[0] == 0) {
        world.sendMessage("[§aCinema§r] §cError: Cannot set Ease Time to 0.");
        /* Jouer son bloc note erreur*/
        return;
      }
      pts.pointEase = parseFloat(reponses[0]) * 20;
    };
    if (reponses[3] == true) {
      pts.fadeout = reponses[3];
      if (pts.fadeout == true) {
        const fademenu = new ModalFormData()
          .title("§2Fade Options")
          .textField("\nFade In", "Time in Seconds", '' + pts.fadeintime * 0.05)
          .textField("\nHold Seconds", "Time in Seconds", '' + pts.fadeholdtime * 0.05)
          .textField("\nFade Out", "Time in Seconds", '' + pts.fadeouttime * 0.05)
          .dropdown("\nFade Color", ['BLACK', '§fWHITE', '§2GREEN', '§4RED', '§bBLUE', '§eYELLOW', '§dPINK'], pts.fadecolor);
        fademenu.show(_0xa8c1b1).then(rep => {
          if (rep.canceled) return;
          let fadereponses = rep.formValues;
          if (!isNaN(fadereponses[0])) {
            if (fadereponses[0] != pts.fadeintime && !isNaN(fadereponses[0])) {
              if (fadereponses[0] == 0) {
                world.sendMessage("[§aCinema§r] §cError: Cannot set FadeIn Time to 0.");
                return;
              }
              pts.fadeintime = parseFloat(fadereponses[0]) * 20;
            };
            if (fadereponses[1] != pts.fadeintime && !isNaN(fadereponses[1])) {
              if (fadereponses[1] == 0) {
                world.sendMessage("[§aCinema§r] §cError: Cannot set Hold Time to 0.");
                return;
              }
              pts.fadeholdtime = parseFloat(fadereponses[1]) * 20;
            };
            if (fadereponses[2] != pts.fadeouttime && !isNaN(fadereponses[2])) {
              if (fadereponses[2] == 0) {
                world.sendMessage("[§aCinema§r] §cError: Cannot set FadeOut Time to 0.");
                return;
              }
              pts.fadeouttime = parseFloat(fadereponses[2]) * 20;
            };
            if (fadereponses[3] != pts.fadecolor && !isNaN(fadereponses[3])) {
              pts.fadecolor = parseFloat(fadereponses[3]);
            };
          };
        });
      };
    };
    if (reponses[1] != pts.lightlevel && !isNaN(reponses[1])) {
      pts.lightlevel = parseFloat(reponses[1]);
    }
    if (reponses[2] != pts.textToShow && reponses[2] != "") {
      pts.textToShow = reponses[2];
    }
    if (pts.textToShow != '') {
      world.sendMessage("[§aCinema§r] §lNew attributes " + getColor(pts.track) + "P:" + pts.pNum + "\n§rSet Ease Time to §a" + (pts.pointEase * 0.05).toFixed(2) + " Seconds\n§rText to show on point: " + pts.textToShow + "\n§rCamera fade out §a" + pts.fadeout + "\n§rLight Level: §a" + pts.lightlevel);
    } else {
      world.sendMessage("[§aCinema§r] §lNew attributes " + getColor(pts.track) + "P:" + pts.pNum + "\n§rSet Ease Time to §a" + (pts.pointEase * 0.05).toFixed(2) + " Seconds" + "\n§rCamera fade out §a" + pts.fadeout + "\n§rLight Level: §a" + pts.lightlevel);
    }
  })["catch"](() => {});
}
var curTrack = 1;
world.afterEvents.itemUse.subscribe(async ({
  source: joueur,
  itemStack: _0x48d554
}) => {
  saveMaps();
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
    case "mes_cnm:next":
      {
        hbHandle(joueur, 'next')
        break;
      }
    case "mes_cnm:saves":
      {
        hbHandle(joueur, 'saves')
        break;
      }
    case "mes_cnm:exit":
      {
        hbHandle(joueur, 'exit')
        break;
      }
    case "mes_cnm:speed":
      {
        hbHandle(joueur, 'speed')
        break;
      }
    case "mes_cnm:quit_mode":
        {
          hbHandle(joueur, 'quit_mode')
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
    case "mes_cnm:cinema_settings":
        {
          CinemaMenuShow(joueur);
          break;
        }
    case "mes_cnm:path_settings":
      {
        PathMenuShow(joueur);
        break;
      }
    case 'mes_cnm:pause':
      {
        hbHandle(joueur, 'pause')
        break;
      }
    case 'mes_cnm:play':
      {
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
    case 'mes_cnm:tools':
      {
        hbHandle(joueur, "tools");
        break;
      }
  }
});

var _easeTime = 2;
const easeTypes = ["in_sine", 'out_sine', "in_out_sine", 'in_quad', "out_quad", "in_out_quad", 'in_cubic', "out_cubic", 'in_out_cubic', "in_quart", "out_quart", "in_out_quart", "in_quint", "out_quint", 'in_out_quint', "in_expo", "out_expo", "in_out_expo", 'in_circ', "out_circ", "in_out_circ", "in_back", 'out_back', "in_out_back", "in_elastic", "out_elastic", 'in_out_elastic', "in_bounce", "out_bounce", 'in_out_bounce'];
const trackColors = ['§2', '§b', '§c', '§d', '§e', '§3', '§5', '§6', '§g', '§1', '§4', '§s', '§9', '§8'];
var initialized = false;
system.run(function fmTick() {
  system.run(fmTick);
  if (!initialized) {
    world.getAllPlayers().forEach(player => {
      if (player != null && player.isValid) {
          camOps.set(player, new Crew(player));
          initialized = true;
      }
    });
  }
  for (let player of world.getAllPlayers()) {
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
      player.runCommand(`/tellraw @p { \"rawtext\" : [ { \"text\" : \"§7[§2§lCinema§r§7] §f-§r §2Cinema Guidebook Received\" } ] }`);
      world.getDimension(player.dimension.id).spawnItem(new ItemStack("mes_cnm:guide_book", 1), player.location);
      player.addTag("mes_cnm_join")
  };
});