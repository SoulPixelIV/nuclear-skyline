/// @description AI

if (tickRound < gameManager_obj.gameRound)
{
	//Enemy Spawnrate
	if (irandom(100) < enemySpawnRate)
	{
		instance_create_layer(x, y - 64, 1, soldiersEnemy_obj);
	}
	//Workers Spawnrate
	if (irandom(100) < workersSpawnRate)
	{
		instance_create_layer(x, y + 64, 1, workersEnemy_obj);
	}
	tickRound++;
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

