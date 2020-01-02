
if(not instance_exists(obj_player)){
	exit;
}

var target_x = obj_player.x + obj_player.image_xscale * 6 ;
var target_y = obj_player.y - 120;
x = lerp(x, target_x, 0.05);
y = lerp(y, target_y, 0.2);

camera_set_view_pos(view_camera[0], x - (width/2), y - (height/2));