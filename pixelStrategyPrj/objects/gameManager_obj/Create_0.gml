/// @description Main Game Values

room_speed = 60;

//Calling Scripts
globalSettings_scr();
alarm[0] = 100;

//Main Values
gameRound = 0;
money = 500;
moneyIO = 0;
posCash = 0;
negCash = 0;
data = 8;
enemyTeams = 3;

shopMenu = false;
unitMenu = false;
workersMenu = false;
premilitaryMenu = false;
selectedPremilitary = noone;

//Selecting Unit
mXPos = 0;
mYPos = 0;
selectedUnit = noone;
drawDestination = false;

//Chat
chatOpen = false;
chatStr = "";
chatHistoryLine = -1;
chatHistory[6] = "";
chatHistory[5] = "";
chatHistory[4] = "";
chatHistory[3] = "";
chatHistory[2] = "";
chatHistory[1] = "Welcome to Nuclear Skyline!";
chatHistory[0] = "Type .help for a list of commands.";

//Commands
fog = true;