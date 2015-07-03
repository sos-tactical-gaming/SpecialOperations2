/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Creates a safe zone for the player (WEST ONLY!) at the base marker. Makes the game a bit
 * more idiot proof :)
 *
 * Arguments:
 * 0: position <OBJECT>
 * 1: x <INTEGER>
 * 2: y <INTEGER>
 * 3: angle <INTEGER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_position, _x, _y] call SOS_fnc_createSafeZone;
 *
 */
 
private ["_trigger", "_position", "_x", "_y", "_angle"];

_position = _this select 0;
_x = _this select 1;
_y = _this select 2;
_angle = _this select 3;

_trigger = createTrigger ["EmptyDetector", _position, false];
_trigger setTriggerArea[_x, _y, _angle, true];
_trigger setTriggerActivation["WEST", "PRESENT", true];
_trigger setTriggerStatements["player in thisList", "[player] call SOS_fnc_activateSafeZone", "[player] call SOS_fnc_deactivateSafeZone"];



 