/*
 * Author: EnquiringStone [S.O.S. Captain]
 * Adds spawn ammo actions to a unit.
 * Thanks to: Legman [S.O.S. Major]
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: configName <STRING>
 * 2: position <ARRAY>
 * 3: direction <NUMBER>
 * 4: radius <NUMBER>
 * 5: delay <NUMBER>
 * 6: whitelist <ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [_unit, "AmmoCrate", _position, _direction, 2.0, 0.0, 20, []] call SOS_fnc_addLogisticsSpawn;
 *
 */
 
if (isDedicated) exitWith {};
waitUntil {!isNull player};

private [
    "_unit",
    "_configName",
    "_position",
    "_direction",
    "_radius",
    "_delay",
    "_whitelist"
];

_unit           = _this select 0;
_configName     = _this select 1;
_position       = _this select 2;
_direction      = if (count _this > 3) then {_this select 3} else {0.0};
_radius         = if (count _this > 4) then {_this select 4} else {2.0};
_delay          = if (count _this > 5) then {_this select 5} else {20.0};
_whitelist      = if (count _this > 6) then {_this select 6} else {[]};

_unit allowDamage false;
_unit enableSimulationGlobal false;

if (player getVariable "sos_inventory_role" in _whitelist || count _whitelist == 0) then {
    _name = getText(missionConfigFile >> format["SOS_LogisticsSpawn"] >> _configName >> "name");
    _crate = getText(missionConfigFile >> format["SOS_LogisticsSpawn"] >> _configName >> "crate");
    _inventory = getArray(missionConfigFile >> format["SOS_LogisticsSpawn"] >> _configName >> "inventory");
    
    _unit addAction [format["Spawn %1", _name], {
        _unit       = _this select 0;
        _name       = _this select 3 select 0;
        _position   = _this select 3 select 1;
        _radius     = _this select 3 select 2;        
        _delay      = _this select 3 select 3; 
        _direction  = _this select 3 select 4;
        _inventory  = _this select 3 select 5;
        
        // is delay finished?
        if (_unit getVariable ["sos_logistics_spawn_delay", 0.0] <= 0.0) then {
            [_name, _position, _radius, _direction, _inventory] call SOS_fnc_spawnCrate;    
            playSound "sos_confirm";
                
            if (_delay > 0.0) then {
                [_unit, _delay] spawn {
                    private ["_unit", "_delay"];
                    _unit   = _this select 0;
                    _delay  = _this select 1;
                    _unit setVariable ["sos_logistics_spawn_delay", _delay];
                        
                    // tick down delay until 0
                    while {_delay > 0.0} do {
                        sleep 1.0;
                        _delay = _delay - 1;
                        _this select 0 setVariable ["sos_logistics_spawn_delay", _delay];
                    };
                };
            };            
        } else {
            [
                format ["Please wait %1 seconds before you spawn another crate", (_unit getVariable ["sos_logistics_spawn_delay", 0.0])], 
                "SILENT", 
                "sos_warning"
            ] call SOS_fnc_showHint;
        };        
    }, [_crate, _position, _radius, _delay, _direction, _inventory], 8.0, true, true];
};
