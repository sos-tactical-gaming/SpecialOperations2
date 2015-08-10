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
 
private [
    "_position",
    "_tower",
    "_task"
];

_position = [
    position ([] call SOS_fnc_getRandomFOB),
    10.0,
    100.0,
    2.0,
    10.0,
    1
] call SOS_fnc_findSafePosition;

// create tower
_tower = createVehicle ["Land_Communication_F", [0.0, 0.0, 0.0], [], 0.0, "NONE"];
_tower setPos _position;
_tower setDir random 360.0;

// create task
_task = ["DestroyRelayStation", position _tower] call SOS_fnc_addTask;

// complete task
[_tower, _task] spawn {    
    _tower  = _this select 0;
    _task   = _this select 1;

    // is the cache dead?
    waitUntil {!alive _tower};
    
    [_task] call SOS_fnc_completeTask;
};

_tower
