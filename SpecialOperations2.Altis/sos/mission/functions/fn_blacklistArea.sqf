/*
 * Author: Legman [S.O.S. Major]
 * Creates and adds a circle to the area blacklist preventing
 * objects spawning in that area in the future when using SOS_fnc_findSafePosition.
 *
 * Arguments:
 * 0: position <ARRAY>
 * 1: size <ARRAY>
 * 2: array <ARRAY>
 *
 * Return Value:
 * array <ARRAY>
 *
 * Example:
 * [_position, 200.0] call SOS_fnc_blacklistArea;
 *
 */

private ["_position", "_radius"];

_position   = _this select 0;
_radius     = _this select 1;

SOS_MISSION_BLACKLIST pushBack [_position, _radius];
SOS_MISSION_BLACKLIST