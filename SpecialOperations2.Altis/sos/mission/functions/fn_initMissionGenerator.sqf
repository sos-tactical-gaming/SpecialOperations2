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
 
private ["_debug", "_hq", "_location", "_fob", "_fobs", "_position", "_i"];

SOS_MISSION_DEBUG           = if (count _this > 0) then {_this select 0} else {false};
SOS_MISSION_AO              = [];
SOS_MISSION_FOBS            = [];
SOS_MISSION_FOB_MARKERS     = [];
SOS_MISSION_UNIQUE_ZONE_ID  = 0;

// gaia settings
GAIA_CACHE_STAGE_1				    = 1000;
MCC_GAIA_MAX_SLOW_SPEED_RANGE       = 600;
MCC_GAIA_MAX_MEDIUM_SPEED_RANGE     = 4500;
MCC_GAIA_MAX_FAST_SPEED_RANGE       = 80000;
MCC_GAIA_MORTAR_TIMEOUT			    = 300;
MCC_GAIA_ATTACKS_FOR_NONGAIA	    = false;
MCC_GAIA_AMBIANT				    = true;
MCC_GAIA_AMBIANT_CHANCE				= 20;
MCC_GAIA_TRANSPORT_RESTTIME		    = 40;
    
sleep 1.0;

["Creating Mission"] call SOS_fnc_sendMessage;
_hq = createCenter east;

sleep 1.0;
while {true} do {
    _location = [] call SOS_fnc_getRandomLocation;
    [locationPosition _location, 4000.0] call SOS_fnc_createAO;
    [format ["Created AO @%1", locationPosition _location]] call SOS_fnc_sendMessage;
    
    // we are only planning where the fobs will be for future construction
    for [{_i = 0}, {_i < 3}, {_i = _i + 1}] do {
        _position = [] call SOS_fnc_planFOB;
        if (count _position != 0) then {
            [format ["Planned FOB @%1", _position]] call SOS_fnc_sendMessage;
        };            
    };
    
    // failed to meet fob count so we clear the map
    if (count SOS_MISSION_FOB_MARKERS != 3) then {
        SOS_MISSION_AO = [];
        deleteMarker "sos_mission_ao_marker";
        {deleteMarker _x} forEach SOS_MISSION_FOB_MARKERS;
        SOS_MISSION_FOB_MARKERS = [];
        ["AO Failed"] call SOS_fnc_sendMessage;
    };
    
    // exit the loop if the ao is active
    if (count SOS_MISSION_AO != 0) exitWith {};
};
{
    _fob = [getMarkerPos _x] call SOS_fnc_createFOB;
    SOS_MISSION_FOBS pushBack _fob;
    [format ["Created FOB @%1", _position]] call SOS_fnc_sendMessage;
} forEach SOS_MISSION_FOB_MARKERS;

sleep 1.0;
["Done"] call SOS_fnc_sendMessage;

// initialize gaia
sleep 1.0;
["Starting GAIA"] call SOS_fnc_sendMessage;
[SOS_MISSION_AO select 0, [4000.0, 4000.0]] call SOS_fnc_createZone;
{[position _x, [800.0, 800.0]] call SOS_fnc_createZone} forEach SOS_MISSION_FOBS;

call compile preprocessFile "gaia\gaia_init.sqf";
