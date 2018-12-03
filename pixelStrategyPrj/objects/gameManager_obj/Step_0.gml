/// @description Manager

if (keyboard_check_pressed(vk_escape))
{
	closingMenus_scr();
}

if (keyboard_check_pressed(ord("R")))
{
	var roundDone = false;
	for (var l = 0; l < array_length_1d(global.types); l++)
	{
		if (instance_exists(global.types[l]))
		{	
			//Iterate through all instances
			for (var i = 0; i < instance_number(global.types[l]); i++)
			{
				type[i] = instance_find(global.types[l], i);
				if (type[i].steps > 0 && type[i].building == false)
				{
					roundDone = false;
					cameraFocus_scr(type[i]);
					return;
				}
				else
				{
					roundDone = true;
				}
			}
		}
	}
	if (roundDone)
	{
		nextRound_scr();
	}
}

//Shortcuts
if (selectedUnit != noone)
{
	if (keyboard_check_pressed(ord("Z")))
	{
		selectedUnit.steps = 0;
		closingMenus_scr();
	}
	if (keyboard_check_pressed(ord("H")) && selectedUnit.steps > 0)
	{
		if (selectedUnit.unitHealth < selectedUnit.unitHealthSave)
		{
			selectedUnit.steps = 0;
			if (selectedUnit.unitHealth + (selectedUnit.unitHealthSave / 6) > selectedUnit.unitHealthSave)
			{
				selectedUnit.unitHealth = selectedUnit.unitHealthSave;
			}
			else
			{
				selectedUnit.unitHealth += (selectedUnit.unitHealthSave / 6);
			}
			closingMenus_scr();
		}
	}
}

//Chat
if (keyboard_check_pressed(vk_tab))
{
	if (chatOpen)
	{
		chatOpen = false;
	}
	else
	{
		chatOpen = true;
	}
}

if (chatOpen)
{
	if (keyboard_lastkey != -1)
	{
		chatStr += keyboard_lastchar;
		keyboard_lastkey = -1;
	}
}

if (keyboard_check_pressed(vk_enter))
{
	//Go through every chat slot
	for (i = 0; i < array_length_1d(chatHistory); i++)
	{
		//Set chat slot to message
		if (chatHistory[i] == "")
		{
			chatHistory[i] = chatStr;
			break;
		}
		else
		{
			for (i = 2; i > 0; i--)
			{
				chatHistory[i+1] = chatHistory[i];
			}
			chatHistory[0] = chatStr;
			break;
		}
	}
	chatStr = "";
}
	




				


