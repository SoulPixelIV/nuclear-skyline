/// @description Drag Movement

if (moving)
{	
    path = path_add();
    if (mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 1))
	{
		if ((path_get_length(path) / 64) <= steps + 1)
		{
			path_start(path, moveSpeed, path_action_stop, 0);
		}
	}
	moving = false;
	drawCircle = false;
}

path = path_add();
if (mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 1))
{
	if ((path_get_length(path) / 64) <= steps + 1)
	{
		outOfRange = false;
	}
	else
	{
		outOfRange = true;
	}
}



