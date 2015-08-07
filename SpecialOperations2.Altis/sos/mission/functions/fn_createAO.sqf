/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * 0: location <OBJECT>
 *
 * Return Value:
 * result <BOOLEAN>
 *
 * Example:
 * [_position, 2000.0] call SOS_fnc_createAO;
 *
 */

private ["_position", "_radius", "_result"];

_position   = _this select 0;
_result     = false;

if (count SOS_MISSION_AO_POSITION == 0) then {
    SOS_MISSION_AO_POSITION = _position;
    _result = true;
    
    _marker = createMarker ["sos_mission_ao_marker", _position];
    _marker setMarkerShape "ELLIPSE";
    _marker setMarkerBrush "Border";
    _marker setMarkerSize [SOS_MISSION_AO_RADIUS, SOS_MISSION_AO_RADIUS];
    _marker setMarkerColor "ColorOPFOR";    
};

_result
