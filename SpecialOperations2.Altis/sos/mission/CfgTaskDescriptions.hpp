class BaseTask {
    title           = "";
    description     = "";
    marker          = "";
    limit           = -1;
    chance          = 1.0;
    optional        = 0;
    markerType      = "b_unknown";
    markerColor     = "ColorOPFOR";
    markerSize[]    = {1.4, 1.4};
};
class SideTask : BaseTask {};

// Internal Tasks
class DestroyFPB : BaseTask {
    title           = "Destroy FPB";
    description     = "Description about task.";
    marker          = "DESTROY FPB";
    markerType      = "o_hq";
};
class Exfiltrate : BaseTask {
    title           = "Exfiltrate";
    description     = "Description about task.";
    marker          = "EXFILTRATE";
};

// Side Tasks
class DestroyAmmoCache : SideTask {
    title           = "Destroy Ammo Cache";
    description     = "Description about task.";
    marker          = "DESTROY AMMO CACHE";
    markerType      = "o_support";
};
class DestroyArtilleryTank : SideTask {    
    title           = "Destroy Artillery Tank";
    description     = "Description about task.";
    marker          = "DESTROY ARTILLERY TANK";
    limit           = 1;
    chance          = 0.5;
    markerType      = "o_art";
};
class DestroyAAA : SideTask {    
    title           = "Destroy AAA";
    description     = "Description about task.";
    marker          = "DESTROY AAA";
    limit           = 1;
    chance          = 0.5;
    markerType      = "o_armor";
};
class DestroyRelayStation : SideTask {
    title           = "Destroy Relay Station";
    description     = "Description about task.";
    marker          = "DESTROY RELAY STATION";
    limit           = 1;
    markerType      = "o_service";
};
class CaptureCompound : SideTask {
    title           = "Capture Compound";
    description     = "Description about task.";
    marker          = "CAPTURE COMPOUND";
    limit           = 1;
    markerType      = "o_hq";
};
class EliminateSniperTeam : SideTask {
    title           = "Eliminate Sniper Team (Optional)";
    description     = "Description about task.";
    marker          = "ELIMINATE SNIPER TEAM (OPTIONAL)";
    limit           = -1;
    optional        = 1;
    markerType      = "o_recon";    
};
class EliminateHVT : SideTask {
    title           = "Eliminate HVT (OPTIONAL)";
    description     = "Description about task.";
    marker          = "ELIMINATE HVT (OPTIONAL)";
    limit           = 1;
    optional        = 1;
    markerType      = "o_inf";
};
/*
class DestroyAttackHelo : SideTask {
    title           = "Destroy Attack Helo";
    description     = "Description about task.";
    marker          = "Destroy Attack Helo";
    limit           = 1;
    markerType      = "o_air";
};
*/

// Defenses
class BaseDefense {
    chance = 1.0;
};
class Tower : BaseDefense {};
class GunEmplacement : BaseDefense {
    chance = 0.6;
};
class Minefield : BaseDefense {
    chance = 0.2;
};
