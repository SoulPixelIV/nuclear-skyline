/// @description Drag Movement

if (moving)
{	
    path = path_add();
	if (mp_grid_path(global.grid, path, x, y, destinationPosX, destinationPosY, 1))
	{
		//if ((path_get_length(path) / 64) <= steps)
		//{
			path_start(path, moveSpeed, path_action_stop, 1);
		//}
	}
	moving = false;
}




