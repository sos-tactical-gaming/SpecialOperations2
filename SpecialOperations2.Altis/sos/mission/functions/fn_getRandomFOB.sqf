/*
 * Author: Legman [S.O.S. Major]
 * Returns a random FOB.
 *
 * Arguments:
 *
 * Return Value:
 * unit <OBJECT>
 *
 * Example:
 * _fob = [] call SOS_fnc_getRandomFOB;
 *
 */

private ["_fob"];

_fob = SOS_MISSION_FOBS select (floor random count SOS_MISSION_FOBS);
_fob
