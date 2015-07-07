/*
 * Author: Legman [S.O.S. Major]
 * Returns a random location from the current CfgWorld.
 *
 * Arguments:
 *
 * Return Value:
 * location <OBJECT>
 *
 * Example:
 * [] call SOS_fnc_getRandomLocation;
 *
 */

private [
    "_children",
    "_config",
    "_type",
    "_postion",
    "_location"
];

_children   = [configFile >> "CfgWorlds" >> worldName >> "Names", true, true] call BIS_fnc_returnChildren;
_config     = _children select random count _children;
_type       = getText (_config >> "type");
_position   = getArray (_config >> "position");
_location   = nearestLocation [_position, _type];
_location
