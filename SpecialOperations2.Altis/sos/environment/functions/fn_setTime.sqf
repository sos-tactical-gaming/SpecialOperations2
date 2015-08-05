/*
 * Author: Catshannon [S.O.S Major]
 * 
 * Sets Time based on the mission parameters. (Random by Default)
 *
 */

private ["_randomParam", "_timeAcceleration", "_randomValue", "_startingTimeHour"];

if (isServer) then {
    _randomParam = ["RandomTime", 0] call BIS_fnc_getParamValue;
    _timeAcceleration = ["Time_Acceleration", 1] call BIS_fnc_getParamValue;
    _randomValue = [0, 4, 5, 6, 7, 8, 12, 17, 19, 20, 21] call BIS_fnc_selectRandom;
    _startingTimeHour = ["Mission_Time", _randomValue] call BIS_fnc_getParamValue;
    if (_randomParam == 1) then {_startingTimeHour = _randomValue};
   
    setDate [2035, 7, 6, _startingTimeHour, 0];
    setTimeMultiplier _timeAcceleration;
};
