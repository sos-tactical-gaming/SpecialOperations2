/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 *
 * Example:
 *
 */

private [
    "_buildingTypes",
    "_cacheIndexes",
    "_groundIndexes",
    "_inside",
    "_center",    
    "_buildings",
    "_building",
    "_i",
    "_cache",
    "_zone",
    "_ai",
    "_group",
    "_position",
    "_task"
];

// types of buildings supported
_buildingTypes = [
    "Land_i_Shed_Ind_F"
];

// building positions for cache placement for each type
_cacheIndexes = [
    [2, 5]
];

// building positions for infantry placement for each type
_groundIndexes = [
    [0, 1, 3, 4]
];

_inside = true;
_center = position ([] call SOS_fnc_getRandomFOB);
_buildings = nearestObjects [_center, _buildingTypes, SOS_MISSION_FOB_RADIUS];
if (count _buildings == 0) then {
    _inside = false;
};

// check the building doesn't already have a cache
if (_inside) then {
    _building = _buildings select (floor random count _buildings);
    if (_building getVariable ["sos_mission_cache", false]) then {
        _inside = false;
    };
};

if (_inside) then {
    // we have found a suitable building so we place it inside at a specific location
    _building setVariable ["sos_mission_cache", true];
    
    // find building index
    _index = 0;
    for [{_i = 0}, {_i < count _buildingTypes}, {_i = _i + 1}] do {
        if (_buildingTypes select _i == typeOf _building) exitWith {_index = _i};       
    };

    // set cache indexes
    _cacheIndexes = _cacheIndexes select _index;

    // set base ground indexes
    _groundIndexes = [_groundIndexes select _index, 2] call SOS_fnc_arrayPickRandom;

    // create cache
    _cache = createVehicle ["Box_East_AmmoVeh_F", [0.0, 0.0, 0.0], [], 0.0, "NONE"];
    _cache setPosATL (_building buildingPos (_cacheIndexes select _index));
    _cache setDir (direction _building);
    _cache enableSimulationGlobal false;
    
    // create zone
    _zone = [position _building, [60.0, 60.0]] call SOS_fnc_createZone;

    // create ground units
    {   
        _ai = createGroup east createUnit ["O_Soldier_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
        _ai setPosATL (_building buildingPos _x);
        _ai setUnitPos "UP";
        _ai setDir random 360.0;
    } forEach _groundIndexes;

    // create patrols
    _position = [position _building, 20.0, 60.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
    _group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
    _group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
} else {
    // there were no suitable buildings so we have to create the cache outside
    _position = [
        _center,
        200.0,
        SOS_MISSION_FOB_RADIUS * 0.5,
        2.0,
        0.4,
        3,
        120.0,
        200.0
    ] call SOS_fnc_findSafePosition;
    _building = createVehicle ["CamoNet_OPFOR_big_F", _position, [], 0.0, "NONE"];
    _building setDir random 360.0;
    
    // create cache
    _cache = createVehicle ["Box_East_AmmoVeh_F", [0.0, 0.0, 0.0], [], 0.0, "NONE"];
    _cache setPos position _building;
    _cache setDir (direction _building);
    _cache enableSimulationGlobal false;
    
    // create zone
    _zone = [position _building, [60.0, 60.0]] call SOS_fnc_createZone;
    
    // create patrols
    _position = [
        position _building,
        20.0,
        60.0,
        2.0,
        2.0
    ] call SOS_fnc_findSafePosition;
    _group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_Sentry")] call BIS_fnc_spawnGroup;
    _group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
    
    _position = [
        position _building,
        20.0,
        60.0,
        2.0,
        2.0
    ] call SOS_fnc_findSafePosition;
    _group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
    _group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
};

// create task
_task = ["DestroyAmmoCache", position _cache] call SOS_fnc_addTask;

// complete task
[_cache, _building, _task] spawn {    
    _cache      = _this select 0;
    _building   = _this select 1;
    _task       = _this select 2;

    // is the cache dead?
    waitUntil {!alive _cache};
    
    sleep 0.4;
    
    // special effects
    hideObjectGlobal _cache;
    _building setDamage 1.0;
    
    for [{_i = 0}, {_i < 5}, {_i = _i + 1}] do {
        _explosion = createVehicle ["R_60mm_HE", position _cache, [], 0.0, "NONE"];
        _explosion setVectorUp [0.0, 0.0, -1.0];
        sleep (random 1.0);
    };
    
    [_task] call SOS_fnc_completeTask;    
};

_cache
