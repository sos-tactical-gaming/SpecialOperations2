/*
 * Author: Legman [S.O.S. Major]
 * Creates a small cargo tower facing away from the FPB its defending with a sentry team.
 *
 * Arguments:
 * 0: fob <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_fob] call SOS_fnc_defenseTower;
 *
 */

private ["_fob", "_position", "_tower", "_group", "_ai", "_roofIndexes", "_zone"];

_fob        = _this select 0;
_position   = [
    position _fob,
    200.0,
    SOS_MISSION_FOB_RADIUS * 0.5,
    2.0,
    0.6,
    3,
    120.0,
    SOS_MISSION_FOB_RADIUS,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

if (count _position == 0) exitWith {false};

_tower = "Land_Cargo_Patrol_V3_F" createVehicle _position;
_tower setDir ([_position, position _fob] call BIS_fnc_dirTo) + ([-45.0, 45.0] call BIS_fnc_randomNum);
[position _tower, 400.0] call SOS_fnc_blacklistArea;

_roofIndexes = [0, 1];

// create roof units
{    
    _ai = createGroup east createUnit ["O_soldierU_F", [0.0, 0.0, 0.0], [], 0, "CAN_COLLIDE"];
    _ai setPosATL (_tower buildingPos _x);
    _ai setUnitPos "UP";
    _ai setFormDir random 360.0;
} forEach _roofIndexes;

_zone = [position _tower, [120.0, 120.0]] call SOS_fnc_createZone;

// create patrols
_position = [
    position _tower,
    0.0,
    120.0,
    2.0,
    2.0
] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

true
