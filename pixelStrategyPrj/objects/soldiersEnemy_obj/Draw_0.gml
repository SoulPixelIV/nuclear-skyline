/// @description Draw Elements

draw_self();

if (drawCircle)
{
	draw_sprite(circleRed_spr, 0, x, y);
}

draw_text(x - 12, y - 64, string(steps) + "/" + string(stepsSave));
