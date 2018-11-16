/// @description World Generator

//###Vars###
global.sizeX = mapSizeIcon_obj.mapSize;
global.sizeY = mapSizeIcon_obj.mapSize;

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
				instance_create_layer(posX, posY, 1, waterTile_obj);
			}
			else
			{
				grassTilei = instance_create_layer(posX, posY, 1, grassTile_obj);
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
	//Mainbases Creation
	base1SpawnX = irandom_range(1, (mapSizeIcon_obj.mapSize/64))
	base1SpawnY = irandom_range(1, (mapSizeIcon_obj.mapSize/64))
	instance_create_layer(base1SpawnX * 64, base1SpawnY * 64, 0, mainBase_obj);
	mapLoading = false;
}