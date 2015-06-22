/*
 * Author: Legman [S.O.S. Major]
 * Initializes an S.O.S units inventory.
 *
 * Arguments:
 * 0: unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_unit] call SOS_fnc_addVirtualArsenal;
 *
 */
 
if (isDedicated) exitWith {};
waitUntil {!isNull player};

private ["_unit", "_side", "_role"];

_unit = _this select 0;

_side = side player;
_role = player getVariable "sos_inventory_role";

[_unit, [_side, _role] call SOS_fnc_getVirtualBackpackCargo] call BIS_fnc_addVirtualBackpackCargo;
[_unit, [_side, _role] call SOS_fnc_getVirtualItemCargo] call BIS_fnc_addVirtualItemCargo;
[_unit, [_side, _role] call SOS_fnc_getVirtualMagazineCargo] call BIS_fnc_addVirtualMagazineCargo;
[_unit, [_side, _role] call SOS_fnc_getVirtualWeaponCargo] call BIS_fnc_addVirtualWeaponCargo;
