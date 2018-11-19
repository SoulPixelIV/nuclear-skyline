//Last save position
for (k = 0; k < instance_number(soldiersEnemy_obj); k++)
{
	soldiersEnemy[k] = instance_find(soldiersEnemy_obj, k);
	soldiersEnemy[k].lastSavePosX = soldiersEnemy[k].x;
	soldiersEnemy[k].lastSavePosY = soldiersEnemy[k].y;
}

//Calculate for every step
for (j = 0; j < soldiersEnemy_obj.steps; j++)
{	
	success = false;
	
	//Iterate through all instances
	for (i = 0; i < instance_number(soldiersEnemy_obj); i++)
	{
		soldiersEnemy[i] = instance_find(soldiersEnemy_obj, i);

		success = false;
		var moveDir = choose(0, 1, 2, 3);
		
		while (success == false)
		{
			{
			switch (moveDir)
				{
				case 0:
					if !(place_meeting(soldiersEnemy[i].x + 64, soldiersEnemy[i].y, obstacle_obj) && soldiersEnemy[i].x + 64 > worldGenerator_obj.mapSize - 128)
					{
					    soldiersEnemy[i].destinationPosX += 64;
						success = true;
					}
					else
					{
						soldiersEnemy[i].destinationPosX -= 64;
						success = true;
					}
					break;
				case 1:
					if !(place_meeting(soldiersEnemy[i].x - 64, soldiersEnemy[i].y, obstacle_obj) && soldiersEnemy[i].x - 64 < ((worldGenerator_obj.mapSize - worldGenerator_obj.mapSize) + 128))
					{
						soldiersEnemy[i].destinationPosX -= 64;
						success = true;
					}
					else
					{
						soldiersEnemy[i].destinationPosX += 64;
						success = true;
					}
					break;
				case 2:
					if !(place_meeting(soldiersEnemy[i].x, soldiersEnemy[i].y + 64, obstacle_obj) && soldiersEnemy[i].y + 64 > worldGenerator_obj.mapSize - 128)
					{
				        soldiersEnemy[i].destinationPosY += 64;
						success = true;
					}
					else
					{
						soldiersEnemy[i].destinationPosY -= 64;
						success = true;
					}
					break;
				case 3:
				    if !(place_meeting(soldiersEnemy[i].x, soldiersEnemy[i].y - 64, obstacle_obj) && soldiersEnemy[i].y - 64 < 128)
					{
				        soldiersEnemy[i].destinationPosY -= 64;
						success = true;
					}
					else
					{
						soldiersEnemy[i].destinationPosY += 64;
						success = true;
					}
					break;
				}
			}
		}
		if (soldiersEnemy[i].destinationPosX == soldiersEnemy[i].x && soldiersEnemy[i].destinationPosY == soldiersEnemy[i].y)
		{
			soldiersEnemy[i].destinationPosX = soldiersEnemy[i].lastSavePosX;
			soldiersEnemy[i].destinationPosY = soldiersEnemy[i].lastSavePosY;
		}
		soldiersEnemy[i].moving = true;
	}
}