/*
 * Checks Role and member status and acts accordingly.
 * Author: Catshannon [S.O.S Major]
 * 
 *
 * Arguments:
 * 
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_roleProtection;
 *
 */

waitUntil {!isNull player};

private ["_protectedRoles"];

_protectedRoles = getArray (missionConfigFile >> format ["SOS_ProtectedRoles"] >> "ProtectedRoles" >> "roles");

if (((player getVariable "sos_inventory_role") in _protectedRoles) and (([] call SOS_fnc_isMember) isEqualTo false)) then {
   hintC "This role is for SOS members only please select another role";
   "end1" call BIS_fnc_endMission;
};