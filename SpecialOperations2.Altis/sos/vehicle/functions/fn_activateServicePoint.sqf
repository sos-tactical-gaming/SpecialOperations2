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

private ["_actionId"];

_actionId = player addAction [
    format["Service %1", getText (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "displayName")],
    SOS_fnc_serviceVehicle,
    "",
    1,
    true,
    true,
    "",
    "(isTouchingGround vehicle player) and (Player == driver vehicle player)"
];
player setVariable ["sos_vehicle_service_action_id", _actionId];
