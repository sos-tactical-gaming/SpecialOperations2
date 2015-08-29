/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 * 0: fob <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 *
 */

private [
    "_fob",
    "_center",
    "_radius",
    "_count",
    "_attempts",
    "_position",
    "_mine",
    "_marker"
];

_fob        = _this select 0;
_center     = [
    position _fob,
    SOS_MISSION_FOB_RADIUS * 0.6,
    SOS_MISSION_FOB_RADIUS * 0.8,
    2.0,
    0.2,
    3,
    120.0,
    300.0,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

if (count _center == 0) exitWith {false};

_mines      = [];
_radius     = 400.0;
_count      = 0;
_attempts   = 100;
while {_count < 24 && _attempts > 0} do {
    _position = [
        _center,
        0.0,
        _radius,
        1.0,
        1.0,
        1  
    ] call SOS_fnc_findSafePosition;
    if (count _position != 0) then {
        _mine = createVehicle ["APERSMine", _position, [], 0, "NONE"];   
        _mines pushBack _mine;
        
        _marker = createMarker [[] call SOS_fnc_getMarkerName, position _mine];
        _marker setMarkerType "MinefieldAP";
        _marker setMarkerAlpha (if (SOS_MISSION_DEBUG) then {0.5} else {0.0});
        _count = _count + 1;
    };    
    _attempts = _attempts - 1;   
};

// create signs
_count      = 0;
_attempts   = 100;
while {_count < 5 && _attempts > 0} do {
    _position = [
        _center,
        0.0,
        _radius,
        1.0,
        0.1,
        1  
    ] call SOS_fnc_findSafePosition;    
    if (count _position != 0) then {
        _sign = createVehicle ["Land_Sign_Mines_F", _position, [], 0, "NONE"];
        _sign setDir random 360.0;
        _sign allowDamage false;
        _count = _count + 1;
    };    
    _attempts = _attempts - 1; 
};
[_center, _radius * 2.0] call SOS_fnc_blacklistArea;

true
