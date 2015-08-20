class BaseTask {
    title           = "";
    description     = "";
    marker          = "";
    limit           = -1;
    chance          = 1.0;
    optional        = 0;
    markerType      = "b_unknown";
    markerColor     = "ColorOPFOR"
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
class EliminateHVT : SideTask {
    title           = "Eliminate HVT";
    description     = "Description about task.";
    marker          = "ELIMINATE HVT";
    limit           = 1;
    markerType      = "o_inf";
};
/*
class DestroyRadar : SideTask {
    title           = "Destroy Radar";
    description     = "Description about task.";
    marker          = "DESTROY RADAR";
};
class InvestigateCrashSite : SideTask {
    title           = "Investigate Crash Site";
    description     = "Description about task.";
    marker          = "INVESTIGATE CRASH SITE";
};
*/