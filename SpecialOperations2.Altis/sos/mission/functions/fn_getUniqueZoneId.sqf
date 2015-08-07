/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * Returns a unique id for zones.
 *
 * Return Value:
 * id <NUMBER>
 *
 * Example:
 * _id = [] call SOS_fnc_getUniqueZoneId;
 *
 */
 
if (isNil "SOS_MISSION_UNIQUE_ZONE_ID") then {
    SOS_MISSION_UNIQUE_ZONE_ID = 0;
};
SOS_MISSION_UNIQUE_ZONE_ID = SOS_MISSION_UNIQUE_ZONE_ID + 1; 
SOS_MISSION_UNIQUE_ZONE_ID
