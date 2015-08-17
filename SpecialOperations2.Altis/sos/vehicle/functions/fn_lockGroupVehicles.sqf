/*
 * Author: Legman [S.O.S. Major]
 * Locks any vehicles in a group that's not white listed within SOS_VehicleLocked.
 *
 * Arguments:
 * 0: group <GROUP>
 *
 * Return Value:
 *
 * Example:
 * [group _unit] call SOS_fnc_lockGroupVehicles;
 *
 */

private ["_group", "_whitelist", "_vehicle"];

_group      = _this select 0;
_whitelist  = getArray (missionConfigFile >> "SOS_VehicleLocked" >> "unlocked");
{
    _vehicle = vehicle _x;
    if (_vehicle != _x) then {
        if !(typeOf _vehicle in _whitelist) then {
            _vehicle lock 3;
        };
    };
} forEach units _group;

