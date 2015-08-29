/*
 * Author: Legman [S.O.S. Major]
 * Creates a FOB at a given position.
 *
 * Arguments:
 * 0: position <POSITION>
 *
 * Return Value:
 * fob <OBJECT>
 *
 * Example:
 * _fob = [_position] call SOS_fnc_createFOB;
 *
 */

private [
    "_position",
    "_fob",
    "_zone",
    "_group",
    "_ai",
    "_groundIndexes",
    "_roofIndexes",
    "_id"
];

_position   = _this select 0;
_id         = count SOS_MISSION_FOBS;

_fob = "Land_Cargo_HQ_V3_F" createVehicle _position;
_fob setDir ([_position, 120.0] call SOS_fnc_getRoadDirection);
[position _fob, 400.0] call SOS_fnc_blacklistArea;

_zone = [position _fob, [SOS_MISSION_FOB_RADIUS * 0.2, SOS_MISSION_FOB_RADIUS * 0.2]] call SOS_fnc_createZone;

_groundIndexes  = [[0, 1, 2, 3, 9, 10, 11, 12], 3] call SOS_fnc_arrayPickRandom;
_roofIndexes    = [[4, 5, 6, 7, 8], 4] call SOS_fnc_arrayPickRandom;

// create ground units
{   
    _ai = createGroup east createUnit ["O_soldierU_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
    _ai setPosATL (_fob buildingPos _x);
    _ai setUnitPos "UP";
    _ai setFormDir random 360.0;
} forEach _groundIndexes;

// create roof units
{    
    _ai = createGroup east createUnit ["O_soldierU_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
    _ai setPosATL (_fob buildingPos _x);
    _ai setUnitPos "UP";
    _ai setFormDir random 360.0;
} forEach _roofIndexes;

// create defense
_position = [position _fob, 10.0, SOS_MISSION_FOB_RADIUS * 0.2, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam_AA")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 10.0, SOS_MISSION_FOB_RADIUS * 0.2, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad_Weapons")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 10.0, SOS_MISSION_FOB_RADIUS * 0.2, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Mechanized" >> "OIA_MechInf_Support")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

// create patrols
_zone = [position _fob, [SOS_MISSION_FOB_RADIUS, SOS_MISSION_FOB_RADIUS]] call SOS_fnc_createZone;

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OI_reconTeam")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam_AA")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfAssault")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfAssault")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

// quads
_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_ai = ([_position, random 360.0, "O_Quadbike_01_F", east] call BIS_fnc_spawnVehicle) select 0;
group _ai setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_ai = ([_position, random 360.0, "O_Quadbike_01_F", east] call BIS_fnc_spawnVehicle) select 0;
group _ai setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_ai = ([_position, random 360.0, "O_Quadbike_01_F", east] call BIS_fnc_spawnVehicle) select 0;
group _ai setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

// truck
_position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_ai = ([_position, random 360.0, "O_Truck_02_transport_F", east] call BIS_fnc_spawnVehicle) select 0;
group _ai setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "FOLLOW"]];

// chance to spawn ifrit or btr or tank
if (random 1.0 < 0.8) then {
    _position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
    _ai = ([_position, random 360.0, "O_MRAP_02_hmg_F", east] call BIS_fnc_spawnVehicle) select 0;
    group _ai setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
    
    _position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
    _ai = ([_position, random 360.0, "O_MRAP_02_hmg_F", east] call BIS_fnc_spawnVehicle) select 0;
    group _ai setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
} else {
    _position = [position _fob, 200.0, 400.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
    _ai = ([_position, random 360.0, "O_APC_Tracked_02_cannon_F", east] call BIS_fnc_spawnVehicle) select 0;
    group _ai setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
};

// create task
_task = ["DestroyFPB", position _fob] call SOS_fnc_addTask;

// complete task
[_fob, _task] spawn {    
    _fob    = _this select 0;
    _task   = _this select 1;
    
    waitUntil {!alive _fob};
    
    [_task] call SOS_fnc_completeTask;
};
 
_fob
