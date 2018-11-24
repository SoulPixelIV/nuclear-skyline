/// @description Menu Selection

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
		gameManager_obj.money -= 250;
		instance_create_layer(mainBase_obj.x + 64, mainBase_obj.y, 1, workers_obj);
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
		gameManager_obj.money -= 750;
		instance_create_layer(mainBase_obj.x + 64, mainBase_obj.y, 1, premilitaryTrainingBuilding_obj);
	}
}
		
