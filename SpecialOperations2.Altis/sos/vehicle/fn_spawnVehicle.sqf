/*
 * Author: Legman [S.O.S. Major]
 * Spawns a vehicle safely in a specified area.
 *
 * Arguments:
 * 0: name <STRING>
 * 1: position <ARRAY>
 * 2: radius <NUMBER>
 * 3: direction <NUMBER>
 *
 * Return Value:
 * vehicle <OBJECT>
 *
 * Example:
 * [_name, _position, _radius] call SOS_fnc_spawnVehicle;
 *
 */
 
if (isDedicated) exitWith {};
waitUntil {!isNull player};

private ["_name", "_position", "_radius", "_direction", "_vehicle"];

_name           = _this select 0;
_position       = _this select 1;
_radius         = _this select 2;
_direction      = _this select 3;

_vehicle = createVehicle [_name, _position, [], _radius, "NONE"];
_vehicle setDir _direction;

// clear vehicle inventory
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

_vehicle
