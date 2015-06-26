#include "VirtualBackpackCargo.hpp"
#include "VirtualItemCargo.hpp"
#include "VirtualMagazineCargo.hpp"
#include "VirtualWeaponCargo.hpp"

class SOS_WestVirtualArsenal {    
    class PlatoonLeader {
        backpacks[] = {
            "LongRangeRadios"
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
            "GL"
        };
        weapons[] = {
            "AssaultRifles",
            "AssaultRiflesGL"
        };    
    };
    
    class PlatoonMedic {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRiflesC"
        };    
    };
    
    class PlatoonMarksman {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "MarksmanRiflesAmmo"
        };
        weapons[] = {
            "MarksmanRifles"
        };    
    };
	
	class GhostLeader {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
			"Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"GL"
        };
        weapons[] = {
            "AssaultRifles",
			"AssaultRiflesGL"
        };    
    };
	
	class GhostMachinegunner {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "MachineGunsAmmo"
        };
        weapons[] = {
            "MachineGuns"
        };    
    };
	
	class GhostAT {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRifles",
			"Launchers"
        };    
    };
	
	class GhostCombatEngineer {
        backpacks[] = {
            "AssaultBackpacks",
			"CarryallBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
			"Tools"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"Explosives"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
	
	class GhostAssistantMachinegunner {
        backpacks[] = {
            "AssaultBackpacks",
			"CarryallBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
	
	class GhostMedic {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRiflesC"
        };    
    };
	
		class GhostReconLeader {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
			"Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"GL"
        };
        weapons[] = {
            "AssaultRifles",
			"AssaultRiflesGL"
        };    
    };
	
	class GhostReconScout {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
	
	class GhostReconMarksman {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "MarksmanRiflesAmmo"
        };
        weapons[] = {
            "MarksmanRifles"
        };    
    };
	
	class GhostReconMedic {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
	
	class HWTLeader {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
			"Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"GL"
        };
        weapons[] = {
            "AssaultRifles",
			"AssaultRiflesGL"
        };    
    };
	
	class HWTStaticOperator {
        backpacks[] = {
            "WeaponBackpacks",
			"CarryallBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
	
	class HWTStaticAssistant {
        backpacks[] = {
            "WeaponBackpacks",
			"CarryallBackpacks"
        };
        items[] = {
            "Vests",
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
	
	class HWTMissileSpecialist { //Needs launchers
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
	
	class AnvilCommander {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "BasicItems",
			"Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
			"Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
	
	class AnvilDriver {
        backpacks[] = {            
        };
        items[] = {
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
	
	class AnvilGunner {
        backpacks[] = {            
        };
        items[] = {
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
	
	class ReaperPilot {
        backpacks[] = {
            "LongRangeRadios",
			"Parachutes"
        };
        items[] = {
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
			"Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
	
	class ReaperCoPilot {
        backpacks[] = {
            "LongRangeRadios",
			"Parachutes"
        };
        items[] = {
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
			"Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
	
	class ReaperCrew {
        backpacks[] = {   
			"Parachutes"		
        };
        items[] = {
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
	
	class ReaperMedic {
        backpacks[] = { 
			"AssaultBackpacks",		
			"Parachutes"		
        };
        items[] = {
            "BasicItems",
            "BasicMedical",
			"AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
	
	class HavocPilot {
        backpacks[] = {
            "LongRangeRadios",
			"Parachutes"
        };
        items[] = {
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
			"Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesAmmo",
			"SubMachineGunsAmmo"
        };
        weapons[] = {
            "AssaultRiflesC",
			"SubMachineGuns"
        }; 
    };
};