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
if (keyboard_check_pressed(ord("Z")))
{
	selectedUnit.steps = 0;
	closingMenus_scr();
}
if (keyboard_check_pressed(ord("H")))
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





				


