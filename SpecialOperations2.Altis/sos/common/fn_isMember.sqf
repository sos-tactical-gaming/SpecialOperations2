/*
 * Author: Legman [S.O.S. Major]
 * Reports to clients from the server.
 *
 * Arguments:
 *
 * Return Value:
 * result <BOOLEAN>
 *
 * Example:
 * [] call SOS_fnc_isMember;
 *
 */

private ["_whitelist", "_result"];

_whitelist = [
    "76561198015791827",  // Activity
    "76561197970635861",  // Baedeker
    "76561197978623097",  // Bob
    "76561198003800788",  // Boone
    "76561198028394243",  // Catshannon
    "76561197993247012",  // Cenwulf
    "76561198016657462",  // Cherokee
    "76561198014659963",  // Craneboy
    "76561197994235867",  // Duralex
    "76561197980263448",  // 313PH4N7   
    "76561198001423165",  // EnquiringStone
    "76561198122612545",  // Fanecas91
    "76561198088953166",  // FlarmBarg  
    "76561198099194444",  // Gosh
    "76561198007954214",  // Henri
    "76561197969575853",  // IceTbag
    "76561198047981602",  // Killbox
    "76561198006427961",  // LastWordz
    "76561197968756643",  // Legman
    "76561198000195702",  // LSDOverdose
    "76561198071986523",  // Lux0r    
    "76561198040813080",  // Mightywolf
    "76561198086715001",  // Oshunai
    "76561197964395660",  // Ozo
    "76561198104947173",  // Rambo
	"76561198049235047",  // Salokin Tsork
	"76561198059683938",  // sk Wookie
    "76561198068262463",  // Sonne des Volkes
    "76561197971445655",  // TadPole
    "76561197992016729",  // Tjb22
    "76561197974805504",  // Tomcat
    "76561198049798573",  // Zarta
    "76561198011263639"   // Zoinks
];
_result = (getPlayerUID player) in _whitelist;
_result




