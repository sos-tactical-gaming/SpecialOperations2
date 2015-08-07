/*
 * Author: Legman [S.O.S. Major]
 * Returns a random location from the current CfgWorld.
 *
 * Arguments:
 * 0: whitelist <ARRAY>
 *
 * Return Value:
 * location <OBJECT>
 *
 * Example:
 * [] call SOS_fnc_getRandomLocation;
 *
 */

private [
    "_whitelist",
    "_children",
    "_config",
    "_type",
    "_postion",
    "_location"
];

_whitelist  = if (count _this > 0) then {_this select 0} else {[]};
_children   = [configFile >> "CfgWorlds" >> worldName >> "Names", true, true] call BIS_fnc_returnChildren;
_config     = _children select random count _children;
_type       = getText (_config >> "type");
_position   = getArray (_config >> "position");
_location   = nearestLocation [_position, _type];
_location
