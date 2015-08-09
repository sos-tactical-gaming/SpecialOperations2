/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 * result <BOOLEAN>
 *
 * Example:
 *
 */
 
private ["_debug", "_hq", "_location", "_fob", "_defense", "_position", "_i"];

SOS_MISSION_DEBUG                   = if (count _this > 0) then {_this select 0} else {false};
SOS_MISSION_AO_POSITION             = [];
SOS_MISSION_AO_RADIUS               = 4000.0;
SOS_MISSION_DEFENSES                = [];
SOS_MISSION_FOBS                    = [];
SOS_MISSION_FOB_MARKERS             = [];
SOS_MISSION_FOB_COUNT               = 3;
SOS_MISSION_FOB_DISTANCE            = 1800.0;
SOS_MISSION_FOB_RADIUS              = 1200.0;
SOS_MISSION_BLACKLIST               = [];
SOS_MISSION_TASKS                   = [];
SOS_MISSION_TASK_COUNT              = 6;

// gaia settings
GAIA_CACHE_STAGE_1                  = 1000;
MCC_GAIA_MAX_SLOW_SPEED_RANGE       = 600;
MCC_GAIA_MAX_MEDIUM_SPEED_RANGE     = 4500;
MCC_GAIA_MAX_FAST_SPEED_RANGE       = 80000;
MCC_GAIA_MORTAR_TIMEOUT             = 60;
MCC_GAIA_ATTACKS_FOR_NONGAIA        = false;
MCC_GAIA_AMBIANT                    = true;
MCC_GAIA_AMBIANT_CHANCE             = 20;
MCC_GAIA_TRANSPORT_RESTTIME         = 40;
    
sleep 1.0;
["Creating Mission"] call SOS_fnc_sendMessage;
_hq = createCenter east;

sleep 1.0;
while {true} do {
    _location = [] call SOS_fnc_getRandomLocation;
    [locationPosition _location] call SOS_fnc_createAO;
    [format ["Created AO @%1", locationPosition _location]] call SOS_fnc_sendMessage;
    
    // we are only planning where the fobs will be for future construction
    for [{_i = 0}, {_i < SOS_MISSION_FOB_COUNT}, {_i = _i + 1}] do {
        _position = [] call SOS_fnc_findFOB;        
    };
    
    // failed to meet fob count so we clear the map
    if (count SOS_MISSION_FOB_MARKERS != SOS_MISSION_FOB_COUNT) then {
        SOS_MISSION_AO_POSITION = [];        
        deleteMarker "sos_mission_ao_marker";
        {deleteMarker _x} forEach SOS_MISSION_FOB_MARKERS;        
        SOS_MISSION_FOB_MARKERS = [];        
        SOS_MISSION_UNIQUE_ZONE_ID = 0;        
        ["AO Failed"] call SOS_fnc_sendMessage;
    };
    
    // exit the loop if the ao is active
    if (count SOS_MISSION_AO_POSITION != 0) exitWith {};
};

// create ao zone
[SOS_MISSION_AO_POSITION, [SOS_MISSION_AO_RADIUS, SOS_MISSION_AO_RADIUS]] call SOS_fnc_createZone;
SOS_MISSION_BLACKLIST = [];

// create fobs at planned locations
{
    _fob = [getMarkerPos _x] call SOS_fnc_taskDestroyFPB;
    SOS_MISSION_FOBS pushBack _fob;
    [format ["Created FOB @%1", _position]] call SOS_fnc_sendMessage;  
} forEach SOS_MISSION_FOB_MARKERS;

sleep 1.0;
["Creating Tasks"] call SOS_fnc_sendMessage;

// create tasks
for [{_i = 0}, {_i < SOS_MISSION_TASK_COUNT}, {_i = _i + 1}] do {
    [] call SOS_fnc_createTask;
};

sleep 1.0;
["Creating Defenses"] call SOS_fnc_sendMessage;

// create defenses
{
    for [{_i = 0}, {_i < 5}, {_i = _i + 1}] do {
        _defense = [_x] call SOS_fnc_createTower;
        SOS_MISSION_DEFENSES pushBack _defense;
    };
} forEach SOS_MISSION_FOBS;

sleep 1.0;
["Done"] call SOS_fnc_sendMessage;

// initialize gaia
sleep 1.0;
["Starting GAIA"] call SOS_fnc_sendMessage;
call compile preprocessFile "gaia\gaia_init.sqf";

// check when mission is complete
waitUntil {
    sleep 1.0;
    ([] call SOS_fnc_isMissionComplete)  
};

// create exfiltration task
_task = [] call SOS_fnc_taskExfiltration;

// check when exfiltration is complete
waitUntil {
    sleep 1.0;
    ([[_task] call SOS_fnc_getTaskName] call BIS_fnc_taskCompleted)
};

// end the mission
[[], "SOS_fnc_endMission", true, true] call BIS_fnc_MP;
