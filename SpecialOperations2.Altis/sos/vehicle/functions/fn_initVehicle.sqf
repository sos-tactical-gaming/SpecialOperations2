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

//Checks if the vehicle is firing from within a safe zone
if(!([] call SOS_fnc_isMember)) then {
	_vehicle addEventHandler ["Fired", {
		{
			_inArea = [getPosATL player, _x] call CBA_fnc_inArea;
			_flying = getPosATL player select 2 > 5;
			if(_inArea && !_flying) then {
				deleteVehicle (_this select 6);
				["Do not fire in base!", 
				"WARNING", 
				"sos_warning"] call SOS_fnc_showMessage;
			};
		} forEach SOS_MISSION_SAFE_ZONES;
	}];
};
