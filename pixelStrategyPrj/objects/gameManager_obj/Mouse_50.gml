/// @description Checking Mouse Coordinates

mXPos = (floor((mouse_x + 32) / 64)) * 64;
mYPos = (floor((mouse_y + 32) / 64)) * 64;
drawDestination = true;

if (selectedUnit != noone)
{
	selectedUnit.drawCircle = true;
}