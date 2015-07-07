/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 *
 * Example:
 *
 */

private ["_position", "_fob", "_group", "_ai", "_groundIndexes", "_roofIndexes", "_id"];

_position = _this select 0;

_id = count SOS_MISSION_FOBS;

_fob = "Land_Cargo_HQ_V3_F" createVehicle _position;
_fob setDir ([_position, 120.0] call SOS_fnc_getRoadDirection);

_group          = createGroup east;
_groundIndexes  = [[0, 1, 2, 3, 9, 10, 11, 12], 3] call SOS_fnc_arrayPickRandom;
_roofIndexes    = [[4, 5, 6, 7, 8], 4] call SOS_fnc_arrayPickRandom;

// create ground units
{   
    _ai = _group createUnit ["O_Soldier_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
    _ai setPosATL (_fob buildingPos _x);
    _ai setUnitPos "UP";
} forEach _groundIndexes;

// create roof units
{    
    _ai = _group createUnit ["O_Soldier_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
    _ai setPosATL (_fob buildingPos _x);
    _ai setUnitPos "UP";
} forEach _roofIndexes;
doStop (units _group);

// create patrols
_position = [position _fob, 200.0, 400.0, 2.0, 2.0, 0, 0, 0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _id + 2], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0, 0, 0, 0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _id + 2], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0, 0, 0, 0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _id + 2], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0, 0, 0, 0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _id + 2], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0, 0, 0, 0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Mechanized" >> "OIA_MechInf_Support")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _id + 2], "NOFOLLOW"]];

// create task
[
    west,
    [format ["sos_mission_task_destroyfob%1", _id + 1]],
    ["WIP", format ["Destroy FPB %1", [_id] call SOS_fnc_numberPhonetic],
    format ["DESTROY FPB %1", [_id] call SOS_fnc_numberPhonetic]],
    nil,
    "CREATED"
] call BIS_fnc_taskCreate;

_fob
