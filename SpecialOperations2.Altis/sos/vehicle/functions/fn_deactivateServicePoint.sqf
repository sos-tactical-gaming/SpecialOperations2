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

_vehicle = vehicle player;

_actionId = _vehicle getVariable "sos_vehicle_service_id";
_vehicle removeAction _actionId;





