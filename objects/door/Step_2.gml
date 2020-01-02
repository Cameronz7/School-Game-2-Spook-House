
var floor1 = 864
var floor2 = 2208
var floor3 = 3744
var blackness_time = 10;
var adj_X = 100
var adj_Y = 300

if (player_next_too == true){
	//show_debug_message("Door");
	if (obj_player.door_reset == 0){
		if keyboard_check(ord("E"))
		{
			obj_player.door_reset = 40;
			//show_debug_message("pressed door");
			switch (location){
				case 1:
				if(obj_player.has_key1 == true){
					obj_player.safe_count = obj_player.safe_count_max
					audio_play_sound(sDoor_Close, 2, false);
					audio_play_sound(sDemon_Your_Soul_is_mine, 2, false);
					obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
					obj_player.x = 1184
					obj_player.y = floor3
					obj_camera.x = 1184
					obj_camera.y = floor3
					
					obj_enemy3_AI.state = "chase"
				}else{
					instance_create_layer(obj_player.x - 350,obj_player.y - 350, "pop_up_text", obj_locked)
				}
				break;
				case 2:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 3232
				obj_player.y = floor2
				obj_camera.x = 3232
				obj_camera.y = floor2
				break;
				case 3:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
				obj_player.x = 768
				obj_player.y = floor2
				obj_camera.x = 768
				obj_camera.y = floor2
				obj_enemy1_AI.state = "still"
				obj_enemy1.x = obj_enemy1.x_original
				obj_enemy1.y = obj_enemy1.y_original
				break;
				case 4:
				if(obj_player.has_key2 == true){
					obj_player.safe_count = obj_player.safe_count_max
					audio_play_sound(sDoor_Close, 2, false);
					obj_blackness.alarm[0] = blackness_time;
						obj_blackness.visible = true;
					obj_player.x = 4480
					obj_player.y = floor1
					obj_camera.x = 4480
					obj_camera.y = floor1
					obj_enemy1_AI.state = "chase"
				}else{
					instance_create_layer(obj_player.x - 350,obj_player.y - 350, "pop_up_text", obj_locked)
				}
				break;
				case 5:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
				obj_player.x = 6752
				obj_player.y = floor2
				obj_camera.x = 6752
				obj_camera.y = floor2
				obj_enemy2_AI.state = "chase"
				break;
				case 6:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
				obj_player.x = 2912
				obj_player.y = floor1
				obj_camera.x = 2912
				obj_camera.y = floor1
				break;
				case 7:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
				obj_player.x = 1184
				obj_player.y = floor1
				obj_camera.x = 1184
				obj_camera.y = floor1
				obj_enemy3_AI.state = "still"
				obj_enemy3.x = obj_enemy3.x_original
				obj_enemy3.y = obj_enemy3.y_original
				break;
				case 8:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
				obj_player.x = 1504
				obj_player.y = floor2
				obj_camera.x = 1504
				obj_camera.y = floor2
				obj_enemy2_AI.state = "still"
				obj_enemy2.x = obj_enemy2.x_original
				obj_enemy2.y = obj_enemy2.y_original
				break;
				case 9:
				
				instance_create_layer(obj_player.x - 350,obj_player.y - 350, "pop_up_text", obj_locked)
				break;
				case 10:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
				obj_player.x = 4416
				obj_player.y = floor3
				obj_camera.x = 4416
				obj_camera.y = floor3
				obj_enemy3_AI.state = "still"
				obj_enemy3.x = obj_enemy3.x_original
				obj_enemy3.y = obj_enemy3.y_original
				break;
				case 11:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 3264
				obj_player.y = floor3
				obj_camera.x = 3264
				obj_camera.y = floor3
				break;
				case 201:
				room_goto_next();
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 2240 + adj_X
				obj_player.y = 6528+ adj_Y
				obj_camera.x = 2240
				obj_camera.y = 6528
				break;
				case 202:
				obj_player.safe_count = obj_player.safe_count_max
				if(obj_player.has_key4 == true){
					audio_play_sound(sDoor_Close, 2, false);
					obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
					obj_player.x = 2976+ adj_X
					obj_player.y = 10272+ adj_Y
					obj_camera.x = 2976
					obj_camera.y = 10272
					obj_enemyChaser_AI.state = "chase"
				}else{
					instance_create_layer(obj_player.x - 350,obj_player.y - 350, "pop_up_text", obj_locked)
				}
				break;
				case 203:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 5344+ adj_X
				obj_player.y = 6528+ adj_Y
				obj_camera.x = 5344
				obj_camera.y = 6528
				break;
				case 204:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 896+ adj_X
				obj_player.y = 7584+ adj_Y
				obj_camera.x = 896
				obj_camera.y = 7584
				break;
				case 205:
				obj_player.safe_count = obj_player.safe_count_max
				if(obj_player.has_key3 == true){
					audio_play_sound(sDoor_Close, 2, false);
					obj_blackness.alarm[0] = blackness_time;
					obj_blackness.visible = true;
					obj_player.x = 1472+ adj_X
					obj_player.y = 11520+ adj_Y
					obj_camera.x = 2240
					obj_camera.y = 6528
				}else{
					instance_create_layer(obj_player.x - 350,obj_player.y - 350, "pop_up_text", obj_locked)
				}
				break;
				case 206:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 640+ adj_X
				obj_player.y = 10272+ adj_Y
				obj_camera.x = 640
				obj_camera.y = 10272
				break;
				case 207:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 800+ adj_X
				obj_player.y = 8736+ adj_Y
				obj_camera.x = 800
				obj_camera.y = 8736
				break;
				case 208:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 6784+ adj_X
				obj_player.y = 10272+ adj_Y
				obj_camera.x = 6784
				obj_camera.y = 10272
				break;
				case 209:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 5440+ adj_X
				obj_player.y = 4704+ adj_Y
				obj_camera.x = 5440
				obj_camera.y = 4704
				break;
				case 210:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 1024+ adj_X
				obj_player.y = 6528+ adj_Y
				obj_camera.x = 1024
				obj_camera.y = 6528
				break;
				case 211:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 2208+ adj_X
				obj_player.y = 7584+ adj_Y
				obj_camera.x = 2208
				obj_camera.y = 7584
				break;
				case 212:
				obj_player.safe_count = obj_player.safe_count_max
				audio_play_sound(sDoor_Close, 2, false);
				obj_blackness.alarm[0] = blackness_time;
				obj_blackness.visible = true;
				obj_player.x = 800+ adj_X
				obj_player.y = 4224+ adj_Y
				obj_camera.x = 672
				obj_camera.y = 4224
				obj_enemyChaser_AI.state = "still"
				obj_enemy_chaser.x = obj_enemy_chaser.x_original
				obj_enemy_chaser.y = obj_enemy_chaser.y_original
				break;
			}
		}
	}
}
