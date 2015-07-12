/*
 * Repair and Rearm Function
 * Author: Catshannon [S.O.S Major]
 * 
 * Final Stage of the rearming process (will add conditions for if has full tank vs no ammo ect later on)
 * Repairs, Refuels, Rearms and Removes the action from players vehicle
 *
 * Arguments:
 * 
 * 
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_rearmAction;
 *
 */

_veh = vehicle player;   
_vehCrew = crew _veh;
_action = _this select 2;
_vehDamage = damage _veh;


//Check if you are in that Vehicle. (incase of multiple Vehicles being on the pad, and more complicated absurdities)

if (player isKindOf "man") then {playSound "sos_warning"; titleText ["You must be in the vehicle to repair it", "PLAIN",0.3];} else {

    //Security measures (moving everyone out locking and making invincible and removing action)
    
    {moveOut _x} forEach _vehCrew;
    _veh removeAction _action;
    _veh setVehicleLock "LOCKED";
    _veh allowDamage False;	
    playSound "sos_confirm";

    titleText ["VEHICLE IS NOW SERVICING...", "PLAIN",0.3];
   
    //Repair Loop.

	if ((damage _veh) > 0) then {
	
    	while {true} do {
	   
            scopeName "repairLoop";
            _damagePercent = (damage _veh) * 100;
            _repairAmount = (damage _veh) - 0.01;
    	   
            _veh setDamage _repairAmount;
            hintSilent format["Damage: %1", Round _damagePercent];
            if ((damage _veh) == 0) then {hintSilent "REPAIR COMPLETE"; sleep 1; breakOut "repairLoop";};
    	    sleep 0.1;
    	
		};
    
	};
    
    //Refuelling Loop.
	
    if ((fuel _veh) < 0.99) then {
	
        while {true} do {
	   
            scopeName "reFuelLoop";
            _fuelPercent = (fuel _veh) * 100;
            _addFuelAmount = (fuel _veh) + 0.01;
    	   
            _veh setFuel _addFuelAmount;
            hintSilent format["Fuel: %1", Round _fuelPercent];
            if ((fuel _veh) == 1) then {hintSilent "REFUEL COMPLETE"; sleep 1; breakOut "reFuelLoop";};
            sleep 0.1;
    	
        };	
	
    };
    
    //Rearming. (in the process for making a check for ammo (not simple!))

    hintSilent "REARMING...";	
    sleep 7.5; 
    _veh setVehicleAmmo 1;
    hintSilent "REARMING COMPLETE";
    Sleep 1;
	
    //Undoing security and notifying player of completion.
    
    hintSilent "VEHICLE SERVICING COMPLETE";
    _veh setVehicleLock "UNLOCKED";
    _veh allowDamage True;	
    playSound "sos_confirm";

};
