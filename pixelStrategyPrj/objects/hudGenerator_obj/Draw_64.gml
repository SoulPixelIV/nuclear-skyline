/// @description Draw HUD Elements

draw_sprite(HUDStatline_spr, 0, 0, 0);
draw_sprite(actionWindow_spr, 0, 1184, 128);

//Money
draw_sprite(moneyIcon_spr, 0, 32, 16);
draw_text(56, 6, string(gameManager_obj.money));

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

//GameRound
draw_text(1100, 6, "Round: " + string(gameManager_obj.gameRound));

