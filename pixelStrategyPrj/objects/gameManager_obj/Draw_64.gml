/// @description Chat

if (chatOpen)
{
	draw_text(16, 685, "> ");
}

draw_text_ext(32, 685, chatStr, 32, 256);

//Draw Chat History
draw_text(32, 653, chatHistory[0]);
draw_text(32, 621, chatHistory[1]);
draw_text(32, 589, chatHistory[2]);
draw_text(32, 557, chatHistory[3]);
