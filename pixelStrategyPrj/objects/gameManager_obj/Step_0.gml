/// @description Closing Menu

if (keyboard_check_pressed(vk_escape))
{
	shopMenu = false;
	unitMenu = false;
	hudGenerator_obj.cursorPos = 0;
}
