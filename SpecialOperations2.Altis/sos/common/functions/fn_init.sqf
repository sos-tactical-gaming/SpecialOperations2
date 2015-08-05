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
 
if (!isDedicated) then {        
    [] call SOS_fnc_initInventory;

    // virtual arsenal
    [sos_ammo1] call SOS_fnc_addVirtualArsenal;

    // vehicle spawn points
    _position   = getMarkerPos "sos_spawn_position1";
    _radius     = 2.0;
    _delay      = 20.0;
    [sos_spawn1, "BasicSpawn", _position, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn1, "AdvancedSpawn", _position, _radius, _delay, ["PlatoonLeader"]] call SOS_fnc_addVehicleSpawn;
    [sos_spawn1, "HeloSpawn", _position, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
};

// mission generator 
if (isServer) then {
    [true] spawn SOS_fnc_initMissionGenerator;
    [] call SOS_fnc_setTime;
    [] call SOS_fnc_setWeather;    
};
 