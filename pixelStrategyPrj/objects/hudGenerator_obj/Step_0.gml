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
if (gameManager_obj.shopMenu)
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
		itemBought = 1;
		gameManager_obj.money -= 250;
		closingMenus_scr();
	}
}

//Workers Menu
if (gameManager_obj.workersMenu)
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
		selectedUnit.countGameRounds = 9;
		selectedUnit.gameRoundSave = gameManager_obj.gameRound;
		selectedUnit.building = true;
		selectedUnit.itemBought = 1;
		gameManager_obj.money -= 750;
		closingMenus_scr();	
	}
	if (keyboard_check_pressed(vk_enter) && cursorPos == 1)
	{
		if (place_meeting(selectedUnit.x, selectedUnit.y, ironTile_obj))
		{
			selectedUnit.countGameRounds = 18;
			selectedUnit.gameRoundSave = gameManager_obj.gameRound;
			selectedUnit.building = true;
			selectedUnit.itemBought = 2;
			gameManager_obj.money -= 430;
			closingMenus_scr();
		}
	}
}

//Premilitary Menu
if (gameManager_obj.premilitaryMenu)
{
	if (keyboard_check_pressed(vk_up) && cursorPos != 0)
	{
		cursorPos--;
	}
	if (keyboard_check_pressed(vk_down) && cursorPos < ((array_length_1d(premilitaryMenuElement)) - 1))
	{
		cursorPos++;
	}
	if (keyboard_check_pressed(vk_enter) && cursorPos == 0 && itemBought != 2)
	{
		selectedPremilitary.countGameRounds = 4;
		selectedPremilitary.gameRoundSave = gameManager_obj.gameRound;
		selectedPremilitary.building = true;
		selectedPremilitary.itemBought = 1;
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
				case 1:
					instance_create_layer(mainBase_obj.x - 64, mainBase_obj.y, 1, workers_obj);
					break;
			}
		}
}
