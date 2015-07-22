/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Creates a message with the given params
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
 * [_message, _type, _sound] call SOS_fnc_showMessage;
 *
 */
 
_message = _this select 0;
_type = _this select 1;
_sound = _this select 2;

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

playSound _sound;