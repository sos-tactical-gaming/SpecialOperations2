/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * Returns a unique marker name.
 *
 * Return Value:
 * name <STRING>
 *
 * Example:
 * _name = [] call SOS_fnc_getMarkerName;
 *
 */
 
if (isNil "SOS_MISSION_MARKER_ID") then {
    SOS_MISSION_MARKER_ID = 0;
};
SOS_MISSION_MARKER_ID = SOS_MISSION_MARKER_ID + 1; 
format ["sos_mission_marker%1", SOS_MISSION_MARKER_ID]
