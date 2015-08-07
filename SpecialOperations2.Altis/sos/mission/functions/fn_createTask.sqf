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
    "_arr"
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

_task = _arr select (floor random count _arr);
call compile format ["[] call SOS_fnc_task%1", configName _task];




