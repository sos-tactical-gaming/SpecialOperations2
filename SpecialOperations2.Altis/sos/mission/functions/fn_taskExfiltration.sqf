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

private ["_task"];

// create task
_task = ["Exfiltrate"] call SOS_fnc_addTask;
[_task] spawn {
    _task   = _this select 0;
    _count  = 0;
    
    // calculate percentage of players outside the ao
    while {(_count / (count allPlayers)) < 0.6} do {
        _count = 0;
        {
            if (position _x distance SOS_MISSION_AO_POSITION > SOS_MISSION_AO_RADIUS) then {
                _count = _count + 1;    
            };       
        } forEach allPlayers;
    };    
    [_task] call SOS_fnc_completeTask;
};

_task

