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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "GL",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "AssaultRifles",
            "AssaultRiflesGL",
            "Pistols"
        };    
    };
    class PlatoonMedic {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks",
            "TacticalBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "CoolHats",
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
            "Bipods",
            "Suppressors",
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "MarksmanRifles",
            "Pistols",
            "BasicExplosives"
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "GL",
            "Pistols",
            "BasicExplosives"
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "MachineGuns",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "MachineGuns",
            "Pistols"
        };    
    };
    class GhostAT {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks",
            "TacticalBackpacks"            
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "ATLaunchers",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "AssaultRifles",
            "ATLaunchers",
            "Pistols"
        };    
    };
    class GhostCombatEngineer {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks",
            "TacticalBackpacks",
            "CarryallBackpacks",
            "Kitbags"
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
            "BasicTools",
            "AdvancedTools",
            "BasicDetonators",
            "AdvancedDetonators",
            "ShortRangeOptics",
            "MidRangeOptics",
            "Suppressors",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "BasicExplosives",
            "AdvancedExplosives",
            "Pistols"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols",
            "DisposableLaunchers"
        };    
    };    
    class GhostAutorifleman {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks",
            "TacticalBackpacks"            
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "Autorifles",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "Autorifles",
            "Pistols"
        };    
    };
    class GhostAssistantMachinegunner {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks",
            "TacticalBackpacks",
            "CarryallBackpacks",
            "Kitbags"
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols",
            "DisposableLaunchers"
        };    
    };
    class GhostMedic {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks",
            "TacticalBackpacks"
        };
        items[] = {
            "BasicHelmets",
            "CoolHats",
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols",
            "LaserDesignators",
            "BasicExplosives"
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
            "UAVTerminals",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols",
            "BasicExplosives"
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
            "Bipods",
            "Suppressors",
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "MarksmanRifles",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "MarksmanRifles",
            "Pistols"
        };    
    };
    class GhostReconMedic {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks"
        };
        items[] = {
            "ReconHelmets",
            "CoolHats",
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "GL",
            "Pistols",
            "BasicExplosives"
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
            "CarryallBackpacks",
            "Kitbags"
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols"
        };    
    };
    class HWTStaticAssistant {
        backpacks[] = {
            "WeaponBackpacks",
            "CarryallBackpacks",
            "Kitbags"            
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "AssaultRifles",
            "Pistols"
        };    
    };
    class HWTMissileSpecialist {
        backpacks[] = {
            "AssaultBackpacks",
            "FieldPacks",
            "TacticalBackpacks"
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
            "Attachments",
            "BasicDetonators"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "ATLaunchers",
            "Pistols",
            "BasicExplosives"
        };
        weapons[] = {
            "AssaultRifles",
            "ATLaunchers",
            "Pistols"
        };    
    };
    class AnvilCommander {
        backpacks[] = {
            "AssaultBackpacks"
        };
        items[] = {
            "AnvilHelmets",
            "CoolHats",
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
            "BasicTools"
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
            "AssaultBackpacks"
        };
        items[] = {
            "AnvilHelmets",
            "CoolHats",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "Attachments",
            "BasicTools"
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
            "AssaultBackpacks"
        };
        items[] = {
            "AnvilHelmets",
            "CoolHats",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "ShortRangeOptics",
            "Attachments",
            "BasicTools"
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
            "AssaultBackpacks"		
        };
        items[] = {
            "ReaperHelmets",
            "CoolHats",
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