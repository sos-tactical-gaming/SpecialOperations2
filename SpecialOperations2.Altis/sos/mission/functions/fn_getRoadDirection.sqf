/*
 * Author: Legman [S.O.S. Major]
 * Returns the closest road direction.
 *
 * Arguments:
 * 0: position <ARRAY>
 * 1: radius <NUMBER>
 *
 * Return Value:
 * location <OBJECT>
 *
 * Example:
 * [position, 100.0] call SOS_fnc_getRoadDirection;
 *
 */

private [
    "_position",
    "_radius",
    "_nearRoads",
    "_lowest",
    "_direction",    
    "_distance",
    "_road",
    "_segments"        
];

_position   = _this select 0;
_radius     = _this select 1;

_nearRoads  = _position nearRoads _radius;
_lowest     = 3.4028235e38;
_direction  = random 360.0;
{
    _distance = _x distance _position;
    if (_distance < _lowest) then {
        _road = _x;
        _lowest = _distance;           
    };
} forEach _nearRoads;

if !(isNil "_road") then {
    _segments   = roadsConnectedTo _road;
    _direction  = [_road, _segments select 0] call BIS_fnc_dirTo;
};
_direction

