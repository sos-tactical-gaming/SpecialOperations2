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

_marker = createMarker [format ["sos_mission_fob_marker%1", ([] call SOS_fnc_getUniqueMarkerId)], _position];
_marker setMarkerColor "ColorOPFOR";
_marker setMarkerType "o_hq";
_marker setMarkerText format ["FPB %1", toUpper ([count SOS_MISSION_FOB_MARKERS] call SOS_fnc_numberPhonetic)];
_marker setMarkerAlpha 0.0;
SOS_MISSION_FOB_MARKERS pushBack _marker;  

_position
