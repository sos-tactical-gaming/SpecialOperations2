/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Enables event listeners when moving into a safe zone.
 *
 * Arguments:
 * 0: unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["_unit"] call SOS_fnc_activateSafeZone;
 *
 */
 
private ["_unit"];
 
_unit = _this select 0;

_unit addEventHandler ["Fired", {
    _unit = _this select 0;
    if(_unit == player) then {
        deleteVehicle (_this select 6); //Deletes the bullet        
        ["DO NOT FIRE IN BASE", "WARNING", "sos_warning"] call SOS_fnc_showHint;  
        
        // punishment
        [[[player, "AmovPercMstpSnonWnonDnon_exercisePushup"], {(_this select 0) playMove (_this select 1);}], "BIS_fnc_spawn", player, false] call BIS_fnc_mp;
    };
}];