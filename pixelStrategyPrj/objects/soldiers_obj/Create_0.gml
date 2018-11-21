/// @description Creating Values

//Main Values
steps = 2;
moveSpeed = 2.2;
unitHealth = 100;
unitDamage = 40;
unitCost = 45;

moving = false;
drawCircle = false;
outOfRange = false;
startPosX = x;
startPosY = y;
stepsSave = steps;
unitHealthSave = unitHealth;

//Move back in to bounds
if (place_meeting(x, y, waterTile_obj))
{
	var nearestSafe = instance_nearest(x, y, grassTile_obj);
	x = nearestSafe.x;
	y = nearestSafe.y;
}