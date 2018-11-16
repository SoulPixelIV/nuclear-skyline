/// @description Creating Values

mapSize = 1024;
mapLoading = true;

//Creating Grid
global.grid = mp_grid_create(0, 0, mapSize / 64, mapSize / 64, 64, 64);

with (waterTile_obj)
{
	mp_grid_add_cell(global.grid, floor(x / 64), floor(y / 64));
}



