/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Spawns a box in a specified area.
 * Thanks: Legman [S.O.S. Mayor]
 *
 * Arguments:
 * 0: name <STRING>
 * 1: position <ARRAY>
 * 2: radius <NUMBER>
 * 3: direction <NUMBER>
 * 4: contents <ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_name, _position, _radius, _direction, _contents] call SOS_fnc_spawnBox;
 *
 */
 
if (isDedicated) exitWith {};
waitUntil {!isNull player};

private ["_name", "_position", "_radius", "_direction", "_contents", "_box"];

_name           = _this select 0;
_position       = _this select 1;
_radius         = _this select 2;
_direction      = _this select 3;
_contents       = _this select 4;

_box = createVehicle [_name, _position, [], _radius, "NONE"];
_box setDir _direction;
_box allowDamage false;

clearMagazineCargoGlobal    _box;
clearWeaponCargoGlobal      _box;
clearItemCargoGlobal        _box;
clearBackpackCargoGlobal    _box;

{
    _class      = _x select 0;
    _amount     = _x select 1;
    _type       = _x select 2;
    
    switch(_type) do {
        case "MAGAZINE": {
            _box addmagazinecargoGlobal [_class, _amount];
        };
        case "WEAPON": {
            _box addWeaponCargoGlobal [_class, _amount];
        };
        case "ITEM": {
            _box addItemCargoGlobal [_class, _amount];
        };
    };
} forEach _contents;
