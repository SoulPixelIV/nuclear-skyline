if (string_pos(".help", argument0) == 1)
{
	return "Available commands: .fog -> Toggle Fog of War";
}
else if (string_pos(".fog", argument0) == 1)
{
	if (fog)
	{
		fog = false;
	}
	else
	{
		fog = true;
	}
	return "Toggled Fog of War."
}
else
{
	return "Command doesn't exist.";
}
