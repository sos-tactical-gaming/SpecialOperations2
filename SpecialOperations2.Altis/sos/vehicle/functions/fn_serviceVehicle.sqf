/*
 * Repair and Rearm Function.
 * Author: Catshannon [S.O.S Major]
 * 
 * Final Stage of the rearming process (will add conditions for if has full tank vs no ammo ect later on)
 * Repairs, Refuels, Rearms and Removes the action from players vehicle.
 *
 * Arguments:
 *
 * Return Value:
 * Nothing.
 *
 * Example:
 * [] call SOS_fnc_serviceVehicle;
 *
 */

private ["_vehicle", "_actionId"];

_vehicle = vehicle player;

//(Second barrier of this bool) Cant have flying vehicles repairing.
if (!(isTouchingGround _vehicle)) then {
    playSound "sos_warning"; 
    hintSilent format[
        "You must land your %1 before servicing it!",
         getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")
    ];   
    } else {    
    //Security measures (moving everyone out locking) 
    _actionId = driver vehicle player getVariable ["sos_vehicle_service_action_id", nil];
    if !(isNil "_actionId") then {
    driver _vehicle removeAction _actionId;};    
    {moveOut _x} forEach crew _vehicle;
    _vehicle setVehicleLock "LOCKED";
    _vehicle allowDamage False;	
    playSound "sos_confirm";
    titleText ["SERVICING VEHICLE...", "PLAIN",0.3];    
    //Repair Loop.
    if ((damage _vehicle) > 0) then {	
        while {true} do {	   
            scopeName "repairLoop";           
            _vehicle setDamage ((damage _vehicle) - 0.005);
            hintSilent format["Damage: %1", Round ((damage _vehicle) * 100)];
            if ((damage _vehicle) == 0) then {hint "REPAIR COMPLETE"; sleep 1; breakOut "repairLoop";};
            sleep 0.1;           
        };
    };    
    //Refuelling Loop.	
    if ((fuel _vehicle) < 1) then {	
        while {true} do {	   
            scopeName "refuelLoop";    	   
            _vehicle setFuel ((fuel _vehicle) + 0.005);
            hintSilent format["Fuel: %1", Round ((fuel _vehicle) * 100)];
            if ((fuel _vehicle) == 1) then {hint "REFUEL COMPLETE"; sleep 1; breakOut "refuelLoop";};
            sleep 0.1;    	
        };	
    };    
    //Rearming.    
    hint "REARMING...";	    
    if  (_vehicle isKindOf "Helicopter" || _vehicle isKindOf "Plane" || _vehicle isKindOf "Tank") then {    
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

