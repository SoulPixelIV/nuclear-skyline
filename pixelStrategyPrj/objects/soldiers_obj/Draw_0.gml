/// @description Draw Circle

draw_self();
draw_text(200, 200, string(mXPos) + " " + string(mYPos));

if (drawCircle)
{
	draw_sprite(circleRed_spr, 0, x, y);
}
