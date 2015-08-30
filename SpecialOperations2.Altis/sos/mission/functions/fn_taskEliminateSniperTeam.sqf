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
 
private ["_position", "_group", "_task"];
 
_position = [
    SOS_MISSION_AO_POSITION,
    0.0,
    SOS_MISSION_AO_RADIUS * 0.5,
    1.0,
    20.0,
    0,
    0.0,
    0.0,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

if (count _position == 0) exitWith {false};

// create tank
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_SniperTeam")] call BIS_fnc_spawnGroup;
_group setBehaviour "STEALTH";
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", 1], "NOFOLLOW"]];

// create task
_task = ["EliminateSniperTeam", _position] call SOS_fnc_addTask;

// complete task
[_group, _task] spawn {    
    _group  = _this select 0;
    _task   = _this select 1;       

    // is the tank dead?
    waitUntil {({alive _x} count units _group) == 0};
    
    [_task] call SOS_fnc_completeTask;    
};

true

 



