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

private ["_position", "_size", "_result"];

_position   = _this select 0;
_size       = if (count _this > 1) then {_this select 1} else {2000.0};
_result     = false;

if (count SOS_MISSION_AO == 0) then {
    SOS_MISSION_AO = [_position, _size];
    _result = true;
    
    _marker = createMarker ["sos_mission_ao_marker", _position];
    _marker setMarkerShape "ELLIPSE";
    _marker setMarkerBrush "Border";
    _marker setMarkerSize [_size, _size];
    _marker setMarkerColor "ColorOPFOR";    
};

_result
