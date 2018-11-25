/// @description Draw HUD Elements

draw_sprite(HUDStatline_spr, 0, 0, 0);
draw_sprite(actionWindow_spr, imageNum, 1184, 128);

//Debug
draw_text(32, 72, "Nuclear Skyline Version: " + string(global.gameVersion));
draw_text(32, 104, string(room_speed));
draw_text(32, 136, string(fps_real));

//Money
draw_sprite(moneyIcon_spr, 0, 32, 16);
if (gameManager_obj.money > 0)
{
	draw_text_color(56, 6, string(gameManager_obj.money), c_green, c_green, c_white, c_white, 255);
}
else
{
	draw_text_color(56, 6, string(gameManager_obj.money), c_red, c_red, c_white, c_white, 255);
}

//Data
draw_sprite(dataIcon_spr, 0, 128, 16);
draw_text(152, 6, string(gameManager_obj.data));

//Shop Menu
if (gameManager_obj.shopMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, 640, 360, 10, 10, 0, 0, image_alpha);
	//Draw Cursor
	draw_sprite(cursor_spr, 0, 400, 152 + (cursorPos * 32));
	//Draw Text Elements
	for (i = 0; i < array_length_1d(shopMenuElement); i++)
	{
		draw_text(256, 140 + (i * 32), shopMenuElement[i]);
	}
}

//Workers Menu
if (gameManager_obj.workersMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, 640, 360, 10, 10, 0, 0, image_alpha);
	//Draw Cursor
	draw_sprite(cursor_spr, 0, 400, 152 + (cursorPos * 32));
	//Draw Text Elements
	for (i = 0; i < array_length_1d(workersMenuElement); i++)
	{
		draw_text(256, 140 + (i * 32), workersMenuElement[i]);
	}
}

//Premilitary Menu
if (gameManager_obj.premilitaryMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, 640, 360, 10, 10, 0, 0, image_alpha);
	//Draw Cursor
	draw_sprite(cursor_spr, 0, 400, 152 + (cursorPos * 32));
	//Draw Text Elements
	for (i = 0; i < array_length_1d(premilitaryMenuElement); i++)
	{
		draw_text(256, 140 + (i * 32), premilitaryMenuElement[i]);
	}
}

//Unit Menu
if (gameManager_obj.unitMenu)
{
	//Draw Background
	draw_sprite_ext(menuBackground_spr, 0, 1100, 615, 4, 4, 0, 0, image_alpha);
	//Draw Text Elements
	if (gameManager_obj.selectedUnit != noone)
	{
		unitName = string(object_get_name(gameManager_obj.selectedUnit.object_index));
		unitNameCut = string_delete(unitName, string_length(unitName) - 3, 4);
		draw_text(960, 525, "Unit: " + string(unitNameCut));
		draw_text(980, 575, "Health: " + string(gameManager_obj.selectedUnit.unitHealth) + "/" + string(gameManager_obj.selectedUnit.unitHealthSave));
		draw_text(980, 607, "Damage: " + string(gameManager_obj.selectedUnit.unitDamage));
		draw_text(980, 639, "Unit Cost: " + string(gameManager_obj.selectedUnit.unitCost) + "$");
	}
}

//GameRound
draw_text(1100, 6, "Round: " + string(gameManager_obj.gameRound));

