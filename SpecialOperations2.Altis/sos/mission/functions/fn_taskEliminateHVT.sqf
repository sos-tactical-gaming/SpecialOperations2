/*
 * Author: Catshannon [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 *
 * Example:
 *
 */

 private [
    "_fpb",
    "_chopperPosition",
    "_hvtGroup",
    "_hvt",
    "_task",
    "_detected",
    "_chopper",
    "_waypoint1",
    "_trigger",
    "_waypoint2"
 ];
 
_fpb = [] call SOS_fnc_getRandomFOB;

_chopperPosition = [
    SOS_MISSION_AO_POSITION,
    0.0,
    SOS_MISSION_AO_RADIUS * 7,
    2.0,
    2.0,
    0,
    0.0,
    0.0,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

_hvtGroup = createGroup east;
_hvt = _hvtGroup createUnit ["O_officer_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
 
// Setpos in FPB
_hvt setPosATL (_fpb buildingPos (floor random count [0, 1, 2, 3]));

// create task
_task = ["EliminateHVT", position _hvt] call SOS_fnc_addTask;

// Fail Task
while {alive _hvt} do {
    _detected = _hvt findNearestEnemy _hvt;
    scopeName "officerEscape";
    sleep 0.5;
    // Has he noticed you?
    if (!isNull _detected) then {
        _chopper  = ([_chopperPosition, random 360.0, "O_Heli_Light_02_unarmed_F", east] call BIS_fnc_spawnVehicle) select 0;
        driver _chopper setBehaviour "CARELESS";
        _waypoint1 = group _chopper addWaypoint [position _hvt, 0];
        _waypoint1 setWaypointType "TR UNLOAD";
        _waypoint1 setWaypointCombatMode "BLUE";      
        // Landing and getting in.
        if (alive _hvt) then {
            waitUntil {(isTouchingGround _chopper) and ((_chopper distance _hvt) < 100)};
            _hvt setBehaviour "CARELESS";
            _hvt assignAsCargo _chopper; 
            [_hvt] orderGetIn true;
        };
        sleep 25; // The sleep is there incase he dies. (because he is assigned to it, it will wait for him before fucking off.)
        // Evac.
        _waypoint2 = group _chopper addWaypoint [_chopperPosition, 0];
        _waypoint2 setWaypointType "MOVE";
        _waypoint2 setWaypointCombatMode "BLUE";
        _waypoint2 setWaypointSpeed "FULL";
        // Finals.
        if (alive _hvt) then {
            waitUntil {(_fpb distance _hvt) > 10000};
            //[_task] call SOS_fnc_failedTask; need to make.
            deleteVehicle _chopper;
            hideObjectGlobal _hvt;
        // failed task.
        } else {
            waitUntil {(_fpb distance _chopper) > 10000};
            deleteVehicle _chopper;
        };
        breakOut "officerEscape";
    };
};

// Complete task
[_hvt, _task] spawn {    
    _hvt    = _this select 0;
    _task   = _this select 1;

    // Has he been killed?
    waitUntil {!alive _hvt};
    [_task] call SOS_fnc_completeTask;    
};
_hvt

