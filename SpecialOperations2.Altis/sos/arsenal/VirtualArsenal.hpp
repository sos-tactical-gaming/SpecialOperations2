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
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "LargeOptics",
            "Bipods",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Bipods",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "Tools",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "ReconHelmets",
            "ReconUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "ReconHelmets",
            "ReconUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "ReconHelmets",
            "ReconUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "LargeOptics",
            "Bipods",
            "Suppressors",
            "Attachments"
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
            "ReconHelmets",
            "ReconUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "BasicHelmets",
            "BasicUniforms",
            "Vests",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "MediumOptics",
            "Suppressors",
            "Attachments"
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
            "AnvilHelmets",
            "BasicUniforms",
            "BasicItems",
            "Rangefinders",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles",
            "SmallOptics",
            "Attachments"
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
            "AnvilHelmets",
            "BasicUniforms",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "Attachments"
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
            "AnvilHelmets",
            "BasicUniforms",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "Attachments"
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
            "ReaperHelmets",
            "ReaperUniforms",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles",
            "SmallOptics",
            "Attachments"
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
            "ReaperHelmets",
            "ReaperUniforms",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "Attachments"
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
            "ReaperHelmets",
            "ReaperUniforms",
            "BasicItems",
            "BasicMedical",
            "AdvancedMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles",
            "SmallOptics",
            "Attachments"
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
            "HavocHelmets",
            "HavocUniforms",
            "BasicItems",
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles",
            "SmallOptics",
            "Attachments"
        };
        magazines[] = {
            "Thrown",
            "AssaultRifles",
            "SubMachineGuns"
        };
        weapons[] = {
            "SubMachineGuns"
        }; 
    };
};