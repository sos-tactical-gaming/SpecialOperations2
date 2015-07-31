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
 * _vehicleType = (default = "LandVehicle") "Plane","Helicopter" or "Tank"; ect... (_vehicle isKindOf "Plane")
 * _playerSide = WEST, EAST and GUE (future implementation on perhaps PvP).
 * 
 *[_position, _size, ""] call SOS_fnc_addServicePoint;
 *
 */

private ["_position", "_size", "_vehicleType", "_trigger"];

_position = _this select 0;
_size = if (count _this > 1) then {_this select 1} else {[5.5, 5.5]};
_vehicleType = if (count _this > 2) then {_this select 2} else {"LandVehicle"};


_trigger = createTrigger ["EmptyDetector", _position, false];
_trigger setTriggerArea[_size select 0, _size select 1, 0, false];
_trigger setTriggerActivation["ANY", "PRESENT", true]; // Must be side any due to use of AAF Vehicles.
_trigger setTriggerStatements["vehicle player in thisList",format ["if ((vehicle player isKindOf ""%1"") and (hasInterface)) then {[player] call SOS_fnc_activateServicePoint};",_vehicleType], "[player] call SOS_fnc_deactivateServicePoint"];
"Land_HelipadCircle_F" createVehicle (getPos _trigger);
