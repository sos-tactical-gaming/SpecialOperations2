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

 
_vehicle = vehicle player;
_actionName = format["Service %1", getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]; //Would be unbearably huge.
//Checks for damage, fuel and touching ground (cant move people out of flying choppers, also ammo later on)

<<<<<<< HEAD

if (((damage _vehicle) > 0) or ((fuel _vehicle) < 1)) then {
_vehicle addAction [_actionName , SOS_fnc_rearmAction, "",1,true,true,"","(!(player == vehicle player)) and (isTouchingGround vehicle player)"];
=======
if ((((damage _vehicle) > 0) or ((fuel _vehicle) < 1)) and (isTouchingGround _vehicle)) then {
_vehicle addAction [format["Service %1", getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")] , SOS_fnc_rearmAction];
>>>>>>> 83bff23247289a0949ace4f262eb19442fedcab6
};


