/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Resets event listeners when moving out of the safe zone.
 *
 * Arguments:
 * 0: unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["_unit"] call SOS_fnc_deactivateSafeZone;
 *
 */
 
private ["_unit"];
 
_unit = _this select 0;
 
_unit removeAllEventHandlers "Fired";