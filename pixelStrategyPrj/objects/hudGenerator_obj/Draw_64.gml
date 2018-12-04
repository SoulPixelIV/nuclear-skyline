/// @description Draw HUD Elements

draw_sprite(HUDStatline_spr, 0, 0, 0);
draw_sprite(actionWindow_spr, imageNum, view_get_wport(0) - 90, 138);

//Round Button
draw_sprite(HUDRoundButton_spr, 0, view_get_wport(0) - 264, view_get_hport(0) - 240);
draw_text(view_get_wport(0) - 200, view_get_hport(0) - 234, "Next Round [R]");

//Debug
draw_text(32, 72, "Nuclear Skyline Version: " + string(global.gameVersion));
draw_text(32, 104, string(room_speed));
draw_text(32, 136, string(fps_real));

//Money
draw_sprite(moneyIcon_spr, 0, 32, 24);
if (gameManager_obj.money > 0 && gameManager_obj.moneyIO > 0)
{
	draw_text_color(56, 12, string(gameManager_obj.money) + " (" + string(gameManager_obj.moneyIO) + ")", c_green, c_green, c_white, c_white, 255);
}
else
{
	draw_text_color(56, 12, string(gameManager_obj.money) + " (" + string(gameManager_obj.moneyIO) + ")", c_red, c_red, c_white, c_white, 255);
}

//Data
draw_sprite(dataIcon_spr, 0, 192, 24);
draw_text(216, 12, string(gameManager_obj.data));

//GameRound
draw_text(view_get_wport(0) - 128, 12, "Round: " + string(gameManager_obj.gameRound));

var cursorY = ((view_get_hport(0) / 4) + 60) + (cursorPos * 32);
//Shop Menu
if (gameManager_obj.shopMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, view_get_wport(0) / 2, view_get_hport(0) / 2, 10, 10, 0, 0, image_alpha);
	//Draw Cursor
	var itemLength = string_width(shopMenuElement[cursorPos]) + (view_get_wport(0) - (view_get_wport(0) / 2)) - 384;
	draw_sprite(cursor_spr, 0, itemLength, cursorY);
	//Draw Text Elements
	for (i = 0; i < array_length_1d(shopMenuElement); i++)
	{
		draw_text((view_get_wport(0) - (view_get_wport(0) / 2)) - 400, ((view_get_hport(0) / 4) + 48) + (i * 32), shopMenuElement[i]);
	}
}

//Workers Menu
if (gameManager_obj.workersMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, view_get_wport(0) / 2, view_get_hport(0) / 2, 10, 10, 0, 0, image_alpha);
	//Draw Cursor
	var itemLength = string_width(workersMenuElement[cursorPos]) + (view_get_wport(0) - (view_get_wport(0) / 2)) - 384;
	draw_sprite(cursor_spr, 0, itemLength, cursorY);
	//Draw Text Elements
	for (i = 0; i < array_length_1d(workersMenuElement); i++)
	{
		draw_text((view_get_wport(0) - (view_get_wport(0) / 2)) - 400, ((view_get_hport(0) / 4) + 48) + (i * 32), workersMenuElement[i]);
	}
}

//Premilitary Menu
if (gameManager_obj.premilitaryMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, view_get_wport(0) / 2, view_get_hport(0) / 2, 10, 10, 0, 0, image_alpha);
	//Draw Cursor
	var itemLength = string_width(premilitaryMenuElement[cursorPos]) + (view_get_wport(0) - (view_get_wport(0) / 2)) - 384;
	draw_sprite(cursor_spr, 0, itemLength, cursorY);
	//Draw Text Elements
	for (i = 0; i < array_length_1d(premilitaryMenuElement); i++)
	{
		draw_text((view_get_wport(0) - (view_get_wport(0) / 2)) - 400, ((view_get_hport(0) / 4) + 48) + (i * 32), premilitaryMenuElement[i]);
	}
}

//Unit Menu
if (gameManager_obj.unitMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, view_get_wport(0) - 180, view_get_hport(0) - 108, 4, 4, 0, 0, image_alpha);
	//Draw Text Elements
	if (gameManager_obj.selectedUnit != noone)
	{
		unitName = string(object_get_name(gameManager_obj.selectedUnit.object_index));
		unitNameCut = string_delete(unitName, string_length(unitName) - 3, 4);
		draw_text(view_get_wport(0) - 324, view_get_hport(0) - 192, "Unit: " + string(unitNameCut));
		draw_text(view_get_wport(0) - 324, view_get_hport(0) - 160, "Health: " + string(gameManager_obj.selectedUnit.unitHealth) + "/" + string(gameManager_obj.selectedUnit.unitHealthSave));
		draw_text(view_get_wport(0) - 324, view_get_hport(0) - 128, "Damage: " + string(gameManager_obj.selectedUnit.unitDamage));
		draw_text(view_get_wport(0) - 324, view_get_hport(0) - 96, "Unit Cost: " + string(gameManager_obj.selectedUnit.unitCost) + "$");
		
		draw_text(view_get_wport(0) - 324, view_get_hport(0) - 48, "[Z]Sleep");
		draw_text(view_get_wport(0) - 228, view_get_hport(0) - 48, "[H]Heal");
		draw_text(view_get_wport(0) - 132, view_get_hport(0) - 48, "[U]Upgrade");
	}
}

//Chat Menu
//Draw Background
draw_sprite_ext(menuBackground_spr, 0, 228, view_get_hport(0) - 112, 5, 4, 0, 0, image_alpha);

