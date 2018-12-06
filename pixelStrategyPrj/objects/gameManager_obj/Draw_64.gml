/// @description Chat

if (chatOpen)
{
	draw_text(32, view_get_hport(0) - 48, "> ");
}

draw_text_ext(48, view_get_hport(0) - 48, chatStr, 32, 256);

//Draw Chat History
draw_text(48, view_get_hport(0) - 80, chatHistory[0]);
draw_text(48, view_get_hport(0) - 100, chatHistory[1]);
draw_text(48, view_get_hport(0) - 120, chatHistory[2]);
draw_text(48, view_get_hport(0) - 140, chatHistory[3]);
draw_text(48, view_get_hport(0) - 160, chatHistory[4]);
draw_text(48, view_get_hport(0) - 180, chatHistory[5]);
draw_text(48, view_get_hport(0) - 200, chatHistory[6]);