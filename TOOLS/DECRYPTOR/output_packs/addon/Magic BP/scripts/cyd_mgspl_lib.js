import * as mc from '@minecraft/server';

import * as enderblightClass from "./spells/cyd_mgspl_enderblight";
import * as fireballClass from './spells/cyd_mgspl_fireball';
import * as gravity_vortexClass from "./spells/cyd_mgspl_gravity_vortex";
import * as ice_blastClass from './spells/cyd_mgspl_ice_blast';
import * as illuminateClass from './spells/cyd_mgspl_illuminate';
import * as levitationClass from './spells/cyd_mgspl_levitation';
import * as lightning_strikeClass from './spells/cyd_mgspl_lightning_strike';
import * as mineblastClass from './spells/cyd_mgspl_mineblast';
import * as polymorphClass from './spells/cyd_mgspl_polymorph';
import * as pushClass from './spells/cyd_mgspl_push';
import * as returnClass from './spells/cyd_mgspl_return';
import * as summon_minionClass from './spells/cyd_mgspl_summon_minion';
import * as timewarpClass from './spells/cyd_mgspl_timewarp';
import * as whirlwindClass from './spells/cyd_mgspl_whirlwind';
import * as witherskullsClass from './spells/cyd_mgspl_witherskulls';

export const SHOW_MANA_ITEMS = ["cyd_mgspl:spell_potion","cyd_mgspl:mana_potion","cyd_mgspl:mana_cookie","cyd_mgspl:enderblight","cyd_mgspl:fireball","cyd_mgspl:gravity_vortex","cyd_mgspl:ice_blast","cyd_mgspl:illuminate","cyd_mgspl:levitation","cyd_mgspl:lightning_strike","cyd_mgspl:mineblast","cyd_mgspl:polymorph","cyd_mgspl:push","cyd_mgspl:return","cyd_mgspl:summon_minion","cyd_mgspl:timewarp","cyd_mgspl:whirlwind","cyd_mgspl:witherskulls"];
export const SPELL_ITEMS = ["cyd_mgspl:enderblight","cyd_mgspl:fireball","cyd_mgspl:gravity_vortex","cyd_mgspl:ice_blast","cyd_mgspl:illuminate","cyd_mgspl:levitation","cyd_mgspl:lightning_strike","cyd_mgspl:mineblast","cyd_mgspl:polymorph","cyd_mgspl:push","cyd_mgspl:return","cyd_mgspl:summon_minion","cyd_mgspl:timewarp","cyd_mgspl:whirlwind","cyd_mgspl:witherskulls"];
export const SPELL_CLASSES = [enderblightClass,fireballClass,gravity_vortexClass,ice_blastClass,illuminateClass,levitationClass,lightning_strikeClass,mineblastClass,polymorphClass,pushClass,returnClass,summon_minionClass,timewarpClass,whirlwindClass,witherskullsClass];

export const SPELL_TYPE = {
    INSTANT: "INSTANT",
    CHANNELLING: "CHANNELLING",
    CHARGING: "CHARGING"
};

export function getSpellFromItem(itemname)
{
    return itemname.substring(10);
}

export function getSpellNameFromID(spell_id)
{
    return SPELL_ITEMS[spell_id];
}

export function getSpellClassFromID(spell_id)
{
    return SPELL_CLASSES[spell_id];
}

export function locationToString(location) {
    return "[x:" + Math.round(location.x) + " y:" + Math.round(location.y) + " z:" + Math.round(location.z) + "]"
} 

export function getDistance(a, b) {
    const dx = b.x - a.x;
    const dy = b.y - a.y;
    const dz = b.z - a.z;
    const distance = Math.hypot(dx, dy, dz);
    return distance;
}

export function getLength(location) {
    return Math.hypot(location.x, location.y, location.z);
}

export function locationNormalize(location) {
    const magnitude = getLength(location);
    const DirectionX = location.x / magnitude;
    const DirectionY = location.y / magnitude;
    const DirectionZ = location.z / magnitude;
    return { x: DirectionX, y: DirectionY, z: DirectionZ };
}

export function getBlockMiddle(location)
{
    return {x: location.x + 0.5, y: location.y + 0.5, z: location.z + 0.5};
}

export function isEntityinCone( source_location, target_location, view_vector, deviation_angle)
{
  let target_vector = {x: source_location.x-target_location.x, y: source_location.z-target_location.z, z: 0};

  let dot = (p1, p2)=>  p1.x * p2.x + p1.y * p2.y + p1.z * p2.z;
  let mag = ({x, y, z}) => Math.hypot(x, y, z);

  let angle = Math.acos(dot(view_vector, target_vector) / (mag(view_vector) * mag(target_vector)));
  angle = angle*(180/Math.PI);
  angle = Math.abs(angle-180);

  if(angle < deviation_angle) return true;
  return false;
}