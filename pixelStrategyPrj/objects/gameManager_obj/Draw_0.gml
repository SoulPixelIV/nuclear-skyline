/// @description Draw Destination

if (drawDestination)
{
	if (selectedUnit != noone)
	{
		if (selectedUnit.outOfRange)
		{
			draw_sprite(destinationSquare_spr, 0, mXPos, mYPos);
		}
		else
		{
			draw_sprite(destinationSquare_spr, 1, mXPos, mYPos);
		}
	}
}
