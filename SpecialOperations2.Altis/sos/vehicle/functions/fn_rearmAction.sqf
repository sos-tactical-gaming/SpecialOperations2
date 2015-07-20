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
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_rearmAction;
 *
 */

_vehicle = vehicle player;   
_vehicleCrew = crew _vehicle;
_action = _this select 2;
_vehicleName = format["Service %1", getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")];

if !(isTouchingGround _vehicle) then {playSound "sos_confirm"; hint format["You must land your %1 to repair it!", _vehicleName]} else {


    //Security measures (moving everyone out locking and making invincible and removing action)    

    {moveOut _x} forEach _vehicleCrew;
    _vehicle removeAction _action;
    _vehicle setVehicleLock "LOCKED";
    _vehicle allowDamage False;	
    playSound "sos_confirm";


    titleText ["SERVICING VEHICLE...", "PLAIN",0.3];
   
    //Repair Loop.

    if ((damage _vehicle) > 0) then {
	
        while {true} do {
	   
            scopeName "repairLoop";
            _damagePercent = (damage _vehicle) * 100;
            _repairAmount = (damage _vehicle) - 0.01;
    	   
            _vehicle setDamage _repairAmount;
            hintSilent format["Damage: %1", Round _damagePercent];
            if ((damage _vehicle) == 0) then {hint "REPAIR COMPLETE"; sleep 1; breakOut "repairLoop";};
            sleep 0.1;
            
        };
    
    };
    
    //Refuelling Loop.
	
    if ((fuel _vehicle) < 1) then {
	
        while {true} do {
	   
            scopeName "reFuelLoop";
            _fuelPercent = (fuel _vehicle) * 100;
            _addFuelAmount = (fuel _vehicle) + 0.01;
    	   
            _vehicle setFuel _addFuelAmount;
            hintSilent format["Fuel: %1", Round _fuelPercent];
            if ((fuel _vehicle) == 1) then {hint "REFUEL COMPLETE"; sleep 1; breakOut "reFuelLoop";};
            sleep 0.1;
    	
        };	

    };
    
    //Rearming. (in the process for making a check for ammo (not simple!))

    hint "REARMING...";	
    
    if (_vehicle isKindOf "Plane" || _vehicle isKindOf "Helicopter") then {
    
        sleep 15;_vehicle setVehicleAmmo 1;
    
    } else {
        
        sleep 7.5;_vehicle setVehicleAmmo 1;
        
    };
    
    hintSilent "REARMING COMPLETE";
    Sleep 1;
	
    //Undoing security and notifying player of completion.
    
    hint "VEHICLE SERVICING COMPLETE";
    _vehicle setVehicleLock "UNLOCKED";
    _vehicle allowDamage True;	
    playSound "sos_confirm";

};

