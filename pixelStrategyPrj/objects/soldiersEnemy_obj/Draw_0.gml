/// @description Draw Elements

draw_self();

draw_text(x - 18, y - 64, string(unitHealth) + "/" + string(unitHealthSave));

//Pointer
draw_sprite_ext(soldiersPointer_spr, faction, x, y, 1, 1, 0, -1, 0.6);
