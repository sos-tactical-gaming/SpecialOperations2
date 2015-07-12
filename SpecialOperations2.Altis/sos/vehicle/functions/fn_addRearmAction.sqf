/*
 * Checks for Fuel, Damage and touching ground
 * Author: Catshannon [S.O.S Major]
 * 
 * Relays to SOS_fnc_rearmAction to perform the rearm.
 *
 *
 * Arguments:
 * 
 * 
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_addRearmAction;
 *
 */

 
_veh = vehicle player;
_vehType = typeOf _veh;

//Checks for damage, fuel and touching ground (cant move people out of flying choppers, also ammo later on)

if ((((getDammage _veh) > 0) or ((fuel _veh) < 0.99)) and (isTouchingGround _veh)) then {
_veh addAction [format["Service %1", getText (configFile >> "CfgVehicles" >> _vehType >> "displayName")] , SOS_fnc_rearmAction];
};


