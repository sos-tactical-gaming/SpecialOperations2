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
    "_descriptions",
    "_task",
    "_arr",
    "_result"
];

_descriptions   = [missionConfigFile >> "CfgTaskDescriptions"] call BIS_fnc_returnChildren;
_arr            = [];
{
    if (configName _x != "BaseTask" &&
        configName _x != "SideTask" &&
        configName (inheritsFrom _x) == "SideTask") then {
        if !([configName _x] call SOS_fnc_isTaskLimitReached) then {
            _arr pushBack _x;
        };               
    };
} forEach _descriptions;

// do we have any tasks
if (count _arr > 0) then {
    // compile the task name
    _task   = _arr select (floor random count _arr);
    _result = call compile format ["call SOS_fnc_task%1", configName _task];
    _result
} else {
    false
};
