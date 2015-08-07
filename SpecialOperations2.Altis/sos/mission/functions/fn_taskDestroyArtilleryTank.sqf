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
    position ([] call SOS_fnc_getRandomFOB),
    200.0,
    SOS_MISSION_FOB_RADIUS * 0.5,
    2.0,
    2.0
] call SOS_fnc_findSafePosition;

// create tank
_tank = ([_position, random 360.0, "O_MBT_02_arty_F", east] call BIS_fnc_spawnVehicle) select 0;
_tank setFuel 0.0;

// set zone to entire ao
_zone = 1;
group _tank setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "MOVE"]];

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
