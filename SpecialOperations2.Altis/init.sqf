/*
	Author: Joe Redfearn (Legman [S.O.S. Major])

	Description:.

	Parameter(s):
*/

enableSaving [false, false];

// Init S.O.S
[] call SOS_fnc_init;

// Client
if (hasInterface) then {	
	player disableConversation true;
	player setVariable ["BIS_noCoreConversations", true];
};


