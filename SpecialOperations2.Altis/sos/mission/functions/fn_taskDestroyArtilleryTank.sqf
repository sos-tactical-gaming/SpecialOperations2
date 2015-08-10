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
 
private ["_position", "_tank", "_zone", "_task"];
 
_position = [
    SOS_MISSION_AO_POSITION,
    0.0,
    SOS_MISSION_AO_RADIUS,
    2.0,
    2.0
] call SOS_fnc_findSafePosition;

// create tank
_tank = ([_position, random 360.0, "O_MBT_02_arty_F", east] call BIS_fnc_spawnVehicle) select 0;
_tank setFuel 0.0;

// set zone to entire ao
group _tank setVariable ["GAIA_ZONE_INTEND", [format ["%1", 1], "MOVE"]];

// create zone
_zone = [position _tank, [120.0, 120.0]] call SOS_fnc_createZone;

// create patrols
_position = [position _tank, 40.0, 120.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

// create task
_task = ["DestroyArtilleryTank", position _tank] call SOS_fnc_addTask;

// complete task
[_tank, _task] spawn {    
    _tank   = _this select 0;
    _task   = _this select 1;

    // is the tank dead?
    waitUntil {!alive _tank};
    
    [_task] call SOS_fnc_completeTask;
};

_tank
