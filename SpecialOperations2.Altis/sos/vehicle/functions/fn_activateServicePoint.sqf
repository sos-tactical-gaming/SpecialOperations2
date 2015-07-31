/*
 * Checks for Fuel, Damage and touching ground
 * Author: Catshannon [S.O.S Major]
 * 
 * Relays to SOS_fnc_serviceVehicle to perform the rearm.
 *
 * Arguments:
 * 
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_activateServicePad;
 *
 */

private ["_vehicle", "_actionName", "_actionId"];
 
_vehicle = vehicle player;

//Checks for damage, fuel and touching ground (cant move people out of flying choppers, also ammo later on)

if (((damage _vehicle) > 0) or ((fuel _vehicle) < 1)) then {
    _actionId = _vehicle addAction [
        format["Service %1", getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")],
        SOS_fnc_serviceVehicle,
        "",
        1,
        true,
        true,
        "",
        "(_target == vehicle player) and (isTouchingGround vehicle player) and (Player == driver vehicle player)"
    ];
    _vehicle setVariable ["sos_vehicle_service_action_id", _actionId];
};




