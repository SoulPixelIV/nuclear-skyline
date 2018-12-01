/// @description Manager

if (keyboard_check_pressed(vk_escape))
{
	closingMenus_scr();
}

if (keyboard_check_pressed(ord("R")))
{
	nextRound_scr();
}

if (keyboard_check_pressed(ord("O")))
{
	cameraFocus_scr(soldiers_obj);
}


