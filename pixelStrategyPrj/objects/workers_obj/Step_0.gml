/// @description Drag Movement

if (moving && !building)
{	
    path = path_add();
    if (mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 0))
	{
		if ((floor(path_get_length(path) / 64)) <= steps)
		{
			savePosX = x;
			savePosY = y;
			steps -= (floor(path_get_length(path) / 64));
			path_start(path, moveSpeed, path_action_stop, 1);
			if (instance_position(gameManager_obj.mXPos, gameManager_obj.mYPos, enemy_obj))
			{
				attacking = true;
			}
		}
	}
	moving = false;
	drawCircle = false;
}

if (attacking)
{
	var enemy = instance_position(gameManager_obj.mXPos, gameManager_obj.mYPos, enemy_obj);
	enemy.unitHealth -= unitDamage;
	unitHealth -= (enemy.unitDamage / 2);
	moving = true;
	gameManager_obj.mXPos = savePosX;
	gameManager_obj.mYPos = savePosY;
	attacking = false;
}

//Check if out of range
path = path_add();
if (mp_grid_path(global.grid, path, x, y, gameManager_obj.mXPos, gameManager_obj.mYPos, 1))
{
	if ((floor(path_get_length(path) / 64)) <= steps)
	{
		if (place_meeting(gameManager_obj.mXPos, gameManager_obj.mYPos, waterTile_obj))
		{
			outOfRange = true;
		}
		else
		{
			outOfRange = false;
		}
	}
	else
	{
		outOfRange = true;
	}
}

//Death
if (unitHealth <= 0)
{
	gameManager_obj.selectedUnit = noone;
	closingMenus_scr();
	instance_destroy();
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
					instance_create_layer(x, y, 2, premilitaryTrainingBuilding_obj);
					break;
				case 2:
					instance_create_layer(x, y, 2, ironFactory_obj);
					break;
			}
		}
}




