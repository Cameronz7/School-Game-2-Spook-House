if (place_meeting(x,y + 1, obj_block)){
	gravity = 0
}else{
	gravity = 1
}

if(vspeed > 12){
	vspeed = 12
}

if (door_reset > 0){
	door_reset -= 1;
}
safe_count -= 1;
//show_debug_message(y)
if (safe_count <= 0){
	if(!instance_place(x , y + 0, obj_hidden_text)  ){
		obj_player.is_safe = false;
	}
}
is_walking -= 1;
if(is_walking <= 0){
	sprite_index = spr_player
}

//var right = keyboard_check(vk_right);
//var left = keyboard_check(vk_left);
//if ((right) and (left)){
//	left = false;
//}
//if (right){
//	x += 10;
//	image_xscale = 1;
//	sprite_index = spr_player_walking;
//	image_speed = 1;
//}
//if (left){
//	x += -10;
//	image_xscale = -1;
//	sprite_index = spr_player_walking;
//	image_speed = 1;
//}
//if (not right and not left){
//	sprite_index = spr_player;
//	image_speed = 1;
//}