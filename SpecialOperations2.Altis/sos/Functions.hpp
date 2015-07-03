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
        class sendMessage {};
        class isMember {};
    };
    
    class Inventory {
        file = "sos\inventory";
        class initInventory {};        
    };
    
    class Mission {
        file = "sos\mission";
        class createAO {};
        class createFOB {};
        class findSafePosition {};
        class getRandomLocation {};
        class getRoadDirection {};
        class randomBuildingPositions {};
        class spawnFOB {};        
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
};
