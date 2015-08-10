/*
 * Author: Legman [S.O.S. Major]
 * Reports to clients from the server.
 *
 * Arguments:
 * 0: message <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["hello world"] call SOS_fnc_sendMessage;
 *
 */

private ["_message"];

if (isNil "SOS_MISSION_DEBUG") exitWith {};
if !(SOS_MISSION_DEBUG) exitWith {};

_message    = _this select 0;
_prefix     = "SERVER";

if (!isServer) then {
	_prefix = format ["CLIENT(%1)", (str player)];
};

_message = format ["%1: %2", _prefix, _message];
[_message, "systemChat", true] call BIS_fnc_MP;


