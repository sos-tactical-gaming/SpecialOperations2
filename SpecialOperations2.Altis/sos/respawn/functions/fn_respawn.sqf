/*
 * Author: Legman [S.O.S. Major]
 * Handles respawning.
 *
 * Arguments:
 * 0: newUnit <OBJECT>
 * 1: oldUnit <OBJECT>
 * 2: killer <OBJECT>
 * 3: respawnDelay <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_newUnit, _oldUnit, _killer, 4.0] call SOS_fnc_respawn; 
 */
 
if (count (player getVariable ["sos_respawn_position", []]) == 0) then {
    player setVariable ["sos_respawn_position", getPosATL player];
    player setVariable ["sos_respawn_direction", getDir player];
} else {
    player setPosATL (player getVariable "sos_respawn_position");
    player setDir (player getVariable "sos_respawn_direction");
};
_this spawn BIS_fnc_respawnMenuInventory;
