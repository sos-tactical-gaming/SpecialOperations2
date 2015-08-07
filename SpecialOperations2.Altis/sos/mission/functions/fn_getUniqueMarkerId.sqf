/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * Returns a unique id for markers.
 *
 * Return Value:
 * id <NUMBER>
 *
 * Example:
 * _id = [] call SOS_fnc_getUniqueMarkerId;
 *
 */
 
if (isNil "SOS_MISSION_UNIQUE_MARKER_ID") then {
    SOS_MISSION_UNIQUE_MARKER_ID = 0;
};
SOS_MISSION_UNIQUE_MARKER_ID = SOS_MISSION_UNIQUE_MARKER_ID + 1; 
SOS_MISSION_UNIQUE_MARKER_ID
