/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * 0: vehicle <OBJECT>
 *
 * Return Value:
 * result <BOOLEAN>
 *
 * Example:
 * [_vehicle] call SOS_fnc_canDriveVehicle;
 *
 */
 
if (isDedicated) exitWith {};
waitUntil {!isNull player};

private ["_vehicle", "_result"];

_vehicle    = _this select 0;
_result     = true;

{
    if (typeOf _vehicle in getArray (_x >> "vehicles")) then {
        _result = false;
        if (player getVariable "sos_inventory_role" in getArray (_x >> "roles")) then {
            _result = true;
        };
    };
} forEach ([missionConfigFile >> "SOS_VehicleProtection", 0, false] call BIS_fnc_returnChildren);

_result

