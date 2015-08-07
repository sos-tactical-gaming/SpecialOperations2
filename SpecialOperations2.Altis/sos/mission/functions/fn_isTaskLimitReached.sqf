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
    "_name",
    "_limit",
    "_count",
    "_result"
];

_name   = _this select 0;
_limit  = getNumber(missionConfigFile >> "CfgTaskDescriptions" >> _name >> "limit");
_count  = 0;
{
    if (_x select 0 == _name) then {
        _count = _count + 1;
    };
} forEach SOS_MISSION_TASKS;

_result = if (_count >= _limit && _limit != -1) then {true} else {false};
_result;
