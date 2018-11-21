gameManager_obj.gameRound += 1;

//Reset Steps
if (instance_exists(soldiers_obj))
{
	soldiers_obj.steps = soldiers_obj.stepsSave;
}
if (instance_exists(workers_obj))
{
	workers_obj.steps = workers_obj.stepsSave;
}

//Cash in
types[0] = soldiers_obj;
types[1] = workers_obj;

for (var l = 0; l < array_length_1d(types); l++)
{
	if (instance_exists(types[l]))
	{
		gameManager_obj.money -= (types[l].unitCost) * instance_number(types[l]);
	}
}

//Call Enemy AI
enemyAI_scr();

