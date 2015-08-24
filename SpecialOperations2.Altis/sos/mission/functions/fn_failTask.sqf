/*
 * Author: Catshannon [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 * result <BOOLEAN>
 *
 * Example:
 *
 */
 
 private ["_id"];
 
 _id    = _this select 0;
 _task  = format ["sos_mission_task%1", _id + 1];
[_task, "FAILED", true] call BIS_fnc_taskSetState;
