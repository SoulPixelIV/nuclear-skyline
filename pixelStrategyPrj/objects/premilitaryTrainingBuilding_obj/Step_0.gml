/// @description Health

//Death
if (unitHealth <= 0)
{
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
					instance_create_layer(x, y, 2, soldiers_obj);
					break;
			}
		}
}
