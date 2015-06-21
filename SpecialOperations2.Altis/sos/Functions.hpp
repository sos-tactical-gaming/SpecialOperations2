class SOS_Functions {
    tag = "SOS";    
    class Common {
        file = "sos\common";
        class init {};
        class initUnit {};
    };    
    class Inventory {
        file = "sos\inventory";
        class initInventory {};
        class addVirtualArsenal {};
        class getVirtualWeaponCargo {};
    };
    class Respawn {
        file = "sos\respawn";
        class respawn {};
    };
};
