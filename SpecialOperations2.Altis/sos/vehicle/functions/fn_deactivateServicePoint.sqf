/*
 * Author: Catshannon [S.O.S Major]
 * 
 * Removes Rearm action rather than all vehicle actions.
 *
 * Arguments:
 * 
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call SOS_fnc_deactivateServicePad;
 *
 */
 
private ["_actionId"];

_actionId = player getVariable ["sos_vehicle_service_action_id", nil];

if !(isNil "_actionId") then {
    player removeAction _actionId;
};

