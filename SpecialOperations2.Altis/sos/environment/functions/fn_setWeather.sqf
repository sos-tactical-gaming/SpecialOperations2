/*
 * Author: Catshannon [S.O.S Major]
 * 
 * Sets weather based on the mission parameters.
 * Leaving Fog at 0. its quite specific and can go out of hand.
 *
 */
 
private [
    "_randomValue",
    "_randomFogValue",
    "_randomParam",
    "_overcast",
    "_fog",
    "_rain"
];

if (isServer) then {
    _randomValue        = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100] call BIS_fnc_selectRandom;
    _randomFogValue     = [0, 10, 20] call BIS_fnc_selectRandom;
    _randomParam        = ["RandomWeather", 0] call BIS_fnc_getParamValue;    
    _overcast           = ["Overcast", _randomValue] call BIS_fnc_getParamValue;
    _fog                = ["Fog", _randomFogValue] call BIS_fnc_getParamValue; 
    _rain               = ["Rain", _randomValue] call BIS_fnc_getParamValue;
    
    if (_randomParam == 1) then {
        _overcast   = _randomValue;
        _fog        = _randomFogValue;
        _rain       = _randomValue;
    };

    0 setOvercast (_overcast / 100);
    0 setFog (_fog / 100);
    0 setRain (_rain / 100);
    forceWeatherChange;
};
