/// @description Vision

if (visibility_scr(id))
{
	sprite_index = waterTile_spr;
	layer = 2;
}
else
{
	sprite_index = cloudTile_spr;
	layer = 1;
}
alarm[0] = 100;
