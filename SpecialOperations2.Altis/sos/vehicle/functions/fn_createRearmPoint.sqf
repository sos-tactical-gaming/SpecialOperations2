/*
 * Rearm Trigger (Made use of Enquiring Stone's Trigger Spawn)
 * Author: Catshannon [S.O.S Major]
 * Thanks: EnquiringStone [S.O.S. Captain]
 *
 * Creates a Trigger and Helipad for rearming of all vehicles
 * Checks for Fuel, Damage and whether or not you are grounded.
 *
 * Arguments:
 * 0: position <OBJECT>
 * 1: size <ARRAY>
 * 2: Vehicle <STRING>
 * 
 * Example:
 * _position = getMarkerPos "desiredMarker";
 * _size = getMarkerSize "desiredMarker";
 * _vehicleType = "Plane","Helicopter" or "LandVehicle"; ect... (_vehicle isKindOf "Plane")
 * [_position, _size,_vehicleType] call SOS_fnc_createRearmPoint;
 *
 */
 
 private ["_position", "_size"];

_position = _this select 0;
_size = if (count _this > 1) then {_this select 1} else {[5.5, 5.5]};
_vehicleType = _this select 2;


_trigger = createTrigger ["EmptyDetector", _position, false];
_trigger setTriggerArea[_size select 0, _size select 1, 0, false];
_trigger setTriggerActivation["ANY", "PRESENT", true]; // Must be side any due to use of AAF Vehicles.
_trigger setTriggerStatements["this",format ["if (vehicle player isKindOf ""%1"") then {[player] call SOS_fnc_addRearmAction};",_vehicleType], "removeAllActions (vehicle player);"];
"Land_HelipadCircle_F" createVehicle (getPos _trigger);