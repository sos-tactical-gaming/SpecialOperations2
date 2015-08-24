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
    "_waypoint2"
 ];
 
_fpb = [] call SOS_fnc_getRandomFOB;

_chopperPosition = [
    SOS_MISSION_AO_POSITION,
    0.0,
    SOS_MISSION_AO_RADIUS * 5,
    2.0,
    2.0,
    0,
    0.0,
    0.0,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

_hvtGroup = createGroup east;
_hvt = _hvtGroup createUnit ["O_officer_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
setUnitRank "COLONEL";
removeAllWeapons _hvt;
_hvt addMagazineCargoGlobal ["6Rnd_45ACP_Cylinder", 5];
_hvt addWeapon "hgun_Pistol_heavy_02_F";
 
// Setpos in FPB
_hvt setPosATL (_fpb buildingPos (floor random count [0, 1, 2, 3]));
_hvt setUnitPos "UP";

// create task
_task = ["EliminateHVT", position _hvt] call SOS_fnc_addTask;

// Complete task 1
[_fpb, _chopperPosition, _hvtGroup, _hvt, _task] spawn {    
    _fpb                = _this select 0;
    _chopperPosition    = _this select 1;
    _hvtGroup           = _this select 2;
    _hvt                = _this select 3;
    _task               = _this select 4;
    // Fail Task
    while {alive _hvt} do {
        scopeName "officerEscape";
        _detected = _hvt findNearestEnemy _hvt;
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
                waitUntil {((isTouchingGround _chopper) and ((_chopper distance _hvt) < 250)) or (!alive _hvt)};
                if (alive _hvt) then {
                    _hvt setBehaviour "CARELESS";
                    _hvtGroup setSpeedMode "FULL";
                    _hvt setUnitPos "MIDDLE";
                    _hvt assignAsCargo _chopper;
                    [_hvt] orderGetIn true;
                } else {breakOut "officerEscape"};
            };        
            //sleep 5; // The sleep is there incase he dies. (because he is assigned to it, it will wait for him before fucking off.)
            // Evac.
            _waypoint2 = group _chopper addWaypoint [_chopperPosition, 0];
            _waypoint2 setWaypointType "MOVE";
            _waypoint2 setWaypointCombatMode "BLUE";
            _waypoint2 setWaypointSpeed "FULL";
            waitUntil {(!alive _hvt) or ((_fpb distance _chopper) > 10000)};
            // Finals.
            if (!alive _hvt) then {
                breakOut "officerEscape"
            // failed task.
            } else {
                [_task] call SOS_fnc_failedTask;
                deleteVehicle _chopper;
            };
        };
    };
    waitUntil {!alive _hvt};
    [_task] call SOS_fnc_completeTask;
};
_hvt
