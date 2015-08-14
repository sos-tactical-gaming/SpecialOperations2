/*
 * Author: EnquiringStone [S.O.S Captain]
 *
 * Looks for a military compound. Then occupies the buildings with normal and special units. Sets a zone of control using a trigger. The
 * max amount of troops this can spawn is: 37. It usually is around the 20 - 30 depending on the size of the compound.
 *
 * Arguments:
 *
 * Return Value:
 *
 * Example:
 *
 */
private [
    "_configName", 
    "_configBuildings", 
    "_radius", 
    "_minBuildings", 
    "_base", 
    "_maxUnits",
    "_buildingTypes",
    "_unitCount",
    "_allBases",
    "_militaryStructures",
    "_buildingCoverage",
    "_occupyNumber",
    "_maxPatrols",
    "_units",
    "_beginPos",
    "_endPos",
    "_pos",
    "_zone",
    "_marker",
    "_trg"
];

_configName = "Military";
_configBuildings = [missionConfigFile >> "CfgBuildings" >> _configName] call BIS_fnc_returnChildren;
_radius = 100; //Used to see how many military buildings are within the radius. Used to set the marker and trigger radius
_minBuildings = 4; //How many buildings are needed within the radius to be a base
_base = []; //The base to be captured
_maxUnits = 25; //Amount of units that can spawn inside the different buildings

_buildingTypes = []; //What is considered a military building
{
    _buildingTypes pushBack (configName _x);
} forEach _configBuildings;

//Get all military buildings in the AO
_militaryStructures = nearestObjects [SOS_MISSION_AO_POSITION, _buildingTypes, SOS_MISSION_AO_RADIUS];
if(count _militaryStructures == 0) exitWith {};

//Go through all military building locations to see if there is a group of military buildings. If so, we can conclude that it's some kind of military base
_allBases = [];
{
    _position = getPos _x;
    _compound = nearestObjects [_position, _buildingTypes, _radius];
    
    if(count _compound >= _minBuildings) then {
        _allBases pushBack _compound;
    };
} forEach _militaryStructures;
if(count _allBases == 0) exitWith {};

_base = _allBases call BIS_fnc_selectRandom;

//Sets the % of buildings needed to occupy. And sets the % of how many AI will occupy the same building. Default settings are for a big base
_buildingCoverage = 60;
_occupyNumber = 4; // the higher this number is, the smaller the number of AI that will occupy the same building. This number is being used as a divident against the amount of positions
_maxPatrols = 2; //4 man patrols
if(count _base <= 8) then {_occupyNumber = 2; _maxPatrols = 1; _buildingCoverage = 100;}; //Small base
if(count _base > 8 && count _base <= 15) then {_occupyNumber = 3; _maxPatrols = 2; _buildingCoverage = 80;}; //Medium base

//Spawn units inside buildings
_unitCount = 0;
_units = getArray (missionConfigFile >> "CfgBuildings" >> _configName >> "units");
{
    if(_unitCount > _maxUnits) exitWith {};
    
    _occupyBuilding = [0, 100] call BIS_fnc_randomInt;
    if (_occupyBuilding <= _buildingCoverage) then {
        _building = _x;
        _class = typeOf _building;
        _positions = getNumber (missionConfigFile >> "CfgBuildings" >> _configName >> _class >> "positions");
        _specialUnits = getArray (missionConfigFile >> "CfgBuildings" >> _configName >> _class >> "specialUnits");
        _specialUnitsPositions = getArray (missionConfigFile >> "CfgBuildings" >> _configName >> _class >> "specialUnitsPositions");
        _spawnSpecialUnit = getNumber (missionConfigFile >> "CfgBuildings" >> _configName >> _class >> "spawnPercentSpecialUnit");
    
        _numberOfUnits = floor (_positions / _occupyNumber);
        if(_numberOfUnits == 0) then {_numberOfUnits = _numberOfUnits + 1};
        for [{_i = 0}, {_i < _numberOfUnits}, {_i = _i + 1}] do {
            _ai = nil;
            _randomPos = nil;
        
            _isSpecial = [0, 100] call BIS_fnc_randomInt;
            if(_isSpecial <= _spawnSpecialUnit) then {
                _ai = createGroup east createUnit [_specialUnits call BIS_fnc_selectRandom, [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
                _randomPos = _specialUnitsPositions call BIS_fnc_selectRandom;
            } else {
                _ai = createGroup east createUnit [_units call BIS_fnc_selectRandom, [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
                _randomPos = [0, (_positions - 1)] call BIS_fnc_randomInt;
            };
            _ai setPosATL (_building buildingPos _randomPos);
            _ai setUnitPos "UP";
            _ai setDir random 360.0;
            
            _unitCount = _unitCount + 1;
        };
    };
} forEach _base;

//Get middle position of the first and last building inside the base
_beginPos = position (_base select 0);
_endPos = position (_base select ((count _base) - 1));

_centerX = floor (((floor(_beginPos select 0)) + (floor (_endPos select 0))) / 2);
_centerY = floor (((floor(_beginPos select 1)) + (floor (_endPos select 1))) / 2);
_centerZ = floor ((_beginPos select 2));
_pos = [_centerX, _centerY, _centerZ];

//Create zone and patrols
_radius = _radius + 20;

_zone = [_pos, [_radius, _radius]] call SOS_fnc_createZone;
_groups = ["OIA_InfTeam_AT", "OIA_InfTeam", "OIA_InfTeam_AA"];
for [{_i = 0}, {_i < _maxPatrols}, {_i = _i + 1}] do {
    _position = [_pos, 0.0, 50.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
    _group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> _groups call BIS_fnc_selectRandom)] call BIS_fnc_spawnGroup;
    _group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];
};

//Create task, marker and trigger
_task = ["CaptureCompound", _pos] call SOS_fnc_addTask;

_marker = createMarker ["SOS_MISSION_ASSAULT_BASE", _pos];
_marker setMarkerColor "ColorEAST";
_marker setMarkerShape "ELLIPSE";
_marker setMarkerSize [_radius, _radius];

_trg = createTrigger ["EmptyDetector", _pos, false];
_trg setTriggerArea [_radius, _radius, 0, false];
_trg setTriggerActivation ["EAST", "PRESENT", true];
_trg setTriggerStatements ["{alive _x} count thisList > 5", "", format["[%1] call SOS_fnc_completeTask;", _task]];