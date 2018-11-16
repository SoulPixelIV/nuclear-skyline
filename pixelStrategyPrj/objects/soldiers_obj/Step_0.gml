/// @description Drag Movement

if (moving)
{	
    path = path_add();
    if (mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 1))
	{
		if ((((x - gameManager_obj.mXPos) / 64) + ((y - gameManager_obj.mYPos) / 64)) <= steps)
		{
			path_start(path, moveSpeed, path_action_stop, 0);
		}
	}
	moving = false;
	drawCircle = false;
}

if (gameManager_obj.mXPos > x && gameManager_obj.mYPos > y)
{
	if ((((x - gameManager_obj.mXPos) / 64) + ((y - gameManager_obj.mYPos) / 64)) <= steps)
	{
		outOfRange = false;
	}
	else
	{
		outOfRange = true;
	}
}


