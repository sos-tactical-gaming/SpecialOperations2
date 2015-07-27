class SOS_Functions {
    tag = "SOS";

    class Arsenal {
        file = "sos\arsenal\functions";
        class addVirtualArsenal {};
        class getVirtualBackpackCargo {};
        class getVirtualItemCargo {};
        class getVirtualMagazineCargo {};
        class getVirtualWeaponCargo {};
    };
    
    class Common {
        file = "sos\common\functions";
        class init {};
        class initUnit {};
        class sendMessage {};
        class isMember {};
    };
    
    class Inventory {
        file = "sos\inventory\functions";
        class initInventory {};        
    };
    
    class Mission {
        file = "sos\mission\functions";
        class createAO {};
        class createFOB {};
        class createZone {};
        class findSafePosition {};
        class getRandomLocation {};
        class getRoadDirection {};
        class initMissionGenerator {};
        class planFOB {};        
    };
    
    class Respawn {
        file = "sos\respawn\functions";
        class respawn {};
    };
    
    class Utils {
        file = "sos\utils\functions";
        class arrayPickRandom {};
        class numberPhonetic {};
    };
    
    class Vehicle {
        file = "sos\vehicle\functions";
        class initVehicle {};
        class spawnVehicle {};
        class addVehicleSpawn {};        
        class canDriveVehicle {};
		class addServicePoint {};		
		class activateServicePoint {};      
		class serviceVehicle {};
        class deactivateServicePoint {};
    };
};
