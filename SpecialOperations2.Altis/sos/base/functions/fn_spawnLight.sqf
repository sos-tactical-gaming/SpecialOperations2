/*
 * Author: Legman [S.O.S Major]
 * Spawns a light object to provide some lighting to the base.
 * Use GameLogic to position these in the editor.
 *
 * Arguments:
 * position <ARRAY>
 * direction <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_position, 0.0] call SOS_fnc_spawnLight;
 *
 */
 
private ["_position", "_direction", "_light"];

_position   = _this select 0;
_direction  = _this select 1;

if (isServer) then {
    _light = createVehicle ["Land_LampHalogen_F", _position, [], 0.0, "CAN_COLLIDE"];
	_light setDir _direction;
	_light allowDamage false;
};
 