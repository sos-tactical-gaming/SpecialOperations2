class Overcast {
    title	= "Weather: Overcast (100% means storms and rain are very likely)";
    values[]    = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
    texts[]	= {"0%", "10%", "20%", "30%", "40%", "50%", "60%", "70%", "80%", "90%", "100%"};
    default	= 0;
};
class Fog {
    title	= "Weather: Fog (Past 50% is unbearable at some altitudes)";
    values[]    = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
    texts[]	= {"0%", "10%", "20%", "30%", "40%", "50%", "60%", "70%", "80%", "90%", "100%"};
    default	= 0;
};
class Rain {
    title	= "Weather: Rain (70% is required for rain)";
    values[]    = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
    texts[]	= {"0%", "10%", "20%", "30%", "40%", "50%", "60%", "70%", "80%", "90%", "100%"};
    default	= 0;
};
class RandomWeather {
    title	= "Weather: Random (Will override above settings by default)";
    values[]    = {1, 0};
    texts[]	= {"True (Default)", "False"};
    default	= 1;
};
