/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Gives the given unit a parachute at a certain height
 *
 * Arguments:
 * 0: vehicle <OBJECT>
 * 1: unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_vehicle, _unit] call SOS_fnc_parachute;
 *
 */

private ["_vehicle", "_unit", "_height", "_direction", "_parachute"];
 
_vehicle = _this select 0;
_unit = _this select 1;
_height = 100;
_direction = direction _vehicle;
 
moveOut _unit;
 
waitUntil {((getPos _unit) select 2) <= _height};
if (vehicle _unit != _unit) exitWith {};
_parachute = createVehicle ["Steerable_Parachute_F", position _unit, [], ((_direction)- 5 + (random 10)), 'FLY'];
_parachute setPos (getPos _unit);

_unit assignAsDriver _parachute;
_unit moveInDriver _parachute;