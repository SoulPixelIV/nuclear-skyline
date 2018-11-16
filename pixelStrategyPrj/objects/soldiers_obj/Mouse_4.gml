/// @description Drag Movement

if (waiting)
{	
    path = path_add();
    if mp_grid_path(global.grid, path, x, y, mXPos, mYPos, 1)
	{
		path_start(path, 0, 3, 0);
	}
	waiting = false;
}

if (waiting == false)
{
	waiting = true;
}
