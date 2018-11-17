/// @description Drag Movement

if (moving)
{	
    path = path_add();
    if (mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 1))
	{
		if ((path_get_length(path) / 64) <= steps)
		{
			steps -= (floor(path_get_length(path) / 64));
			path_start(path, moveSpeed, path_action_stop, 0);
		}
	}
	moving = false;
	drawCircle = false;
}

//Check if out of range
path = path_add();
if (mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 0))
{
	if ((path_get_length(path) / 64) <= steps)
	{
		if (place_meeting(gameManager_obj.mXPos, gameManager_obj.mYPos, waterTile_obj))
		{
			outOfRange = true;
		}
		else
		{
			outOfRange = false;
		}
	}
	else
	{
		outOfRange = true;
	}
}




