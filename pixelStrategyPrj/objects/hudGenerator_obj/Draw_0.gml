/// @description Draw Values

if (building && gameManager_obj.selectedUnit != noone)
{
	{
		switch (itemBought)
		{
			case 1:
				draw_text(mainBase_obj.x - 18, mainBase_obj.y - 32, "-> " + string(countGameRounds));
				break;
		}
	}
}
