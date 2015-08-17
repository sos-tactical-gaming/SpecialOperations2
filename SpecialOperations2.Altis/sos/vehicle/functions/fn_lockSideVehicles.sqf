/*
 * Author: Legman [S.O.S. Major]
 * Locks all vehicles on a side.
 *
 * Arguments:
 *
 * Return Value:
 *
 * Example:
 * [east] call SOS_fnc_lockSideVehicles;
 *
 */

private ["_side", "_whitelist"];

_side       = _this select 0;
_whitelist  = getArray (missionConfigFile >> "SOS_VehicleLocked" >> "unlocked");
{
    if (side _x == _side) then {
        if !(_x in _whitelist) then {
            _x lock 3;
        };
    };
} forEach vehicles;

