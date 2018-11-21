global.loading = true;

//Iterate through all enemy types
for (var l = 0; l < array_length_1d(global.enemyTypes); l++)
{
	//Last save position
	for (var k = 0; k < instance_number(global.enemyTypes[l]); k++)
	{
		enemy[k] = instance_find(global.enemyTypes[l], k);
		enemy[k].lastSavePosX = enemy[k].x;
		enemy[k].lastSavePosY = enemy[k].y;
	}

	//Calculate for every step
	for (var j = 0; j < global.enemyTypes[l].steps; j++)
	{	
		success = false;
	
		//Iterate through all instances
		for (var i = 0; i < instance_number(global.enemyTypes[l]); i++)
		{
			enemy[i] = instance_find(global.enemyTypes[l], i);

			success = false;
			var moveDir = choose(0, 1, 2, 3);
		
			while (success == false)
			{
				{
				switch (moveDir)
					{
					case 0:
						if !(place_meeting(enemy[i].x + 64, enemy[i].y, obstacle_obj) && enemy[i].x + 64 > worldGenerator_obj.mapSize - 128)
						{
						    enemy[i].destinationPosX += 64;
							success = true;
						}
						else
						{
							enemy[i].destinationPosX -= 64;
							success = true;
						}
						break;
					case 1:
						if !(place_meeting(enemy[i].x - 64, enemy[i].y, obstacle_obj) && enemy[i].x - 64 < ((worldGenerator_obj.mapSize - worldGenerator_obj.mapSize) + 128))
						{
							enemy[i].destinationPosX -= 64;
							success = true;
						}
						else
						{
							enemy[i].destinationPosX += 64;
							success = true;
						}
						break;
					case 2:
						if !(place_meeting(enemy[i].x, enemy[i].y + 64, obstacle_obj) && enemy[i].y + 64 > worldGenerator_obj.mapSize - 128)
						{
					        enemy[i].destinationPosY += 64;
							success = true;
						}
						else
						{
							enemy[i].destinationPosY -= 64;
							success = true;
						}
						break;
					case 3:
					    if !(place_meeting(enemy[i].x, enemy[i].y - 64, obstacle_obj) && enemy[i].y - 64 < 128)
						{
					        enemy[i].destinationPosY -= 64;
							success = true;
						}
						else
						{
							enemy[i].destinationPosY += 64;
							success = true;
						}
						break;
					}
				}
			}
			if (enemy[i].destinationPosX == enemy[i].x && enemy[i].destinationPosY == enemy[i].y)
			{
				enemy[i].destinationPosX = enemy[i].lastSavePosX;
				enemy[i].destinationPosY = enemy[i].lastSavePosY;
			}
			enemy[i].moving = true;
		}
	}
}