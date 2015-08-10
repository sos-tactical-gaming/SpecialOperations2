/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Spawns a crate in a specified area.
 * Thanks to: Legman [S.O.S. Mayor]
 *
 * Arguments:
 * 0: name <STRING>
 * 1: position <ARRAY>
 * 2: radius <NUMBER>
 * 3: direction <NUMBER>
 * 4: inventory <ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_name, _position, _radius, _direction, _inventory] call SOS_fnc_spawnBox;
 *
 */
 
if (isDedicated) exitWith {};
waitUntil {!isNull player};

private ["_name", "_position", "_radius", "_direction", "_inventory", "_crate"];

_name           = _this select 0;
_position       = _this select 1;
_radius         = _this select 2;
_direction      = _this select 3;
_inventory      = _this select 4;

_crate = createVehicle [_name, _position, [], _radius, "NONE"];
_crate setDir _direction;
_crate allowDamage false;

clearMagazineCargoGlobal    _crate;
clearWeaponCargoGlobal      _crate;
clearItemCargoGlobal        _crate;
clearBackpackCargoGlobal    _crate;

{
    _class      = _x select 0;
    _amount     = _x select 1;
    _type       = _x select 2;
    
    switch(_type) do {
        case "MAGAZINE": {
            _crate addmagazinecargoGlobal [_class, _amount];
        };
        case "WEAPON": {
            _crate addWeaponCargoGlobal [_class, _amount];
        };
        case "ITEM": {
            _crate addItemCargoGlobal [_class, _amount];
        };
    };
} forEach _inventory;
