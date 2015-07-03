class SOS_Functions {
    tag = "SOS";

    class Arsenal {
        file = "sos\arsenal";
        class addVirtualArsenal {};
        class getVirtualBackpackCargo {};
        class getVirtualItemCargo {};
        class getVirtualMagazineCargo {};
        class getVirtualWeaponCargo {};
    };
    
    class Common {
        file = "sos\common";
        class init {};
        class initUnit {};
    };
    
    class Inventory {
        file = "sos\inventory";
        class initInventory {};
        
    };
    
    class Respawn {
        file = "sos\respawn";
        class respawn {};
    };
    
    class Vehicle {
        file = "sos\vehicle";
        class initVehicle {};
        class spawnVehicle {};
        class addVehicleSpawn {};        
        class canDriveVehicle {};
    };
	
	class Base {
		file = "sos\base";
		class createSafeZone {};
		class activateSafeZone {};
		class deactivateSafeZone {};
	};
};
