/// @description AI

if (tickRound < gameManager_obj.gameRound)
{
	//Enemy Spawnrate
	if (irandom(100) < enemySpawnRate && instance_exists(premilitaryTrainingBuildingEnemy_obj))
	{
		var numBuilding = instance_number(premilitaryTrainingBuildingEnemy_obj);
		var selectedBuilding = instance_find(premilitaryTrainingBuildingEnemy_obj, choose(0, numBuilding - 1));
		instance_create_layer(selectedBuilding.x, selectedBuilding.y - 64, 1, soldiersEnemy_obj);
	}
	//Workers Spawnrate
	if (irandom(100) < workersSpawnRate)
	{
		instance_create_layer(x, y + 64, 1, workersEnemy_obj);
	}
	//Military Spawnrate
	if (irandom(100) < militaryBuildingSpawnRate && instance_exists(workersEnemy_obj))
	{
		var numWorkers = instance_number(workersEnemy_obj);
		var selectedWorkers = instance_find(workersEnemy_obj, choose(0, numWorkers - 1));
		if !(place_meeting(selectedWorkers.x + 64, selectedWorkers.y, waterTile_obj))
		{
			instance_create_layer(selectedWorkers.x + 64, selectedWorkers.y, 1, premilitaryTrainingBuildingEnemy_obj);
		}
		else
		{
			if !(place_meeting(selectedWorkers.x - 64, selectedWorkers.y, waterTile_obj))
			{
				instance_create_layer(selectedWorkers.x - 64, selectedWorkers.y, 1, premilitaryTrainingBuildingEnemy_obj);
			}
			else
			{
				if !(place_meeting(selectedWorkers.x, selectedWorkers.y + 64, waterTile_obj))
				{
					instance_create_layer(selectedWorkers.x, selectedWorkers.y + 64, 1, premilitaryTrainingBuildingEnemy_obj);
				}
				else
				{
					if !(place_meeting(selectedWorkers.x, selectedWorkers.y - 64, waterTile_obj))
					{
						instance_create_layer(selectedWorkers.x, selectedWorkers.y - 64, 1, premilitaryTrainingBuildingEnemy_obj);
					}
				}
			}
		}
	}
	//Iron Factory Spawnrate
	if (irandom(100) < ironFactorySpawnRate && instance_exists(workersEnemy_obj))
	{
		var numWorkers = instance_number(workersEnemy_obj);
		var selectedWorkers = instance_find(workersEnemy_obj, choose(0, numWorkers - 1));
		instance_create_layer(selectedWorkers.x, selectedWorkers.y + 64, 1, ironFactoryEnemy_obj);
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

