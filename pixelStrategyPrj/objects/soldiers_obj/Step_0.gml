/// @description Drag Movement

if (moving)
{	
    path = path_add();
    if mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 1)
	{
		path_start(path, 1, path_action_stop, 0);
	}
	moving = false;
	drawCircle = false;
}


