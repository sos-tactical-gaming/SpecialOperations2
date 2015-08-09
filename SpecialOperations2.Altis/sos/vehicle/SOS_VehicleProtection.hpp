class SOS_VehicleProtection {
    class Armor {
        vehicles[] = {
            "B_APC_Tracked_01_rcws_F",
            "B_APC_Wheeled_01_cannon_F",
            "B_MBT_01_cannon_F",
            "B_MBT_01_TUSK_F",
            "B_MBT_01_arty_F",
            "I_APC_Wheeled_03_cannon_F",
            "I_APC_tracked_03_cannon_F",
            "I_MBT_03_cannon_F"           
        };
        roles[] = {
            "AnvilCommander",
            "AnvilGunner",
            "AnvilDriver"
        };
        member = 1;
    };
    class Helo {
        vehicles[] = {
            "B_Heli_Light_01_F",
            "B_Heli_Light_01_armed_F",
            "B_Heli_Attack_01_F",
            "B_Heli_Transport_01_F",
            "B_Heli_Transport_01_F",
            "B_Heli_Transport_01_camo_F",
            "B_Heli_Transport_03_F",
            "B_Heli_Transport_03_black_F"
        };
        roles[] = {
            "ReaperPilot"
        };
        member = 0;
    };
    class AdvancedHelo {
        vehicles[] = {
            "B_Heli_Attack_01_F"
        };
        roles[] = {
            "ReaperPilot",
            "ReaperCopilot"
        };
        member = 1;
    };
    class Havoc {
        vehicles[] = {
            "B_Plane_CAS_01_F",
        };
        roles[] = {
            "HavocPilot"
        };
        member = 1;
    };    
};

