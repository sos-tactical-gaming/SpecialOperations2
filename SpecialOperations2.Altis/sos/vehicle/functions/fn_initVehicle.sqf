/*
 * Author: Legman [S.O.S. Major]
 * Initializes an S.O.S unit.
 *
 * Arguments:
 * 0: vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_vehicle] call SOS_fnc_initVehicle;
 *
 */
 
private ["_vehicle"];

_vehicle = _this select 0;

clearMagazineCargoGlobal    _vehicle;
clearWeaponCargoGlobal      _vehicle;
clearItemCargoGlobal        _vehicle;
clearBackpackCargoGlobal    _vehicle;

_vehicle setVariable ["sos_vehicle_can_drive", [_this select 0] call SOS_fnc_canDriveVehicle];
_vehicle addEventHandler ["GetIn", {
    _vehicle = _this select 0;
    if !(_vehicle getVariable ["sos_vehicle_can_drive", true]) then {
        if (_vehicle getCargoIndex player == -1) then {
            moveOut player;
        };
    };
}];
