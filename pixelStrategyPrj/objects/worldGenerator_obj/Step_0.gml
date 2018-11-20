/// @description World Generator

//###Vars###
global.sizeX = mapSize;
global.sizeY = mapSize;

//0% - 100%
waterPossibility = waterPossibilityIcon_obj.percentage;
islandPossibility = islandPossibilityIcon_obj.percentage;

posX = 64;
posY = 64;

if (mapLoading)
{
	randomise();

	//Map creation
	for (posY = 64; posY < global.sizeY; posY += 64)
	{
		for (posX = 64; posX < global.sizeX; posX += 64)
		{
			//Watertile Creation
			if (random(100) < waterPossibility)
			{
				instance_create_layer(posX, posY, 2, waterTile_obj);
			}
			else
			{
				grassTilei = instance_create_layer(posX, posY, 2, grassTile_obj);
				//Island Creation
				with (grassTilei)
				{
					if (instance_position(worldGenerator_obj.posX + 64, worldGenerator_obj.posY, waterTile_obj) == waterTile_obj && 
					instance_position(worldGenerator_obj.posX - 64, worldGenerator_obj.posY, waterTile_obj) == waterTile_obj && 
					instance_position(worldGenerator_obj.posX, worldGenerator_obj.posY + 64, waterTile_obj) == waterTile_obj && 
					instance_position(worldGenerator_obj.posX, worldGenerator_obj.posY - 64, waterTile_obj) == waterTile_obj)
					{
						if (random(100) < worldGenerator_obj.islandPossibility)
						{
							instance_destroy();
						}
					}
				}
			}
		}
	}
	//Mainbase Creation
	baseSpawnX = irandom_range(3, (mapSize/64) - 3)
	baseSpawnY = irandom_range(3, (mapSize/64) - 3)
	instance_create_layer(baseSpawnX * 64, baseSpawnY * 64, 1, mainBase_obj);
	instance_create_layer((baseSpawnX * 64) + 64, baseSpawnY * 64, 1, soldiers_obj);
	//Enemybase Creation
	baseSpawnX = irandom_range(3, (mapSize/64) - 3)
	baseSpawnY = irandom_range(3, (mapSize/64) - 3)
	instance_create_layer(baseSpawnX * 64, baseSpawnY * 64, 1, enemyBase_obj);
	instance_create_layer((baseSpawnX * 64) + 64, baseSpawnY * 64, 1, soldiersEnemy_obj);
	instance_create_layer((baseSpawnX * 64) - 64, baseSpawnY * 64, 1, soldiersEnemy_obj);
	instance_create_layer(baseSpawnX * 64, (baseSpawnY * 64) + 64, 1, workersEnemy_obj);
	mapLoading = false;
}

//Setting not walkable tiles
with (waterTile_obj)
{
	mp_grid_add_cell(global.grid, floor(x / 64), floor(y / 64));
}