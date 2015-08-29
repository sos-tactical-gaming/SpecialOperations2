/*
 * Author: Legman [S.O.S. Major]
 * Creates a random defense within a given FPB's influence.
 *
 * Arguments:
 * 0: fob <OBJECT>
 *
 * Return Value:
 * success <BOOLEAN>
 *
 * Example:
 * [_fob] call SOS_fnc_createDefense; 
 *
 */

private [
    "_fob",
    "_descriptions",
    "_defense",
    "_arr",
    "_result"
];

_fob            = _this select 0;
_descriptions   = [missionConfigFile >> "CfgTaskDescriptions"] call BIS_fnc_returnChildren;
_arr            = [];
{
    if (configName _x != "BaseDefense" &&
        configName (inheritsFrom _x) == "BaseDefense") then {
        if ((random 1.0) < getNumber (_x >> "chance")) then {
            _arr pushBack _x;
        };            
    };
} forEach _descriptions;

// do we have any defense
if (count _arr > 0) then {
    // compile the defense name
    _defense    = _arr select (floor random count _arr);
    _result     = call compile format ["[_fob] call SOS_fnc_defense%1", configName _defense];
    _result
} else {
    false
};
