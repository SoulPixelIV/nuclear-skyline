/// @description Chat

if (chatOpen)
{
	draw_text(32, view_get_hport(0) - 48, "> ");
}

draw_text_ext(48, view_get_hport(0) - 48, chatStr, 32, 256);

//Draw Chat History
draw_text(48, view_get_hport(0) - 80, chatHistory[0]);
draw_text(48, view_get_hport(0) - 112, chatHistory[1]);
draw_text(48, view_get_hport(0) - 144, chatHistory[2]);
draw_text(48, view_get_hport(0) - 176, chatHistory[3]);
