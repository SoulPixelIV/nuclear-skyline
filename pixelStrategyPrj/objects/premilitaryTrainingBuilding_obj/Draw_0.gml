/// @description Draw Elements

draw_self();

draw_text(x - 16, y - 64, string(unitHealth));

if (building && gameManager_obj.selectedUnit != noone)
{
	draw_text(x - 18, y - 32, "-> " + string(countGameRounds));
}
