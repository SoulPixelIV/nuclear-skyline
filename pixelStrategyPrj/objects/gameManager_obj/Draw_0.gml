/// @description Draw Destination

if (drawDestination)
{
	if !(is_undefined(selectedUnit))
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
