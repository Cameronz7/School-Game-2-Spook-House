draw_set_font(myFont)
var xoffset = -80
var yoffset = -20

var text = "Welcome to the Macabre Museum" 
var text_width = string_width(text);
var text_height = string_height(text);
var start_x = (2 * (room_width / 5)) + xoffset;
var start_y = (room_height / 2) + xoffset;
var padding_x = 4;
var padding_y = 4; 

draw_rectangle_color(start_x, start_y, start_x + text_width + padding_x, start_y + text_height + padding_y, c_dkgray, c_dkgray ,c_dkgray ,c_dkgray, false);
draw_text(start_x + (padding_x / 2), start_y + padding_y, text);

var text = "Press E" 
var text_width = string_width(text);
var text_height = string_height(text);
var start_x = (room_width / 2) + xoffset;
var start_y = (4 * (room_height / 7)) + yoffset;
var padding_x = 4;
var padding_y = 4; 

draw_rectangle_color(start_x, start_y, start_x + text_width + padding_x, start_y + text_height + padding_y, c_dkgray, c_dkgray ,c_dkgray ,c_dkgray, false);
draw_text(start_x + (padding_x / 2), start_y + padding_y, text);