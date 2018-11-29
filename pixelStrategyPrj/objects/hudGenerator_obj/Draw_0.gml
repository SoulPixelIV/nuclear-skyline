/// @description Draw Values

if (building && gameManager_obj.selectedUnit != noone)
{
	{
		switch (itemBought)
		{
			case 0:
				draw_text(mainBase_obj.x - 18, mainBase_obj.y - 32, "-> " + string(countGameRounds));
				break;
			case 1:
				draw_text(selectedUnit.x - 18, selectedUnit.y - 32, "-> " + string(countGameRounds));
				break;
			case 2:
				draw_text(selectedPremilitary.x - 18, selectedPremilitary.y - 32, "-> " + string(countGameRounds));
				break;
			case 3:
				draw_text(selectedUnit.x - 18, selectedUnit.y - 32, "-> " + string(countGameRounds));
				break;
		}
	}
}
