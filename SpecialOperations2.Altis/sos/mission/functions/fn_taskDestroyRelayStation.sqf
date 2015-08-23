/*
 * Author: Legman [S.O.S. Major]
 * Will spawn a relay station nearby a random FPB.
 *
 * Arguments:
 *
 * Return Value:
 * success <BOOLEAN>
 *
 * Example:
 * [] call SOS_fnc_taskDestroyRelayStation;
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

if (count _position == 0) exitWith {false};

// create tower
_tower = createVehicle ["Land_Communication_F", [0.0, 0.0, 0.0], [], 0.0, "NONE"];
_tower setPos _position;
_tower setDir random 360.0;
_tower setDamage 0.5;   // they are fucking tough

// create task
_task = ["DestroyRelayStation", position _tower] call SOS_fnc_addTask;

// complete task
[_tower, _task] spawn {    
    _tower  = _this select 0;
    _task   = _this select 1;

    // is the relay dead?
    waitUntil {!alive _tower};
    
    [_task] call SOS_fnc_completeTask;
};

true
