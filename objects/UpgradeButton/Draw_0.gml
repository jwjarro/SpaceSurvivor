draw_self();

draw_set_font(Font1_upgrades);

draw_set_halign(fa_center);
draw_text_ext(x, y - 180, global.upgradeData[button_number-1].name, 32, 250);
draw_text_ext(x, y, global.upgradeData[button_number-1].description, 32, 250);
 
 
draw_set_font(Font1);