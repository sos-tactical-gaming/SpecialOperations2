/*
 * Author: Legman [S.O.S. Major]
 * Initializes an S.O.S unit.
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: groupId <STRING>
 * 2: role <STRING> 
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_unit, "Platoon Lead", "PlatoonLeader"] call SOS_fnc_init;
 *
 */
 
private ["_unit", "_groupId", "_role"];

_unit      = _this select 0;
_groupId   = _this select 1;
_role      = _this select 2;

if !(isNull _unit) then {
    group _unit setGroupId [_groupId]; 
    _unit setVariable ["sos_inventory_role", _role, true];     
};

// add rearm points
[position sos_rearm_point1, [5.5, 5.5], "Helicopter"] call SOS_fnc_addServicePoint;
[position sos_rearm_point2, [5.5, 5.5], "Helicopter"] call SOS_fnc_addServicePoint;
[position sos_rearm_point3, [5.5, 5.5], "Plane"] call SOS_fnc_addServicePoint;
[position sos_rearm_point4, [5.5, 5.5], "LandVehicle"] call SOS_fnc_addServicePoint;


[] call SOS_fnc_roleProtection;