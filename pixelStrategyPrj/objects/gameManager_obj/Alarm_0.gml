/// @description MoneyIO

//Calculate MoneyIO
//Cash out
moneyIO = 0;
types[0] = soldiers_obj;
types[1] = workers_obj;

for (var l = 0; l < array_length_1d(types); l++)
{
	if (instance_exists(types[l]))
	{
		moneyIO -= (types[l].unitCost) * instance_number(types[l]);
	}
}

//Cash in
types2[0] = ironFactory_obj;

for (var l = 0; l < array_length_1d(types2); l++)
{
	if (instance_exists(types2[l]))
	{
		moneyIO += (types2[l].unitCost) * instance_number(types2[l]);
	}
}

//moneyIO = posCash - negCash;
alarm[0] = 100;
