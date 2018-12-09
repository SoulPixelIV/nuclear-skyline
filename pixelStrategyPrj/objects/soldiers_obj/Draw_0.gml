/// @description Draw Elements

draw_self();

if (drawCircle)
{
	draw_sprite(circleRed_spr, 0, x, y);
}

draw_text(x - 12, y - 64, string(steps) + "/" + string(stepsSave));

//Pointer
if (gameManager_obj.selectedUnit == id)
{
	draw_sprite_ext(soldiersPointer_spr, 0, x, y, 1, 1, 0, -1, 1);
}
else
{
	draw_sprite_ext(soldiersPointer_spr, 0, x, y, 1, 1, 0, -1, 0.3);
}
