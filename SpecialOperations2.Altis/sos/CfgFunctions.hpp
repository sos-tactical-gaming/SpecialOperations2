class SOS_Functions {
    tag = "SOS";	
    class Actions {
        file = "sos\actions\functions";
        class parachute {};
    };
    class Arsenal {
        file = "sos\arsenal\functions";
        class addVirtualArsenal {};
        class getVirtualBackpackCargo {};
        class getVirtualItemCargo {};
        class getVirtualMagazineCargo {};
        class getVirtualWeaponCargo {};
    };	
    class Base {
        file = "sos\base\functions";
        class createSafeZone {};
        class activateSafeZone {};
        class deactivateSafeZone {};
        class initSafeZone {};
    };    
    class Common {
        file = "sos\common\functions";
        class init {};
        class initUnit {};
        class sendMessage {};
        class isMember {};
        class checkRole {};
        class showHint {};
    };
    class Environment {        
        file = "sos\environment\functions";
        class setTime {};
        class setWeather {};
    };
    class Inventory {
        file = "sos\inventory\functions";
        class initInventory {};        
    };    
    class Mission {
        file = "sos\mission\functions"; 
        class addTask {};        
        class blacklistArea {};
        class completeTask {};       
        class createAO {};
        class createDefense {};        
        class createTask {};
        class createTower {};
        class createZone {};
        class endMission {};
        class findFOB {};
        class findSafePosition {};
        class getRandomFOB {};
        class getRandomLocation {};
        class getRoadDirection {};
        class getTaskName {};
        class getUniqueMarkerId {};
        class getUniqueZoneId {};
        class initMissionGenerator {};
        class isMissionComplete {}; 
        class isTaskLimitReached {};
        class taskDestroyAAA {};
        class taskDestroyAmmoCache {};
        class taskDestroyArtilleryTank {};
        class taskDestroyFPB {};        
        class taskDestroyRadar {};        
        class taskEliminateHVT {};        
        class taskExfiltration {};        
        class taskInvestigateCrashSite {};        
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
