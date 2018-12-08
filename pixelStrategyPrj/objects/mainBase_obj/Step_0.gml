/// @description Back in to bounds

//Back in to bounds
if (place_meeting(x, y, waterTile_obj))
{
	if (x < (worldGenerator_obj.mapSize - 256) || y < (worldGenerator_obj.mapSize - 256))
	{
		x += 64;
		y += 64;
	}
	else
	{
		x -= 64;
		y -= 64;
	}
}

