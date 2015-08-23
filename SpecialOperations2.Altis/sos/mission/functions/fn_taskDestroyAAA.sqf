/*
 * Author: Legman [S.O.S. Major]
 * Creates a stationary AAA unit.
 *
 * Arguments:
 *
 * Return Value:
 * success <BOOLEAN>
 *
 * Example:
 *
 */
 
private ["_position", "_tank", "_zone", "_task"];
 
_position = [
    SOS_MISSION_AO_POSITION,
    0.0,
    SOS_MISSION_AO_RADIUS * 0.5,
    2.0,
    2.0,
    0,
    0.0,
    0.0,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

if (count _position == 0) exitWith {false};

// create tank
_tank = ([_position, random 360.0, "O_APC_Tracked_02_AA_F", east] call BIS_fnc_spawnVehicle) select 0;
_tank setFuel 0.0;

// blacklist area
[position _tank, 600.0] call SOS_fnc_blacklistArea;

// set zone to entire ao
group _tank setVariable ["GAIA_ZONE_INTEND", [format ["%1", 1], "MOVE"]];

// create task
_task = ["DestroyAAA", position _tank] call SOS_fnc_addTask;

// create zone
_zone = [position _tank, [120.0, 120.0]] call SOS_fnc_createZone;

// create patrols
_position = [position _tank, 40.0, 120.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

// complete task
[_tank, _task] spawn {    
    _tank   = _this select 0;
    _task   = _this select 1;

    // is the tank dead?
    waitUntil {!alive _tank};
    
    [_task] call SOS_fnc_completeTask;    
};

true
