/// @description Draw Elements

draw_self();

if (drawCircle)
{
	draw_sprite(circleRed_spr, 0, x, y);
}

draw_text(x - 12, y - 64, string(steps) + "/" + string(stepsSave));
if (building && gameManager_obj.selectedUnit != noone)
{
	draw_text(x - 18, y - 32, "-> " + string(countGameRounds));
}

//Pointer
if (gameManager_obj.selectedUnit == id)
{
	draw_sprite_ext(workersPointer_spr, 0, x, y, 1, 1, 0, -1, 1);
}
else
{
	draw_sprite_ext(workersPointer_spr, 0, x, y, 1, 1, 0, -1, 0.3);
}
