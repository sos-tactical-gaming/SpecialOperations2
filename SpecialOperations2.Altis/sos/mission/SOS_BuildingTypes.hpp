class Building {
    positions[] = {};
    specialUnits[] = {};
    specialUnitsPositions[] = {};
    spawnPercentSpecialUnit = 0;
};
class CargoHouse : Building {
    positions[] = {0};
    specialUnitsPositions[] = {0};
    spawnPercentSpecialUnit = 10;
};
class CargoHQ : Building {
    positions[] = {0,1,2,3,4,5,6,7,8,9,10,11,12};
    specialUnits[] = {"O_Soldier_GL_F", "O_soldier_M_F", "O_Soldier_AA_F", "O_Soldier_AT_F", "O_HeavyGunner_F"};
    specialUnitsPositions[] = {4,5,6,7,8};
    spawnPercentSpecialUnit = 35;
};
class CargoTower : Building {
    positions[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17};
    specialUnits[] = {"O_soldier_M_F", "O_Soldier_AA_F", "O_Sharpshooter_F", "O_Pathfinder_F", "O_recon_M_F"};
    specialUnitsPositions[] = {0,1,10,11,12,13,14,15,16,17};
    spawnPercentSpecialUnit = 50;
};
class CargoPatrol : Building {
    positions[] = {0,1};
    specialUnits[] = {"O_Soldier_GL_F", "O_soldier_M_F", "O_Soldier_AR_F"};
    specialUnitsPositions[] = {0,1};
    spawnPercentSpecialUnit = 50;
};
class StadiumSeats : Building {
    positions[] = {0,1,2,3,4,5};
    specialUnits[] = {"O_HeavyGunner_F"};
    specialUnitsPositions[] = {5};
    spawnPercentSpecialUnit = 50;
};
class InnGarden : Building {
    positions[] = {0,1,2,3,4};
    spawnPercentSpecialUnit = -1;
};
class Barracks : Building {
    specialUnits[] = {"O_Soldier_GL_F", "O_soldier_M_F", "O_Soldier_AA_F", "O_Soldier_AT_F", "O_HeavyGunner_F"};
    spawnPercentSpecialUnit = 35;
};
class Garage : Building {
    positions[] = {0,1,2};
    specialUnits[] = {"O_Soldier_AR_F", "O_engineer_F"};
    specialUnitsPositions[] = {0,1,2};
    spawnPercentSpecialUnit = 25;
};
class HouseAddon : Building {
    positions[] = {0,1,2};
    spawnPercentSpecialUnit = -1;
};
class IndustrialShed : Building {
    positions[] = {0,1,2,3,4,5,6,7,8,9};
    specialUnits[] = {"O_engineer_F"};
    specialUnitsPositions[] = {0};
    spawnPercentSpecialUnit = 10;
};