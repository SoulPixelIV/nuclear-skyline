/// @description Menu Selection

//Action Window
imageTime -= 0.1;
if (imageTime <= 0)
{
	if (imageNum < imageMaxNum)
	{
		imageNum++;
	}
	else
	{
		imageNum = 0;
	}
	imageTime = 6;
}

//Shop Menu
if (gameManager_obj.shopMenu && !building)
{
	if (keyboard_check_pressed(vk_up) && cursorPos != 0)
	{
		cursorPos--;
	}
	if (keyboard_check_pressed(vk_down) && cursorPos < ((array_length_1d(shopMenuElement)) - 1))
	{
		cursorPos++;
	}
	if (keyboard_check_pressed(vk_enter) && cursorPos == 0)
	{
		countGameRounds = 6;
		gameRoundSave = gameManager_obj.gameRound;
		building = true;
		itemBought = 0;
		gameManager_obj.money -= 250;		
		closingMenus_scr();
	}
}

//Workers Menu
if (gameManager_obj.workersMenu && !building)
{
	if (keyboard_check_pressed(vk_up) && cursorPos != 0)
	{
		cursorPos--;
	}
	if (keyboard_check_pressed(vk_down) && cursorPos < ((array_length_1d(shopMenuElement)) - 1))
	{
		cursorPos++;
	}
	if (keyboard_check_pressed(vk_enter) && cursorPos == 0)
	{
		countGameRounds = 9;
		gameRoundSave = gameManager_obj.gameRound;
		building = true;
		itemBought = 1;
		gameManager_obj.money -= 750;
		closingMenus_scr();	
	}
}

//Premilitary Menu
if (gameManager_obj.premilitaryMenu && !building)
{
	if (keyboard_check_pressed(vk_up) && cursorPos != 0)
	{
		cursorPos--;
	}
	if (keyboard_check_pressed(vk_down) && cursorPos < ((array_length_1d(premilitaryMenuElement)) - 1))
	{
		cursorPos++;
	}
	if (keyboard_check_pressed(vk_enter) && cursorPos == 0)
	{
		countGameRounds = 4;
		gameRoundSave = gameManager_obj.gameRound;
		building = true;
		itemBought = 2;
		gameManager_obj.money -= 400;
		closingMenus_scr();
	}
}

//Building Progress
if (building && gameRoundSave != gameManager_obj.gameRound)
{
	countGameRounds -= 1;
	gameRoundSave++;
}
if (building && countGameRounds == 0)
{
	building = false;
		{
			switch (itemBought)
			{
				case 0:
					instance_create_layer(mainBase_obj.x + 64, mainBase_obj.y, 1, workers_obj);
					break;
				case 1:
					instance_create_layer(gameManager_obj.selectedUnit.x + 64, gameManager_obj.selectedUnit.y, 1, premilitaryTrainingBuilding_obj);
					break;
				case 2:
					instance_create_layer(gameManager_obj.selectedPremilitary.x + 64, gameManager_obj.selectedPremilitary.y, 1, soldiers_obj);
					break;
			}
		}
}
