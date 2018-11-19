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

//Call Enemy AI
enemyAI_scr();

