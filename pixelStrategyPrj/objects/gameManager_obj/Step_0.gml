/// @description Manager

if (keyboard_check_pressed(vk_escape))
{
	closingMenus_scr();
}

if (keyboard_check_pressed(ord("R")) && !chatOpen)
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
	if (roundDone || !instance_exists(unit_obj))
	{
		nextRound_scr();
	}
}

//Shortcuts
if (selectedUnit != noone && !chatOpen)
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

//Enter Chat
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
	var newChatStr = chatStr;
	if (keyboard_lastkey != -1)
	{
		chatStr += keyboard_lastchar;
		keyboard_lastkey = -1;
	}
	//Delete
	if (keyboard_check_pressed(vk_backspace))
	{
		chatStr = string_delete(newChatStr, string_length(newChatStr), 1);
	}	
	//History Paste
	if (keyboard_check_pressed(vk_up))
	{
		if (chatHistoryLine < array_length_1d(chatHistory) - 1)
		{
			chatHistoryLine++;
			chatStr = chatHistory[chatHistoryLine];
		}
	}
	if (keyboard_check_pressed(vk_down))
	{
		if (chatHistoryLine > 0)
		{
			chatHistoryLine--;
			chatStr = chatHistory[chatHistoryLine];
		}
	}
}

//Enter
if (keyboard_check_pressed(vk_enter) && chatOpen)
{
	chatHistoryLine = -1;
	//Set chat slot to message
	if (string_char_at(chatStr, 1) == ".")
	{
		chatStr = commands_scr(chatStr);
	}
	//Move History up
	for (i = array_length_1d(chatHistory) - 1; i > -1; i--)
	{
		chatHistory[i+1] = chatHistory[i];
	}
	chatHistory[0] = chatStr;
	chatStr = "";
}




				


