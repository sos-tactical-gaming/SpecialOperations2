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
            "AssaultRifles",
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
            "AssaultRifles"
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
            "MarksmanRifles"
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
            "AssaultRifles",
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
            "MachineGuns"
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
            "AssaultRifles",
            "Launchers"
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
            "AssaultRifles",
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
            "AssaultRifles"
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
            "AssaultRifles"
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
            "AssaultRifles",
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
            "AssaultRifles"
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
            "MarksmanRifles"
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
            "AssaultRifles"
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
            "AssaultRifles",
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
            "AssaultRifles"
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
            "AssaultRifles"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };

    class HWTMissileSpecialist {
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
            "AssaultRifles",
            "Launchers"
        };
        weapons[] = {
            "AssaultRifles",
            "Launchers"
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
            "AssaultRifles",
            "SubMachineGuns"
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
            "AssaultRifles",
            "SubMachineGuns"
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
            "AssaultRifles",
            "SubMachineGuns"
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
            "AssaultRifles",
            "SubMachineGuns"
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
            "AssaultRifles",
            "SubMachineGuns"
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
            "AssaultRifles",
            "SubMachineGuns"
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
            "AssaultRifles",
            "SubMachineGuns"
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
            "AssaultRifles",
            "SubMachineGuns"
        };
        weapons[] = {
            "AssaultRiflesC",
            "SubMachineGuns"
        }; 
    };
};