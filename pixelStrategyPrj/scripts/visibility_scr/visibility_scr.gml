if (!gameManager_obj.fog)
{
	return true;
}
else
{
	with (argument0)
	{
		//Main Base
		if (distance_to_object(mainBase_obj) < 128)
		{
			return true;
		}
		//Units
		if (distance_to_object(instance_nearest(x, y, unit_obj)) < 64)
		{
			return true;
		}
		return false;
	}
}