//Draw beam
draw_primitive_begin(pr_trianglestrip);
draw_vertex_colour(x + lengthdir_x(2 * scale, image_angle + 90), y + lengthdir_y(2 * scale, image_angle + 90), c_green, 0.3);
draw_vertex_colour(x + lengthdir_x(2 * scale, image_angle - 90), y + lengthdir_y(2 * scale, image_angle - 90), c_green, 0.3);
draw_vertex_colour(Player.x + lengthdir_x(3 * global.scale, image_angle - 90), Player.y + lengthdir_y(3 * global.scale, image_angle - 90), c_green, 0.3);
draw_vertex_colour(Player.x + lengthdir_x(3 * global.scale, image_angle + 90), Player.y + lengthdir_y(3 * global.scale, image_angle + 90), c_green, 0.3);
draw_primitive_end();

draw_self();