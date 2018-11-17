/// @description Drag Movement

if (moving)
{	
    path = path_add();
	if (dirMove == 0)
	{
	    if (mp_grid_path(global.grid, path, x, y, x + 64, y, 1))
		{
			if ((path_get_length(path) / 64) <= steps)
			{
				path_start(path, moveSpeed, path_action_stop, 0);
			}
		}
		moving = false;
		steps -= 1;
	}
	if (dirMove == 1)
	{
	    if (mp_grid_path(global.grid, path, x, y, x - 64, y, 1))
		{
			if ((path_get_length(path) / 64) <= steps)
			{
				path_start(path, moveSpeed, path_action_stop, 0);
			}
		}
		moving = false;
	}
	if (dirMove == 2)
	{
	    if (mp_grid_path(global.grid, path, x, y, x, y + 64, 1))
		{
			if ((path_get_length(path) / 64) <= steps)
			{
				path_start(path, moveSpeed, path_action_stop, 0);
			}
		}
		moving = false;
	}
	if (dirMove == 3)
	{
	    if (mp_grid_path(global.grid, path, x, y, x, y - 64, 1))
		{
			if ((path_get_length(path) / 64) <= steps)
			{
				path_start(path, moveSpeed, path_action_stop, 0);
			}
		}
		moving = false;
	}
}




