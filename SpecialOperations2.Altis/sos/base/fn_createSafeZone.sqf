/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Creates a safe zone for the player (WEST ONLY!) at the base marker. Makes the game a bit
 * more idiot proof :)
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_createSafeZone;
 *
 */
 
private ["_trigger", "_position", "_activation", "_deactivation"];

_activation = "player addEventHandler ['Fired', {
	deleteVehicle (_this select 6); 
	hintC 'Do not fire at base!';
}]";
_deactivation = "player removeAllEventHandlers 'Fired'";
_position = getMarkerPos "base";

_trigger = createTrigger ["EmptyDetector", _position, false];
_trigger setTriggerArea[250, 250, 0, true];
_trigger setTriggerActivation["WEST", "PRESENT", true];
_trigger setTriggerStatements["player in thisList", _activation, _deactivation];



 