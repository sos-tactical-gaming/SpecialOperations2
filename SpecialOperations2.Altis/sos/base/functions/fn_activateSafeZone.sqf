/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Enables event listeners when moving into a safe zone.
 *
 * Arguments:
 * 0: unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["_unit"] call SOS_fnc_activateSafeZone;
 *
 */
 
private ["_unit"];
 
_unit = _this select 0;

_unit addEventHandler ["Fired", {
	deleteVehicle (_this select 6); //Deletes the bullet
	["Do not fire in base!", "WARNING", "sos_warning"] call SOS_fnc_showHint;
}];