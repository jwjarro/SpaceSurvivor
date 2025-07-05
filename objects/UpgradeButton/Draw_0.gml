//Draw background/outline
draw_self();

//Setup text style
draw_set_font(Font1_upgrades);
draw_set_halign(fa_center);

//Draw info
draw_text_ext(x, y - 180, global.upgradeData[button_number-1].name, 32, 250); //Title
draw_text_ext(x, y, global.upgradeData[button_number-1].description, 32, 250); //Description
 
//Reset text style
draw_set_font(Font1);
draw_set_halign(fa_left);