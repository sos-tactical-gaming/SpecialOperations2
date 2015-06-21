/*
 * Author: Legman [S.O.S. Major]
 * Initializes an S.O.S units inventory.
 *
 * Arguments:
 * 0: side <SIDE>
 * 1: role <STRING>
 *
 * Return Value:
 * Array
 *
 * Example:
 * [_unit] call SOS_fnc_initInventory;
 *
 */

private ["_side", "_role", "_config", "_weapons"];

_side   = _this select 0;
_role   = _this select 1;

_result = [];

_config = missionConfigFile >> format ["SOS_%1VirtualArsenal", _side] >> format ["%1", _role];
_weapons = getArray (_config >> "weapons"); 
{
    _config = missionConfigFile >> format ["SOS_%1VirtualWeaponCargo", _side] >> _x;
    _items = getArray (_config >> "items");
    {
        _result pushBack _x;
    } forEach _items;
} forEach _weapons;

_result

