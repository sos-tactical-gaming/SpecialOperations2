/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 * position <ARRAY>
 *
 * Example:
 *
 */

private ["_position"];

if (count SOS_MISSION_AO_POSITION == 0) exitWith {};

_position = [
    SOS_MISSION_AO_POSITION,
    0.0,
    SOS_MISSION_AO_RADIUS * 0.5,
    8.0,
    0.1,
    3,
    120.0,
    200.0,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

if (count _position == 0) exitWith {[]};

[_position, SOS_MISSION_FOB_DISTANCE] call SOS_fnc_blacklistArea;
SOS_MISSION_FOB_POSITIONS pushBack _position;  

_position
