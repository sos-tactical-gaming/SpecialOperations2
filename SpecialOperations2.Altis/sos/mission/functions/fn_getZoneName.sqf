/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * Returns a unique zone name.
 *
 * Return Value:
 * name <STRING>
 *
 * Example:
 * _id = [] call SOS_fnc_getZoneName;
 *
 */
 
if (isNil "SOS_MISSION_ZONE_ID") then {
    SOS_MISSION_ZONE_ID = 0;
};
SOS_MISSION_ZONE_ID = SOS_MISSION_ZONE_ID + 1; 
format ["%1", SOS_MISSION_ZONE_ID]
