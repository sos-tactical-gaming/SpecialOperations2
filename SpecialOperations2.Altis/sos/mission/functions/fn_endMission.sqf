/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 *
 * Example:
 *
 */

["Mission Complete"] call SOS_fnc_sendMessage;

sleep 4.0;
playMusic "EventTrack02_F_EPA";
sleep 38.0;

["END1", true] call BIS_fnc_endMission;

