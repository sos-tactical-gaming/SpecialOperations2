/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * 0: array <ARRAY>
 * 1: max <NUMBER> (OPTIONAL)
 *
 * Return Value:
 * result <ARRAY>
 *
 * Example:
 * [_list, 2] call SOS_fnc_arrayPickRandom;
 *
 */

private ["_array", "_max", "_result", "_i"];

_array      = + (_this select 0);
_max        = if (count _this > 1) then {(count _array) min (_this select 1)} else {count _array};
_result     = [];

while {count _result < _max} do {
    _i = floor random count _array;
    _result pushBack (_array select _i);
    _array deleteAt _i;
};

_result


