/// @description Enemy AI

if (soldiersEnemy_obj.steps > 0 && soldiersEnemy_obj.moving == false)
{
	with (soldiersEnemy_obj)
	{
		soldiersEnemy_obj.moving = true;
		soldiersEnemy_obj.dirMove = 0;
	}
}

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

