/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Creates a hint with the given params
 *
 * Arguments:
 * 0: message <STRING>
 * 1: type <STRING>
 * 2: sound <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_message, _type, _sound] call SOS_fnc_showHint;
 *
 */
private ["_message", "_type", "_sound"];

_message = _this select 0;
_type = if (count _this > 1) then {_this select 1} else {"INFO"};
_sound = if (count _this > 2) then {_this select 2} else {nil};

switch(_type) do {
	case "SILENT": {
		hintSilent _message;
	};
	
	case "INFO": {
		hint _message;
	};
	
	case "WARNING": {
		hintC _message;
	};
};

if(!isNil "_sound") then {
	playSound _sound;
};
