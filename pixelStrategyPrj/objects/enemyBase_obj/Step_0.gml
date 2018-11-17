/// @description Back in to bounds

//Back in to bounds
if (distance_to_object(mainBase_obj) < 256)
{
	if (x < (worldGenerator_obj.mapSize - 128) || y < (worldGenerator_obj.mapSize - 128))
	{
		x += 64;
		y += 64;
	}
}
if (place_meeting(x, y, waterTile_obj))
{
	if (x < (worldGenerator_obj.mapSize - 128) || y < (worldGenerator_obj.mapSize - 128))
	{
		x += 64;
		y += 64;
	}
}

