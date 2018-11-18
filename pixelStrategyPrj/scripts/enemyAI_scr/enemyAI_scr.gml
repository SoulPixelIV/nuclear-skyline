for (i = 1; i <= soldiersEnemy_obj.steps; i++)
{
	soldiersEnemy_obj.lastSavePosX = soldiersEnemy_obj.x;
	soldiersEnemy_obj.lastSavePosY = soldiersEnemy_obj.y;
	soldiersEnemy_obj.moving = true;
	var moveDir = choose(0, 1, 2, 3);
	{
	switch (moveDir)
	   {
	   case 0:
		  if !(place_meeting(soldiersEnemy_obj.x + 64, soldiersEnemy_obj.y, obstacle_obj) && soldiersEnemy_obj.x + 64 > worldGenerator_obj.mapSize - 64)
		  {
		      soldiersEnemy_obj.destinationPosX += 64;
			  break;
		  }
		  else
		  {
			  moveDir += 1;
		  }
	   case 1:
		  if !(place_meeting(soldiersEnemy_obj.x - 64, soldiersEnemy_obj.y, obstacle_obj) && soldiersEnemy_obj.x - 64 < worldGenerator_obj.mapSize + 64)
		  {
			  soldiersEnemy_obj.destinationPosX -= 64;
			  break;
		  }
		  else
		  {
			  moveDir += 1;
		  }
	   case 2:
		  if !(place_meeting(soldiersEnemy_obj.x, soldiersEnemy_obj.y + 64, obstacle_obj) && soldiersEnemy_obj.y + 64 > worldGenerator_obj.mapSize - 64)
		  {
	          soldiersEnemy_obj.destinationPosY += 64;
	          break;
		  }
		  else
		  {
			  moveDir += 1;
		  }
	   case 3:
	      if !(place_meeting(soldiersEnemy_obj.x, soldiersEnemy_obj.y - 64, obstacle_obj) && soldiersEnemy_obj.y - 64 < worldGenerator_obj.mapSize + 64)
		  {
	          soldiersEnemy_obj.destinationPosY -= 64;
	          break;
		  }
		  else
		  {
			  soldiersEnemy_obj.destinationPosX = soldiersEnemy_obj.lastSavePosX;
			  soldiersEnemy_obj.destinationPosY = soldiersEnemy_obj.lastSavePosY;
		  }
	   }
	}
}