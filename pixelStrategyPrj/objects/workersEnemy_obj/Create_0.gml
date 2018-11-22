/// @description Creating Values

//Movement Values
steps = 1;
moveSpeed = 1.9;
unitHealth = 60;
unitDamage = 5;

moving = false;
outOfRange = false;
startPosX = x;
startPosY = y;
destinationPosX = x;
destinationPosY = y;
lastSavePosX = x;
lastSavePosY = y;
unitHealthSave = unitHealth;

//Move back in to bounds
if (place_meeting(x, y, waterTile_obj))
{
	var nearestSafe = instance_nearest(x, y, grassTile_obj);
	x = nearestSafe.x;
	y = nearestSafe.y;
}