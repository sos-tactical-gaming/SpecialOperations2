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
 
private ["_taskCount", "_completeCount", "_result", "_i"];

_taskCount      = 0;
_completeCount  = 0;
_result         = false;

for [{_i = 0}, {_i < count SOS_MISSION_TASKS}, {_i = _i + 1}] do {
    // is task not optional?
    if ((SOS_MISSION_TASKS select _i) select 4 == 0) then {
        _taskCount = _taskCount + 1;
        if ([[_i] call SOS_fnc_getTaskName] call BIS_fnc_taskCompleted) then {
            _completeCount = _completeCount + 1;
        };
    };
};

if (_taskCount > 0 && _completeCount >= _taskCount) then {
    _result = true;
};
_result

