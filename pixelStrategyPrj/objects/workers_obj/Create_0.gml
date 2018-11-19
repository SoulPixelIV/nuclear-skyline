/// @description Creating Values

//Movement Values
steps = 1;
moveSpeed = 1.9;

moving = false;
drawCircle = false;
outOfRange = false;
startPosX = x;
startPosY = y;
stepsSave = steps;

//Move back in to bounds
if (place_meeting(x, y, waterTile_obj))
{
	var nearestSafe = instance_nearest(x, y, grassTile_obj);
	x = nearestSafe.x;
	y = nearestSafe.y;
}