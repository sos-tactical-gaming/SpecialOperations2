/*
 * Author: Legman [S.O.S. Major]
 * Converts a number from 0 - 25 to NATO phonetic alphabet.
 *
 * Arguments:
 * 0: number <NUMBER>
 *
 * Return Value:
 * phonetic <STRING>
 *
 * Example:
 * [4] call SOS_fnc_numberPhonetic;
 *
 */

private ["_number"];

_number     = 0 max 25 min (_this select 0);
_phonetic   = [
    "Alpha",
    "Bravo",
    "Charlie",
    "Delta",
    "Echo",
    "Foxtrot",
    "Golf",
    "Hotel",
    "Juliett",
    "Kilo",
    "Lima",
    "Mike",
    "November",
    "Oscar",
    "Papa",
    "Quebec",
    "Romeo",
    "Sierra",
    "Tango",
    "Uniform",
    "Victor",
    "Whiskey",
    "Xray",
    "Yankee",
    "Zulu"
];
_phonetic select _number



