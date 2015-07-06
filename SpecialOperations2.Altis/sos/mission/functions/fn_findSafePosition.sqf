/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 * safePosition <ARRAY>
 *
 * Example:
 *
 */

private [
	"_position",
	"_minDistance",
	"_maxDistance",
	"_objectDistance",
	"_maxGradient",
	"_waterMode",
	"_shoreMode",
	"_roadMode",
	"_roadDistanceMin",
    "_roadDistanceMax",
	"_blacklist",
	"_defaultPosition",
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
_waterMode 			= if (count _this > 5) then {_this select 5} else {0};
_shoreMode 			= if (count _this > 6) then {_this select 6} else {0};
_roadMode			= if (count _this > 7) then {_this select 7} else {0};
_roadDistanceMin    = if (count _this > 8) then {_this select 8} else {0.0};
_roadDistanceMax    = if (count _this > 9) then {_this select 9} else {0.0};
_blacklist 			= if (count _this > 10) then {_this select 10} else {[]};
_defaultPosition 	= if (count _this > 11) then {_this select 11} else {[]};
_attempts           = if (count _this > 12) then {_this select 12} else {100};
_safePosition       = [];
_temp               = nil;

while {_attempts > 0 && count _safePosition == 0} do {
	_temp = [
		_position,
		_minDistance,
		_maxDistance,
		_objectDistance,
		_waterMode,
		_maxGradient,
		_shoreMode,
		_blacklist,
		_defaultPosition
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
	_attempts = _attempts - 1;	
};

_safePosition

