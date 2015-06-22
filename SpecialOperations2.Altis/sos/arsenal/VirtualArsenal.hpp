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
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Berets",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "MX",
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
            "MX"
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
            "BasicMedical",
            "NightVisionGoggles",
            "ShortRangeRadios",
            "Goggles"
        };
        magazines[] = {
            "Thrown",
            "MX"
        };
        weapons[] = {
            "AssaultRifles"
        };    
    };
};