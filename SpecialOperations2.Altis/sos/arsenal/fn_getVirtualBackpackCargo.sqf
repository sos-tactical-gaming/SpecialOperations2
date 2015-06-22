/*
 * Author: Legman [S.O.S. Major]
 * Returns an array of backpacks for a particular side & role.
 *
 * Arguments:
 * 0: side <SIDE>
 * 1: role <STRING>
 *
 * Return Value:
 * result <ARRAY>
 *
 * Example:
 * [_side, _role] call SOS_fnc_getVirtualBackpackCargo;
 *
 */
 
private ["_side", "_role", "_config", "_result"];

_side   = _this select 0;
_role   = _this select 1;

_result = [];
_config = missionConfigFile >> format ["SOS_%1VirtualArsenal", _side] >> format ["%1", _role];
{
    _config = missionConfigFile >> format ["SOS_%1VirtualBackpackCargo", _side] >> _x;
    {
        _result pushBack _x;
    } forEach getArray (_config >> "items");
} forEach getArray (_config >> "backpacks");

_result
