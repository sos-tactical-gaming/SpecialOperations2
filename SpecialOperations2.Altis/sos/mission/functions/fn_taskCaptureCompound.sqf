/*
 * Author: EnquiringStone [S.O.S Captain]
 * Looks for a military compound. Then occupies the buildings with normal and special units. Sets a zone of control using a trigger. The
 * max amount of troops this can spawn is: 37. It usually is around the 20 - 30 depending on the size of the compound.
 *
 * Arguments:
 *
 * Return Value:
 * success <BOOLEAN>
 *
 * Example:
 * call SOS_fnc_taskCaptureCompound;
 * 
 */

private [
    "_allCompounds",
    "_base",
    "_blacklist",
    "_buildingCoverage",
    "_buildingTypes",    
    "_center",
    "_compound",
    "_configName", 
    "_configBuildings",  
    "_first",
    "_group",
    "_helipads",
    "_helipadTypes",
    "_i",
    "_isSpecial",
    "_last",    
    "_marker",
    "_maxPatrols",
    "_maxUnits",   
    "_militaryStructures",    
    "_minBuildings",
    "_occupyBuilding",
    "_occupyDivident",
    "_occupyNumber",    
    "_position",
    "_radius",
    "_randomPos",
    "_task",       
    "_trigger",
    "_units",
    "_unitCount",
    "_vehicle",
    "_vehicles",
    "_zone"
];

_configName         = "Military";
_configBuildings    = [missionConfigFile >> "SOS_BuildingPositions" >> _configName] call BIS_fnc_returnChildren;
_radius             = 100;      // Used to see how many military buildings are within the radius. Used to set the marker and trigger radius
_minBuildings       = 4;        // How many buildings are needed within the radius to be a base
_compound           = [];       // The compound to be captured
_maxUnits           = 25;       // Amount of units that can spawn inside the different buildings

_buildingTypes = []; // What is considered a military building
{
    _buildingTypes pushBack (configName _x);
} forEach _configBuildings;

// Get all military buildings in the AO
_militaryStructures = nearestObjects [SOS_MISSION_AO_POSITION, _buildingTypes, SOS_MISSION_AO_RADIUS];
if (count _militaryStructures == 0) exitWith {false};

// Go through all military building locations to see if there is a group of military buildings. If so, we can conclude that it's some kind of military base
_allCompounds = [];
{
    _position   = getPos _x;
    _base       = nearestObjects [_position, _buildingTypes, _radius];
    
    if (count _base >= _minBuildings) then {
        _allCompounds pushBack _base;
    };
} forEach _militaryStructures;
if (count _allCompounds == 0) exitWith {false};

_compound = _allCompounds call BIS_fnc_selectRandom;

// Sets the % of buildings needed to occupy. And sets the % of how many AI will occupy the same building. Default settings are for a big base
_buildingCoverage   = 60;
_occupyDivident     = 4;    // the higher this number is, the smaller the number of AI that will occupy the same building. This number is being used as a divident against the amount of positions
_maxPatrols         = 3;    // 4 man patrols
_vehicles           = ["O_MRAP_02_gmg_F", "O_MRAP_02_hmg_F", "O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_cannon_F"];

// Small base
if (count _compound <= 6) then {
    _occupyDivident     = 2; 
    _maxPatrols         = 1; 
    _buildingCoverage   = 100; 
    _vehicles           = _vehicles - ["O_APC_Tracked_02_cannon_F", "O_APC_Wheeled_02_rcws_F"];
};

// Medium base
if (count _compound > 6 && count _compound <= 10) then {
    _occupyDivident     = 3; 
    _maxPatrols         = 2; 
    _buildingCoverage   = 80; 
    _vehicles           = _vehicles - ["O_APC_Tracked_02_cannon_F"]; 
}; 

