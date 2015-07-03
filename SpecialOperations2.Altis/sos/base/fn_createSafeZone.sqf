/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Creates a safe zone for the player (WEST ONLY!) at the base marker. Makes the game a bit
 * more idiot proof :)
 *
 * Arguments:
 * 0: position <OBJECT>
 * 1: size <ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_position, _size] call SOS_fnc_createSafeZone;
 *
 */
 
private ["_position", "_size", "_trigger"];

_position = _this select 0;
_size = _this select 1;

_trigger = createTrigger ["EmptyDetector", _position, false];
_trigger setTriggerArea[_size select 0, _size select 1, 0, false];
_trigger setTriggerActivation["WEST", "PRESENT", true];
_trigger setTriggerStatements["player in thisList", "[player] call SOS_fnc_activateSafeZone", "[player] call SOS_fnc_deactivateSafeZone"];



 