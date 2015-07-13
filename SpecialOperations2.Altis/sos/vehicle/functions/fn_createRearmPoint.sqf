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
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_position, _size] call SOS_fnc_createRearmPoint;
 *
 */
 
 private ["_position", "_size"];

_position = _this select 0;
_size = if (count _this > 1) then {_this select 1} else {[5.5, 5.5]};

_reArm = createTrigger ["EmptyDetector", _position, false];
_reArm setTriggerArea[_size select 0, _size select 1, 0, false];
_reArm setTriggerActivation["ANY", "PRESENT", true]; // Must be side any due to use of AAF Vehicles.
_reArm setTriggerStatements["this", "[player] call SOS_fnc_addRearmAction", "removeAllActions (vehicle player);"];
_reArmHelipad = "Land_HelipadCircle_F" createVehicle getMarkerPos "sos_rearm_zone1";
