#include "SOS_VirtualBackpackCargo.hpp"
#include "SOS_VirtualItemCargo.hpp"
#include "SOS_VirtualMagazineCargo.hpp"
#include "SOS_VirtualWeaponCargo.hpp"

class SOS_WestVirtualArsenal {    
    class PlatoonLeader {
        backpacks[] = {
            "LongRangeRadios"
        };
        items[] = {
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "AdvancedItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "ExpertBerets",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "GL",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "AssaultRiflesGL",
            "Pistols"
        };    
    };
    class PlatoonMedic {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "MedicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        };    
    };
    class PlatoonMarksman {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "MarksmanItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "LongRangeOptics",
            "ThermalOptics",
            "Bipods",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "MarksmanRifles",
            "Pistols"
        };
        weapons[] = {
            "MarksmanRifles",
            "Pistols"
        };    
    };
    class GhostLeader {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "AdvancedItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "BasicBerets",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "GL",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "AssaultRiflesGL",
            "Pistols"
        };    
    };
    class GhostMachinegunner {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Bipods",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "MachineGuns",
            "Pistols"
        };
        weapons[] = {
            "MachineGuns",
            "Pistols"
        };    
    };
    class GhostAT {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Launchers",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "Launchers",
            "Pistols"
        };    
    };
    class GhostCombatEngineer {
        backpacks[] = {
            "AssaultBackpacks",
            "CarryallBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "Tools",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Explosives",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols"
        };    
    };    
    class GhostAutorifleman {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Bipods",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "Autorifles",
            "Pistols"
        };
        weapons[] = {
            "Autorifles",
            "Pistols"
        };    
    };
    class GhostAssistantMachinegunner {
        backpacks[] = {
            "AssaultBackpacks",
            "CarryallBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols"
        };    
    };
    class GhostMedic {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "MedicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        };    
    };
    class GhostReconLeader {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "ReconHelmets",
            "ReconUniforms",
            "GhillieUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "LaserDesignators",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "BasicBerets",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols",
            "LaserDesignators"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        };    
    };
    class GhostReconScout {
        backpacks[] = {
            "AssaultBackpacks",
            "UAVBackpacks"
        };
        items[] = {
            "ReconHelmets",
            "ReconUniforms",
            "GhillieUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments",
            "UAVTerminals"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        };    
    };
    class GhostReconMarksman {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "ReconHelmets",
            "ReconUniforms",
            "GhillieUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "MarksmanItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "LongRangeOptics",
            "ThermalOptics",
            "Bipods",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "MarksmanRifles",
            "Pistols"
        };
        weapons[] = {
            "MarksmanRifles",
            "Pistols"
        };    
    };
    class GhostReconMedic {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "ReconHelmets",
            "MedicHelmets",
            "ReconUniforms",
            "GhillieUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRiflesC",
            "Pistols"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        };    
    };
    class HWTLeader {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "BasicBerets",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "GL",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "AssaultRiflesGL",
            "Pistols"
        };    
    };
    class HWTStaticOperator {
        backpacks[] = {
            "WeaponBackpacks",
            "CarryallBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols"
        };    
    };
    class HWTStaticAssistant {
        backpacks[] = {
            "WeaponBackpacks",
            "CarryallBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols"
        };    
    };
    class HWTMissileSpecialist {
        backpacks[] = {
            "AssaultBackpacks"            
        };
        items[] = {
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Launchers",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "Launchers",
            "Pistols"
        };    
    };
    class AnvilCommander {
        backpacks[] = {
            "LongRangeRadios"            
        };
        items[] = {
            "AnvilHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "AdvancedBerets",
            "Goggles",
            "ShortRangeOptics",
            "Attachments",
            "Tools"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        }; 
    };
    class AnvilDriver {
        backpacks[] = {            
        };
        items[] = {
            "AnvilHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "Attachments",
            "Tools"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        }; 
    };
    class AnvilGunner {
        backpacks[] = {            
        };
        items[] = {
            "AnvilHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "Attachments",
            "Tools"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols"
        };
        weapons[] = {
            "AssaultRiflesC",
            "Pistols"
        }; 
    };
    class ReaperPilot {
        backpacks[] = {
            "LongRangeRadios",
            "Parachutes"
        };
        items[] = {
            "ReaperHelmets",
            "ReaperUniforms",
            "ReaperVests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "AdvancedBerets",
            "Goggles",
            "ShortRangeOptics",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "SubMachineGuns",
            "Pistols"
        };
        weapons[] = {
            "SubMachineGuns",
            "Pistols"
        }; 
    };
    class ReaperCrew {
        backpacks[] = {   
            "Parachutes"		
        };
        items[] = {
            "ReaperHelmets",
            "ReaperUniforms",
            "ReaperVests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "SubMachineGuns",
            "Pistols"
        };
        weapons[] = {
            "SubMachineGuns",
            "Pistols"
        }; 
    };
    class ReaperMedic {
        backpacks[] = { 
            "AssaultBackpacks",		
            "Parachutes"		
        };
        items[] = {
            "ReaperHelmets",
            "ReaperUniforms",
            "ReaperVests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "SubMachineGuns",
            "Pistols"
        };
        weapons[] = {
            "SubMachineGuns",
            "Pistols"
        }; 
    };
    class HavocPilot {
        backpacks[] = {
            "LongRangeRadios",
            "Parachutes"
        };
        items[] = {
            "HavocHelmets",
            "HavocUniforms",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "AdvancedBerets",
            "Goggles",
            "ShortRangeOptics",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "SubMachineGuns",
            "Pistols"
        };
        weapons[] = {
            "SubMachineGuns",
            "Pistols"
        }; 
    };
};