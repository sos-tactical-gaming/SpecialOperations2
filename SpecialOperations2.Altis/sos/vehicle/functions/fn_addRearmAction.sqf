/*
 * Checks for Fuel, Damage and touching ground
 * Author: Catshannon [S.O.S Major]
 * 
 * Relays to SOS_fnc_rearmAction to perform the rearm.
 *
 * Arguments:
 * 
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_addRearmAction;
 *
 */

 
_vehicleicle = vehicle player;

//Checks for damage, fuel and touching ground (cant move people out of flying choppers, also ammo later on)

if ((((damage _vehicle) > 0) or ((fuel _vehicle) < 0.99)) and (isTouchingGround _vehicle)) then {
_vehicle addAction [format["Service %1", getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")] , SOS_fnc_rearmAction];
};


