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

private [
    "_fob",
    "_position",
    "_bunker",
    "_hmg",
    "_zone",
    "_group"
];

_fob        = _this select 0;
_position   = [
    position _fob,
    200.0,
    SOS_MISSION_FOB_RADIUS * 0.5,
    2.0,
    0.1,
    3,
    80.0,
    180.0,
    SOS_MISSION_BLACKLIST
] call SOS_fnc_findSafePosition;

if (count _position == 0) exitWith {false};

_bunker = "Land_BagBunker_Small_F" createVehicle _position;
_bunker setDir ([_position, position _bunker] call BIS_fnc_dirTo) + ([-45.0, 45.0] call BIS_fnc_randomNum);

_worldPos = _bunker modelToWorld [0.2, 0.0, 0.0];
_position set [0, _worldPos select 0];
_position set [1, _worldPos select 1];

_hmg = ([_position, 0.0, "O_HMG_01_high_F", east] call BIS_fnc_spawnVehicle) select 0;
_hmg setFormDir direction _bunker;
[position _bunker, 400.0] call SOS_fnc_blacklistArea;

_zone = [position _bunker, [120.0, 120.0]] call SOS_fnc_createZone;

// create patrols
_position = [
    position _bunker,
    0.0,
    120.0,
    2.0,
    2.0
] call SOS_fnc_findSafePosition;
_group = [_position, EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
_group setVariable ["GAIA_ZONE_INTEND", [format ["%1", _zone], "NOFOLLOW"]];

true
