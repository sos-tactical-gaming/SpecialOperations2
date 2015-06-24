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

[sos_ammo1] call SOS_fnc_addVirtualArsenal;

[sos_spawn1, "BasicSpawn", getMarkerPos "sos_spawn_position1", 2.0, 20.0, []] call SOS_fnc_addVehicleSpawn;
[sos_spawn1, "AdvancedSpawn", getMarkerPos "sos_spawn_position1", 2.0, 20.0, ["PlatoonLeader"]] call SOS_fnc_addVehicleSpawn;
 