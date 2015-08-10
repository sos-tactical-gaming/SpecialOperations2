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
	[position sos_rearm_point1, [5.5, 5.5], "Helicopter"] call SOS_fnc_addServicePoint;
	[position sos_rearm_point2, [5.5, 5.5], "Helicopter"] call SOS_fnc_addServicePoint;
	[position sos_rearm_point3, [5.5, 5.5], "Plane"] call SOS_fnc_addServicePoint;
	[position sos_rearm_point4, [5.5, 5.5], "LandVehicle"] call SOS_fnc_addServicePoint;
    
    // virtual arsenal
    [sos_ammo1] call SOS_fnc_addVirtualArsenal;
    [sos_ammo2] call SOS_fnc_addVirtualArsenal;
    [sos_ammo3] call SOS_fnc_addVirtualArsenal;
    [sos_ammo4] call SOS_fnc_addVirtualArsenal;
    [sos_ammo5] call SOS_fnc_addVirtualArsenal;

    // vehicle spawn points
    _radius     = 2.0;
    _delay      = 30.0;    
    [sos_spawn1, "Basic", position sos_spawn_position1, direction sos_spawn_position1, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn1, "Advanced", position sos_spawn_position1, direction sos_spawn_position1, _radius, _delay, ["PlatoonLeader", "GhostLeader", "GhostReconLeader"]] call SOS_fnc_addVehicleSpawn;
    [sos_spawn1, "Armor", position sos_spawn_position1, direction sos_spawn_position1, _radius, _delay, ["AnvilCommander"]] call SOS_fnc_addVehicleSpawn;
    [sos_spawn1, "GroundUAV", position sos_spawn_position1, direction sos_spawn_position1, _radius, _delay, ["GhostReconLeader"], true] call SOS_fnc_addVehicleSpawn;
    
    [sos_spawn2, "Basic", position sos_spawn_position2, direction sos_spawn_position2, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn2, "Advanced", position sos_spawn_position2, direction sos_spawn_position2, _radius, _delay, ["PlatoonLeader", "GhostLeader", "GhostReconLeader"]] call SOS_fnc_addVehicleSpawn;
    [sos_spawn2, "Armor", position sos_spawn_position2, direction sos_spawn_position2, _radius, _delay, ["AnvilCommander"]] call SOS_fnc_addVehicleSpawn;
    [sos_spawn2, "GroundUAV", position sos_spawn_position2, direction sos_spawn_position2, _radius, _delay, ["GhostReconLeader"], true] call SOS_fnc_addVehicleSpawn;

    [sos_spawn3, "Basic", position sos_spawn_position3, direction sos_spawn_position3, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn3, "TransportHelo", position sos_spawn_position3, direction sos_spawn_position3, _radius, _delay, ["ReaperPilot"]] call SOS_fnc_addVehicleSpawn;

    [sos_spawn4, "Basic", position sos_spawn_position4, direction sos_spawn_position4, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn4, "AttackHelo", position sos_spawn_position4, direction sos_spawn_position4, _radius, _delay, ["ReaperPilot"]] call SOS_fnc_addVehicleSpawn;
    [sos_spawn4, "AdvancedHelo", position sos_spawn_position4, direction sos_spawn_position4, _radius, _delay, ["ReaperPilot"], true] call SOS_fnc_addVehicleSpawn;
    
    [sos_spawn6, "Basic", position sos_spawn_position6, direction sos_spawn_position6, _radius, _delay, []] call SOS_fnc_addVehicleSpawn;
    [sos_spawn6, "FixedWing", position sos_spawn_position6, direction sos_spawn_position6, _radius, _delay, ["HavocPilot"], true] call SOS_fnc_addVehicleSpawn;    
    [sos_spawn6, "AirUAV", position sos_spawn_position6, direction sos_spawn_position6, _radius, _delay, ["GhostReconLeader"], true] call SOS_fnc_addVehicleSpawn;    
};

// mission generator 
if (isServer) then {
    [] call SOS_fnc_setTime;
    [] call SOS_fnc_setWeather; 
    [false] spawn SOS_fnc_initMissionGenerator;       
};
 
