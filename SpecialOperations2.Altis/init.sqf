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
    
    [] spawn {
        sleep 4.0;
        systemChat "Welcome to the S.O.S Tactical Gaming server!";
        sleep 2.0;
        systemChat "This mission is still in development so feel free to leave us some feed back at";
        sleep 2.0;
        systemChat "http://sos-tactical-gaming.shivtr.com";
        sleep 4.0;
        systemChat "Enjoy your stay!";
    };    
};