// Spawn units inside buildings
_unitCount  = 0;
_units      = getArray (missionConfigFile >> "SOS_BuildingPositions" >> _configName >> "units");
{
    if (_unitCount > _maxUnits) exitWith {};
    _blacklist = [];
    
    _occupyBuilding = [0, 100] call BIS_fnc_randomInt;
    if (_occupyBuilding <= _buildingCoverage) then {
        private [
            "_building",
            "_class",
            "_positions",
            "_specialUnits",
            "_specialUnitsPositions",
            "_spawnSpecialUnit",
            "_numberOfUnits",
            "_ai",
            "_unoccupiedPos",
            "_randomPos"
        ];
        _building               = _x;
        _class                  = typeOf _building;
        _positions              = getArray (missionConfigFile >> "SOS_BuildingPositions" >> _configName >> _class >> "positions");
        _specialUnits           = getArray (missionConfigFile >> "SOS_BuildingPositions" >> _configName >> _class >> "specialUnits");
        _specialUnitsPositions  = getArray (missionConfigFile >> "SOS_BuildingPositions" >> _configName >> _class >> "specialUnitsPositions");
        _spawnSpecialUnit       = getNumber (missionConfigFile >> "SOS_BuildingPositions" >> _configName >> _class >> "spawnPercentSpecialUnit");
    
        _numberOfUnits = floor ((count _positions) / _occupyDivident);
        if (_numberOfUnits == 0) then {_numberOfUnits = _numberOfUnits + 1};
        for [{_i = 0}, {_i < _numberOfUnits}, {_i = _i + 1}] do {
            _ai = nil;
            _randomPos = nil;
        
            _isSpecial = [0, 100] call BIS_fnc_randomInt;
            if (_isSpecial <= _spawnSpecialUnit) then {
                _ai = createGroup east createUnit [_specialUnits call BIS_fnc_selectRandom, [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
                _randomPos = _specialUnitsPositions call BIS_fnc_selectRandom;
            } else {
                _ai = createGroup east createUnit [_units call BIS_fnc_selectRandom, [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
                _randomPos = _positions call BIS_fnc_selectRandom;
            };
            
            if (_randomPos in _blacklist) then { 
                _unoccupiedPos = _positions - _blacklist;
                _randomPos = _unoccupiedPos call BIS_fnc_selectRandom;
            };
            _ai setPosATL (_building buildingPos _randomPos);
            _ai setUnitPos "UP";
            _ai setDir random 360.0;
            
            _unitCount = _unitCount + 1;
            _blacklist pushBack _randomPos;
        };
    };
} forEach _compound;

// Get middle position of the first and last building inside the base
_first  = position (_compound select 0);
_last   = position (_compound select ((count _compound) - 1));
_center = [
    floor (((floor(_first select 0)) + (floor (_last select 0))) * 0.5),
    floor (((floor(_first select 1)) + (floor (_last select 1))) * 0.5),
    floor ((_first select 2))
];

// Create zone, patrols, vehicles and ambience (things you would expect)
_radius     = _radius + 20;
_zone       = [_center, [_radius, _radius]] call SOS_fnc_createZone;

// Create landed helicopter
_helipadTypes   = ["Land_HelipadCircle_F", "Land_HelipadCivil_F", "Land_HelipadRescue_F", "Land_HelipadSquare_F"];
_helipads       = nearestObjects [_center, _helipadTypes, _radius];
if (count _helipads > 0) then {
    _helicopters    = ["O_Heli_Light_02_F", "O_Heli_Light_02_unarmed_F", "O_Heli_Light_02_v2_F"];
    _helipad        = _helipads call BIS_fnc_selectRandom;
    _vehicle        = ([getPosATL _helipad, getDir _helipad, _helicopters call BIS_fnc_selectRandom, east] call BIS_fnc_spawnVehicle) select 0;
    group _vehicle setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "FOLLOW"]];
};

// Create vehicle
_position   = [_center, 0.0, 50.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
_vehicle    = ([_position, random 360.0, _vehicles call BIS_fnc_selectRandom, east] call BIS_fnc_spawnVehicle) select 0;
group _vehicle setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

// Create Infantry
_groups = ["OIA_InfTeam_AT", "OIA_InfTeam", "OIA_InfTeam_AA"];
for [{_i = 0}, {_i < _maxPatrols}, {_i = _i + 1}] do {
    _position = [_center, 0.0, 100.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
    _group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> _groups call BIS_fnc_selectRandom)] call BIS_fnc_spawnGroup;
    _group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
};

// Create task, marker and trigger
_task = ["CaptureCompound", _center] call SOS_fnc_addTask;

_trigger = createTrigger ["EmptyDetector", _center, false];
_trigger setTriggerArea [_radius, _radius, 0, false];
_trigger setTriggerActivation ["EAST", "PRESENT", true];
_trigger setTriggerStatements [
    "{alive _x} count thisList > 3",
    "",
    format["[%1] call SOS_fnc_completeTask;", _task]
];

true
