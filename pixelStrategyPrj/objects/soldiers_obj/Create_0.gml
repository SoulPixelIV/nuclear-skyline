/// @description Creating Values

//Movement Values
steps = 2;
moveSpeed = 2.2;

moving = false;
drawCircle = false;
outOfRange = false;

//Move back in to bounds
if (place_meeting(x, y, waterTile_obj))
{
	var nearestSafe = instance_nearest(x, y, grassTile_obj);
	x = nearestSafe.x;
	y = nearestSafe.y;
}