/// @description Vision

if (visibility_scr(id))
{
	vision = true;
	sprite_index = ironTile_spr;
	image_speed = 0.6;
	layer = 2;
}
else
{
	layer = 1;
	if (vision)
	{
		sprite_index = ironTileDark_spr;
	}
	else
	{
		sprite_index = cloudTile_spr;
	}
}
alarm[1] = 30;
