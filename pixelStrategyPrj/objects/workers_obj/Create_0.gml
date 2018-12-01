/// @description Creating Values

//Main Values
steps = 1;
moveSpeed = 1.9;
unitHealth = 60;
unitDamage = 15;
unitCost = 35;

moving = false;
attacking = false;
drawCircle = false;
outOfRange = false;
startPosX = x;
startPosY = y;
savePosX = x;
savePosY = y;
stepsSave = steps;
unitHealthSave = unitHealth;

//Building
countGameRounds = 0;
gameRoundSave = 0;
building = false;
itemBought = -1;

//Settings
image_speed = 0;

//Move back in to bounds
if (place_meeting(x, y, waterTile_obj))
{
	var nearestSafe = instance_nearest(x, y, grassTile_obj);
	x = nearestSafe.x;
	y = nearestSafe.y;
}