/// @description Camera Movement

//Camera Zoom
if (mouse_wheel_up())
{
	viewX -= 3 * 16;
	viewY -= 3 * 9;
}
if (mouse_wheel_down())
{
	viewX += 3 * 16;
	viewY += 3 * 9;
}

//Camera Movement
if (mouse_check_button(mb_right))
{
	xCoor -= mouse_x - mXPos;
	yCoor -= mouse_y - mYPos;
}
else
{
	mXPos = mouse_x;
	mYPos = mouse_y;
}

camera_set_view_size(view_camera[0], viewX, viewY);
camera_set_view_pos(view_camera[0], xCoor, yCoor);

/*
var viewmat = matrix_build_lookat(xCoor, yCoor, -1, xCoor, yCoor, 0, 0, 1, 0);
var projmat = matrix_build_projection_perspective(viewX, viewY, 1.0, 32000.0);

camera_set_view_mat(view_camera[0], viewmat);
camera_set_proj_mat(view_camera[0], projmat);
*/

