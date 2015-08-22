/*
 * Author: Legman [S.O.S. Major]
 * Initializes some extra functionality for TFR.
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: channelSW <Number>
 * 2: channelLR <Number>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_unit, 0, 0] call SOS_fnc_resetRadio;
 *
 */
 
if !(hasInterface) exitWith {};
 
private ["_unit", "_channelSW", "_channelLR"];
 
_unit          = _this select 0;
_channelSW     = if (count _this > 1) then {_this select 1} else {0};
_channelLR     = if (count _this > 2) then {_this select 2} else {0};
   
[_unit, _channelSW, _channelLR] call SOS_fnc_addResetRadioAction;

_unit setVariable ["sos_inventory_radio_channelsw", _channelSW];
_unit setVariable ["sos_inventory_radio_channellr", _channelLR];

_unit addMPEventHandler ["MPRespawn", {
    _unit       = _this select 0;
    _corpse     = _this select 1;
    
    _corpse removeAllMPEventHandlers "MPRespawn";    
    [
        _unit,
        _unit getVariable ["sos_inventory_radio_channelsw", -1],
        _unit getVariable ["sos_inventory_radio_channellr", -1]
    ] call SOS_fnc_addResetRadioAction;
}];
