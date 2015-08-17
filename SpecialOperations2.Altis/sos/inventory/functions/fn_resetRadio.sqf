/*
 * Author: Legman [S.O.S. Major]
 * Resets the radios settings to default.
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
 
private [
    "_unit",
    "_channelSW",
    "_channelLR",
    "_showHint",
    "_frequencySW",
    "_frequencyLR",
    "_radioSW",
    "_radioLR"
];
 
_unit           = _this select 0;
_channelSW      = if (count _this > 1) then {_this select 1} else {-1};
_channelLR      = if (count _this > 2) then {_this select 2} else {-1};
_showHint       = if (count _this > 3) then {_this select 3} else {true};
_frequencySW    = getArray(missionConfigFile >> "SOS_RadioSettings" >> "Default" >> "frequencySW");
_frequencyLR    = getArray(missionConfigFile >> "SOS_RadioSettings" >> "Default" >> "frequencyLR");

// resets SW channel frequencies
if (call TFAR_fnc_haveSWRadio) then {
    _radioSW = call TFAR_fnc_activeSWRadio;
    for [{_i = 0}, {_i < count _frequencySW}, {_i = _i + 1}] do {
        [_radioSW, _i + 1, str (_frequencySW select _i)] call TFAR_fnc_setChannelFrequency;
    };
    if (_channelSW > -1) then {
        [_radioSW, _channelSW] call TFAR_fnc_setSWChannel;
    };    
};

// resets LR channel frequencies
if (call TFAR_fnc_haveLRRadio) then {
    _radioLR = call TFAR_fnc_activeLRRadio;
    for [{_i = 0}, {_i < count _frequencyLR}, {_i = _i + 1}] do {
        [_radioLR, _i + 1, str (_frequencyLR select _i)] call TFAR_fnc_setChannelFrequency;
    };
    if (_channelLR > -1) then {
        [_radioLR select 0, _radioLR select 1, _channelLR] call TFAR_fnc_setLRChannel;
    };       
};

if (_showHint) then {
    ["RADIO SETTINGS RESET", "INFO"] call SOS_fnc_showHint;
};
