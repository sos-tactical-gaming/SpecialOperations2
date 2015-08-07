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
	[] call SOS_fnc_initSafeZone;
    
    // add rearm points
    [position sos_rearm_point1, [1.0, 1.0], "Helicopter"];
    [position sos_rearm_point2, [1.0, 1.0], "Helicopter"];

    // virtual arsenal
    [sos_ammo1] call SOS_fnc_addVirtualArsenal;
    [sos_ammo2] call SOS_fnc_addVirtualArsenal;
    [sos_ammo3] call SOS_fnc_addVirtualArsenal;
    [sos_ammo4] call SOS_fnc_addVirtualArsenal;

    // vehicle spawn points
    _radius     = 2.0;
    _delay      = 30.0;    
    [sos_spawn1, "Basic", position sos_spawn_position1, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn1, "Advanced", position sos_spawn_position1, _radius, _delay, ["PlatoonLeader", "GhostLeader", "GhostReconLeader"]] call SOS_fnc_addVehicleSpawn;
    
    [sos_spawn2, "Basic", position sos_spawn_position2, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn2, "Advanced", position sos_spawn_position2, _radius, _delay, ["PlatoonLeader", "GhostLeader", "GhostReconLeader"]] call SOS_fnc_addVehicleSpawn;

    [sos_spawn3, "Basic", position sos_spawn_position3, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn3, "TransportHelo", position sos_spawn_position3, _radius, _delay, ["ReaperPilot"]] call SOS_fnc_addVehicleSpawn;

    [sos_spawn4, "Basic", position sos_spawn_position4, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn4, "AttackHelo", position sos_spawn_position4, _radius, _delay, ["ReaperPilot"]] call SOS_fnc_addVehicleSpawn;
    
    [sos_spawn6, "Basic", position sos_spawn_position6, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn6, "FixedWing", position sos_spawn_position6, _radius, _delay, ["HavocPilot"]] call SOS_fnc_addVehicleSpawn;    

    [sos_logistics_spawn1, "AmmoDrop", position sos_spawn_logistics_position1, _radius, _delay, ["PlatoonLeader", "GhostLeader", "GhostReconLeader"]] call SOS_fnc_addLogisticsSpawn;
    [sos_logistics_spawn1, "MedicSupplyDrop", position sos_spawn_logistics_position1, _radius, _delay, ["PlatoonLeader", "GhostLeader", "GhostReconLeader"]] call SOS_fnc_addLogisticsSpawn;
};

// mission generator 
if (isServer) then {
    [true] spawn SOS_fnc_initMissionGenerator;
    [] call SOS_fnc_setTime;
    [] call SOS_fnc_setWeather;    
};
 