/// @description Draw HUD Elements

draw_sprite(HUDStatline_spr, 0, 0, 0);
draw_sprite(actionWindow_spr, 0, 1184, 128);

//Money
draw_sprite(moneyIcon_spr, 0, 32, 16);
draw_text(56, 6, string(gameManager_obj.money));

//Data
draw_sprite(dataIcon_spr, 0, 128, 16);
draw_text(152, 6, string(gameManager_obj.data));



//GameRound
draw_text(1100, 6, "Round: " + string(gameManager_obj.gameRound));

