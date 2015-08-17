/*
 * Author: Legman [S.O.S. Major]
 * Finds an AO that does not intersect the NATO base.
 *
 * Arguments:
 *
 * Return Value:
 * result <BOOLEAN>
 *
 * Example:
 * [] call SOS_fnc_createAO;
 *
 */

private ["_position"];

SOS_MISSION_AO_POSITION = [];
if (count SOS_MISSION_BASE_POSITION > 0) then {
    // make sure the ao doesn't intersect the base...
    while {count SOS_MISSION_AO_POSITION == 0} do {
        _position = locationPosition ([] call SOS_fnc_getRandomLocation);    
        if (_position distance SOS_MISSION_BASE_POSITION > SOS_MISSION_BASE_RADIUS + SOS_MISSION_AO_RADIUS) then {
            SOS_MISSION_AO_POSITION = _position;
        };
    }; 
} else {
    // or take the first one we get
    _position = locationPosition ([] call SOS_fnc_getRandomLocation);
    SOS_MISSION_AO_POSITION = _position;
};

// create marker
_marker = createMarker [[] call SOS_fnc_getMarkerName, _position];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerBrush "Border";
_marker setMarkerSize [SOS_MISSION_AO_RADIUS, SOS_MISSION_AO_RADIUS];
_marker setMarkerColor "ColorOPFOR";

_position
