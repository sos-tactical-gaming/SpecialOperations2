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

private ["_position", "_fob", "_position", "_attempts"];

if (count SOS_MISSION_AO == 0) exitWith {};

_position   = [];
_attempts   = 2000;
while {_attempts > 0 && count _position == 0} do {
    _position = [SOS_MISSION_AO select 0, 0.0, (SOS_MISSION_AO select 1) * 0.5, 8.0, 0.1, 0, 0, 3, 120.0, 200.0, [], [], 1] call SOS_fnc_findSafePosition;
    if (count _position != 0) then {
        {
            // check if this fob is too close to others
            if ((getMarkerPos _x) distance _position < 1000.0) exitWith {
                _position = [];
            };
        } forEach SOS_MISSION_FOB_MARKERS;
    };
    _attempts = _attempts - 1;
};

if (count _position != 0) then {
    _marker = createMarker [format ["sos_mission_fob_marker%1", (count SOS_MISSION_FOB_MARKERS) + 1], _position];
    _marker setMarkerColor "ColorOPFOR";
    _marker setMarkerType "o_hq";
    _marker setMarkerText format ["FPB %1", toUpper ([count SOS_MISSION_FOB_MARKERS] call SOS_fnc_numberPhonetic)];

    SOS_MISSION_FOB_MARKERS pushBack _marker;   
};

_position
