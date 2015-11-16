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
        class spawnLight {};
    };    
    class Common {
        file = "sos\common\functions";
        class checkRole {};
        class init {};
        class initUnit {};        
        class isMember {};
        class sendMessage {};
        class showHint {};
    };
    class Environment {        
        file = "sos\environment\functions";
        class setTime {};
        class setWeather {};
    };
    class Inventory {
        file = "sos\inventory\functions";
        class addResetRadioAction {};
        class initInventory {};
        class initRadio {};
        class resetRadio {};
    };
    class Logistics {
        file = "sos\logistics\functions";
        class addLogisticsSpawn {};
        class spawnCrate {};
    };
    class Mission {
        file = "sos\mission\functions"; 
        class addTask {};        
        class blacklistArea {};
        class completeTask {};       
        class createAO {};
        class createDefense {};        
        class createTask {};
        class createZone {};
        class defenseGunEmplacement {};
        class defenseTower {};        
        class defenseMinefield  {};
        class endMission {};
		class failTask {};
        class findFOB {};
        class findSafePosition {};
        class getMarkerName {};
        class getRandomFOB {};
        class getRandomLocation {};
        class getRoadDirection {};
        class getTaskName {};        
        class getZoneName {};
        class initMissionGenerator {};
        class isMissionComplete {}; 
        class isTaskLimitReached {};
        class taskCaptureCompound {};
        class taskDestroyAAA {};
        class taskDestroyAmmoCache {};
        class taskDestroyArtilleryTank {};
        class taskDestroyRelayStation {};
        class taskDestroyFPB {};        
        class taskDestroyRadar {};        
        class taskEliminateHVT {}; 
        class taskEliminateSniperTeam {};
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
        class activateServicePoint {};
        class addServicePoint {};
        class addVehicleSpawn {};
        class canDriveVehicle {};
        class deactivateServicePoint {};
        class initVehicle {};
        class lockGroupVehicles {};
        class lockSideVehicles {};
        class serviceVehicle {};
        class spawnVehicle {};       
    };
};
