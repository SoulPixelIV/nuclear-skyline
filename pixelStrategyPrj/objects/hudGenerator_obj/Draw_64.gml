/// @description Draw HUD Elements

draw_sprite(HUDStatline_spr, 0, 0, 0);
draw_sprite(pizza_spr, 0, 1184, 128);

draw_text(90, 90, "View = " + string(camera_obj.viewX) + "  " + string(camera_obj.viewY));
