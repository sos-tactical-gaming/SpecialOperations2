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
    "_fob",
    "_heloPos",
    "_hvtGroup",
    "_hvt",
    "_task",
    "_detected",
    "_helo",
    "_waypoint1",
    "_waypoint2"
 ];
 
_fob = [] call SOS_fnc_getRandomFOB;
_radius     = 6000.0;
_direction  = SOS_MISSION_BASE_POSITION vectorFromTo SOS_MISSION_AO_POSITION;
_direction  = _direction vectorMultiply _radius;
_heloPos = position _fob vectorAdd _direction;

_hvtGroup = createGroup east;
_hvt = _hvtGroup createUnit ["O_officer_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
_hvt removeWeapon "arifle_Katiba_C_ACO_F";
_hvt addMagazineCargo ["6Rnd_45ACP_Cylinder", 3];
_hvt setUnitRank "COLONEL";
_hvtGroup allowFleeing 0;
 
// Setpos in FPB
_hvt setPosATL (_fob buildingPos (floor random count [0, 1, 2, 3]));
_hvt setUnitPos "UP";

// create task
_task = ["EliminateHVT", position _hvt] call SOS_fnc_addTask;

// Complete task 1
[_fob, _heloPos, _hvtGroup, _hvt, _task] spawn {    
    _fob                = _this select 0;
    _heloPos    = _this select 1;
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
            _helo  = ([_heloPos, random 360.0, "O_Heli_Light_02_unarmed_F", east] call BIS_fnc_spawnVehicle) select 0;
            driver _helo setBehaviour "CARELESS";
            _waypoint1 = group _helo addWaypoint [position _hvt, 0];
            _waypoint1 setWaypointType "TR UNLOAD";
            _waypoint1 setWaypointCombatMode "BLUE";
            // Landing and getting in.
            if (alive _hvt) then {
                waitUntil {((isTouchingGround _helo) and ((_helo distance _hvt) < 250)) or (!alive _hvt)};
                if (alive _hvt) then {
                    _hvt setBehaviour "CARELESS";
                    _hvtGroup setSpeedMode "FULL";
                    _hvt setUnitPos "MIDDLE";
                    _hvt assignAsCargo _helo;
                    [_hvt] orderGetIn true;
                } else {breakOut "officerEscape"};
            };        
            //sleep 5; // The sleep is there incase he dies. (because he is assigned to it, it will wait for him before fucking off.)
            // Evac.
            _waypoint2 = group _helo addWaypoint [_heloPos, 0];
            _waypoint2 setWaypointType "MOVE";
            _waypoint2 setWaypointCombatMode "BLUE";
            _waypoint2 setWaypointSpeed "FULL";
            waitUntil {(!alive _hvt) or ((_heloPos distance _helo) < 300)};
            // Finals.
            if (!alive _hvt) then {
                breakOut "officerEscape"
            // failed task.
            } else {
                [_task] call SOS_fnc_failedTask;
				            {deleteVehicle _x} forEach crew _helo;
                deleteVehicle _helo;
            };
        };
    };
    waitUntil {!alive _hvt};
    [_task] call SOS_fnc_completeTask;
};
_hvt 
