/*
 * Author: EnquiringStone [S.O.S. Captain]
 * The moment a player steps into a vehicle and is inside the safe zone, the weapons will be disabled. This doesn't
 * work for firing from vehicle. Helicopters and jets while flying also aren't affected.
 *
 * Arguments:
 * Trigger or Marker
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_triggerOrMarker] call SOS_fnc_createVehicleSafeZone;
 *
 */
 
private ["_trigger", "_vehicle", "_position", "_handled", "_storedVariable", "_inArea"];

_trigger = _this select 0;

while {true} do {
	_vehicle = vehicle player;
	_inArea = [getPos player, _trigger] call CBA_fnc_inArea;

	if((_vehicle != player) && (_inArea) && getPos player select 2 < 5) then {
		_storedVariable = _vehicle getVariable "SOS_disabledCarWeapons";
		_handled = if(isNil "_storedVariable") then {false} else {_storedVariable};
		
		if(!(_handled)) then {
			_vehicle addEventHandler ["Fired", {
				deleteVehicle (_this select 6); //Deletes the bullet
				hintC "Do not fire in base!";
				playSound "sos_warning";
			}];
			_vehicle setVariable ["SOS_disabledCarWeapons", true, false];
		};

	} else {
		_handled = if(isNil "_storedVariable") then {false} else {_storedVariable};
		if((_handled) && (_vehicle != player) && !(_inArea)) then {
			_vehicle removeAllEventHandlers "Fired";
			_vehicle setVariable ["SOS_disabledCarWeapons", false, false];
		};
	};
	
	sleep 0.5;
};