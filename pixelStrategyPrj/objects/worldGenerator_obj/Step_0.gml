/// @description World Generator

//###Vars###
global.sizeX = mapSizeIcon_obj.mapSize;
global.sizeY = mapSizeIcon_obj.mapSize;

//0% - 100%
waterPossibility = waterPossibilityIcon_obj.percentage;
islandPossibility = islandPossibilityIcon_obj.percentage;

posX = 32;
posY = 32;

if (mapLoading)
{
	randomise();

	//Map creation
	for (posY = 32; posY < global.sizeY; posY += 32)
	{
		for (posX = 32; posX < global.sizeX; posX += 32)
		{
			//Watertile Creation
			if (random(100) < waterPossibility)
			{
				instance_create_layer(posX, posY, 1, waterTile_obj);
			}
			else
			{
				grassTilei = instance_create_layer(posX, posY, 1, grassTile_obj);
				//Island Creation
				with (grassTilei)
				{
					if (instance_position(worldGenerator_obj.posX + 32, worldGenerator_obj.posY, waterTile_obj) == waterTile_obj && 
					instance_position(worldGenerator_obj.posX - 32, worldGenerator_obj.posY, waterTile_obj) == waterTile_obj && 
					instance_position(worldGenerator_obj.posX, worldGenerator_obj.posY + 32, waterTile_obj) == waterTile_obj && 
					instance_position(worldGenerator_obj.posX, worldGenerator_obj.posY - 32, waterTile_obj) == waterTile_obj)
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
	//Mainbases Creation
	base1SpawnX = random_range(1, mapSizeIcon_obj.mapSize / 16)
	base1SpawnY = random_range(1, mapSizeIcon_obj.mapSize / 16)
	instance_create_layer(base1SpawnX * 16, base1SpawnY * 16, 0, mainBase_obj);
	mapLoading = false;
}