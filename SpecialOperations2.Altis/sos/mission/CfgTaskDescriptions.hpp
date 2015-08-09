class BaseTask {
    title       = "";
    description = "";
    marker      = "";
    limit       = -1;
    chance      = 1.0;
    optional    = 0;    
};
class SideTask : BaseTask {};

// Internal Tasks
class DestroyFPB : BaseTask {
    title           = "Destroy FPB";
    description     = "Description about task.";
    marker          = "DESTROY FPB";
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
};
class DestroyArtilleryTank : SideTask {    
    title           = "Destroy Artillery Tank";
    description     = "Description about task.";
    marker          = "DESTROY ARTILLERY TANK";
    limit           = 1;
    chance          = 0.5;
};
class DestroyAAA : SideTask {    
    title           = "Destroy AAA";
    description     = "Description about task.";
    marker          = "DESTROY AAA";
    limit           = 1;
    chance          = 0.5;
};
class DestroyRelayStation : SideTask {
    title           = "Destroy Relay Station";
    description     = "Description about task.";
    marker          = "DESTROY RELAY STATION";
    limit           = 1;
};
/*
class DestroyRadar : SideTask {
    title           = "Destroy Radar";
    description     = "Description about task.";
    marker          = "DESTROY RADAR";
};
class EliminateHVT : SideTask {
    title           = "Eliminate HVT";
    description     = "Description about task.";
    marker          = "ELIMINATE HVT";
};
class InvestigateCrashSite : SideTask {
    title           = "Investigate Crash Site";
    description     = "Description about task.";
    marker          = "INVESTIGATE CRASH SITE";
};
*/