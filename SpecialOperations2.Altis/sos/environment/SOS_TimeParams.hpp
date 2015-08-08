class MissionTime {
    title   = "Time of Mission";
    values[]= {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};
    texts[] = {"00:00", "01:00", "02:00", "03:00", "04:00", "05:00", "06:00", "07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00 (Default)", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00"};
    default = 16;
};
class TimeAcceleration {
    title   = "Time Acceleration";
    values[]= {1, 2};
    texts[] = {"Default x1","Time x2"};
    default = 1;
};
class RandomTime {
    title   = "Time: Random (Will override above settings by default)";
    values[]= {1, 0};
    texts[] = {"True (Default)", "False"};
    default = 1;
};
