/*
 * Author: Legman [S.O.S. Major]
 * A wrapper function for BIS_fnc_findSafePos. After testing it is faster
 * to not use BIS_fnc_isPosBlacklisted as it will only end the search
 * when it has found a safe position potentially meaning we end up with O(n).
 * It is faster to find a point and then check it against a list of circles
 * that represent areas 'n' number of times.
 *
 * Arguments:
 * 0: position <ARRAY>
 * 1: minDistance <NUMBER>
 * 2: maxDistance <NUMBER>
 * 3: objectDistance <NUMBER>
 * 4: maxGradient <NUMBER>
 * 5: roadMode <NUMBER>
 * 6: roadDistanceMin <NUMBER>
 * 7: roadDistanceMax <NUMBER>
 * 8: blacklist <ARRAY>
 * 9: attempts <NUMBER>
 *
 * Return Value:
 * safePosition <ARRAY>
 *
 * Example:
 * [_position, 0.0, 200.0, 2.0, 2.0] call SOS_fnc_findSafePosition;
 *
 */

private [
    "_position",
    "_minDistance",
    "_maxDistance",
    "_objectDistance",
    "_maxGradient",
    "_roadMode",
    "_roadDistanceMin",
    "_roadDistanceMax",
    "_blacklist",
    "_attempts",
    "_safePosition",
    "_temp",
    "_close",
    "_far"
];

_position 			= _this select 0;
_minDistance 		= _this select 1;
_maxDistance 		= _this select 2;
_objectDistance 	= _this select 3;
_maxGradient 		= _this select 4;
_roadMode			= if (count _this > 5) then {_this select 5} else {0};
_roadDistanceMin    = if (count _this > 6) then {_this select 6} else {0.0};
_roadDistanceMax    = if (count _this > 7) then {_this select 7} else {0.0};
_blacklist 			= if (count _this > 8) then {_this select 8} else {[]};
_attempts           = if (count _this > 9) then {_this select 9} else {200};
_safePosition       = [];
_temp               = nil;

while {_attempts > 0 && count _safePosition == 0} do {
	_temp = [
		_position,
		_minDistance,
		_maxDistance,
		_objectDistance,
		0,
		_maxGradient,
        0
	] call BIS_fnc_findSafePos;
	
	switch (_roadMode) do {
		case 0 : {
			_safePosition = _temp;
		};		
		case 1 : {
			if !(isOnRoad _temp) then {
				_safePosition = _temp;
			};
		};
		case 2 : {
			if (isOnRoad _temp) then {
				_safePosition = _temp;
			};
		};
		case 3 : {
			_close  = _temp nearRoads _roadDistanceMin;
            _far    = _temp nearRoads _roadDistanceMax;
			if (count _close == 0 && count _far > 0 && !(isOnRoad _temp)) then {
				_safePosition = _temp;
			};
		};
	};
    
    if (count _safePosition != 0) then {
        {
            if (_safePosition distance (_x select 0) < (_x select 1)) exitWith {
                _safePosition = [];
            };
        } forEach _blacklist;
    };  
	
	_attempts = _attempts - 1;	
};

_safePosition

