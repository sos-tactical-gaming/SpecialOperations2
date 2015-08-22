/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * 0: unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 *
 */
 
if !(hasInterface) exitWith {};
 
private ["_unit", "_channelSW", "_channelLR"];
 
_unit          = _this select 0;
_channelSW     = if (count _this > 1) then {_this select 1} else {0};
_channelLR     = if (count _this > 2) then {_this select 2} else {0};
   
_unit addAction ["<t color='#FFFF00'>Reset radio settings</t>", {
    _unit       = _this select 0;
    _channelSW  = _this select 3 select 0;
    _channelLR  = _this select 3 select 1;
    [_unit, _channelSW, _channelLR] call SOS_fnc_resetRadio;
}, [_channelSW, _channelLR], 0.0, false, true, "", "((_target == player) || (_target == vehicle player)) && (call TFAR_fnc_haveSWRadio || call TFAR_fnc_haveLRRadio)"];
