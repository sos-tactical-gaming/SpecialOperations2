/*
 * Author: Legman [S.O.S. Major]
 *
 * Arguments:
 *
 * Return Value:
 * Nothing
 *
 * Example:
 */

enableSaving [false, false];

// Init S.O.S
[] call SOS_fnc_init;

// Client
if (hasInterface) then {	
	player disableConversation true;
	player setVariable ["BIS_noCoreConversations", true];
};


