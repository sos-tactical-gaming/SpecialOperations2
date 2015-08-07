/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Inits the safe zone(s)
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_initSafeZone;
 *
 */
 
if (isNil "SOS_MISSION_SAFE_ZONES") then {
    SOS_MISSION_SAFE_ZONES = [];
};

//Add markers here to allow for multiple safe zones
SOS_MISSION_SAFE_ZONES pushBack "sos_safe_zone1";

{
	_position   = getMarkerPos _x;
	_size       = getMarkerSize _x;
	[_position, _size] call SOS_fnc_createSafeZone;
} forEach SOS_MISSION_SAFE_ZONES;