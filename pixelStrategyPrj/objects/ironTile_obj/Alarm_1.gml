/// @description Vision

if (visibility_scr(id))
{
	vision = true;
	sprite_index = ironTile_spr;
	image_index = 0;
	layer = 2;
}
else
{
	layer = 1;
	if (vision)
	{
		image_index = image_number - 1;
	}
	else
	{
		sprite_index = cloudTile_spr;
	}
}
alarm[1] = 100;
