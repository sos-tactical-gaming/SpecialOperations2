/*
 * Author: Legman [S.O.S. Major]
 * Initializes the mission.
 *
 * Arguments:
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_init;
 *
 */
 
[] call SOS_fnc_initInventory;

"SafeZone" setMarkerAlpha 0; //Makes the marker invisible

_position = getMarkerPos "SafeZone";
_size = getMarkerSize "SafeZone";
[_position, _size] call SOS_fnc_createSafeZone;

[sos_ammo1] call SOS_fnc_addVirtualArsenal;

_position   = getMarkerPos "sos_spawn_position1";
_radius     = 2.0;
_delay      = 20.0;
[sos_spawn1, "BasicSpawn", _position, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
[sos_spawn1, "AdvancedSpawn", _position, _radius, _delay, ["PlatoonLeader"]] call SOS_fnc_addVehicleSpawn;
[sos_spawn1, "HeloSpawn", _position, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;