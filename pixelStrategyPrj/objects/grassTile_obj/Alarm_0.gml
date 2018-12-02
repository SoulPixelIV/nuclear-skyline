/// @description Vision

if (visibility_scr(id))
{
	vision = true;
	sprite_index = grassTile_spr;
	layer = 2;
}
else
{
	layer = 1;
	if (vision)
	{
		sprite_index = grassTileDark_spr;
	}
	else
	{
		sprite_index = cloudTile_spr;
	}
}
alarm[0] = 30;
