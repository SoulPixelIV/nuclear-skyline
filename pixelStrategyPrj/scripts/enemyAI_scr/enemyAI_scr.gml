for (i = 1; i <= soldiersEnemy_obj.steps; i++)
{	
	//Iterate through all instances
	for (i = 0; i < instance_number(soldiersEnemy_obj); i++)
	{
		soldiersEnemy[i] = instance_find(soldiersEnemy_obj, i);
		
		soldiersEnemy[i].lastSavePosX = soldiersEnemy[i].x;
		soldiersEnemy[i].lastSavePosY = soldiersEnemy[i].y;
		soldiersEnemy[i].moving = true;

		success = false;
		var moveDir = choose(0, 1, 2, 3);
		
		while (success == false)
		{
			{
			switch (moveDir)
				{
				case 0:
					if !(place_meeting(soldiersEnemy[i].x + 64, soldiersEnemy[i].y, obstacle_obj) && soldiersEnemy[i].x + 64 > worldGenerator_obj.mapSize - 64)
					{
					    soldiersEnemy[i].destinationPosX += 64;
						success = true;
						break;
					}
					else
					{
						soldiersEnemy[i].destinationPosX = soldiersEnemy_obj.lastSavePosX;
						soldiersEnemy[i].destinationPosY = soldiersEnemy_obj.lastSavePosY;
						moveDir = choose(0, 1, 2, 3);
						break;
					}
				case 1:
					if !(place_meeting(soldiersEnemy[i].x - 64, soldiersEnemy[i].y, obstacle_obj) && soldiersEnemy[i].x - 64 < worldGenerator_obj.mapSize + 64)
					{
						soldiersEnemy[i].destinationPosX -= 64;
						success = true;
						break;
					}
					else
					{
						soldiersEnemy[i].destinationPosX = soldiersEnemy_obj.lastSavePosX;
						soldiersEnemy[i].destinationPosY = soldiersEnemy_obj.lastSavePosY;
						moveDir = choose(0, 1, 2, 3);
						break;
					}
				case 2:
					if !(place_meeting(soldiersEnemy[i].x, soldiersEnemy[i].y + 64, obstacle_obj) && soldiersEnemy[i].y + 64 > worldGenerator_obj.mapSize - 64)
					{
				        soldiersEnemy[i].destinationPosY += 64;
						success = true;
				        break;
					}
					else
					{
						soldiersEnemy[i].destinationPosX = soldiersEnemy_obj.lastSavePosX;
						soldiersEnemy[i].destinationPosY = soldiersEnemy_obj.lastSavePosY;
						moveDir = choose(0, 1, 2, 3);
						break;
					}
				case 3:
				    if !(place_meeting(soldiersEnemy[i].x, soldiersEnemy[i].y - 64, obstacle_obj) && soldiersEnemy[i].y - 64 < worldGenerator_obj.mapSize + 64)
					{
				        soldiersEnemy[i].destinationPosY -= 64;
						success = true;
				        break;
					}
					else
					{
						soldiersEnemy[i].destinationPosX = soldiersEnemy_obj.lastSavePosX;
						soldiersEnemy[i].destinationPosY = soldiersEnemy_obj.lastSavePosY;
						moveDir = choose(0, 1, 2, 3);
						break;
					}
				}
			}
		}
	}
}