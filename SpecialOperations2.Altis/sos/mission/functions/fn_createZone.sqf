/*
 * Author: Legman [S.O.S. Major]
 * Creates a unique GAIA zone.
 *
 * Arguments:
 * 0: position <ARRAY>
 * 1: size <ARRAY>
 *
 * Return Value:
 * id <NUMBER>
 *
 * Example:
 * [_position, [200.0, 200.0]] call SOS_fnc_createZone;
 *
 */

private ["_position", "_size"];

_position                   = _this select 0;
_size                       = if (count _this > 1) then {_this select 1} else {2000.0};
SOS_MISSION_UNIQUE_ZONE_ID  = SOS_MISSION_UNIQUE_ZONE_ID + 1;

_marker = createMarker [format ["%1", SOS_MISSION_UNIQUE_ZONE_ID], _position];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerBrush "Solid";
_marker setMarkerAlpha (if (SOS_MISSION_DEBUG) then {0.5} else {0.0});
_marker setMarkerSize [_size select 0, _size select 1];
_marker setMarkerColor "ColorYellow";    

SOS_MISSION_UNIQUE_ZONE_ID
