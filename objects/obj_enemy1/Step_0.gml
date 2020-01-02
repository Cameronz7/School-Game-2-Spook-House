state = obj_enemy1_AI.state
switch(state){
	case "still":
	direction = 0;
	speed = 0;
	break;
	case "chase":
	//direction = point_direction(x,y, obj_player.x, obj_player.y)
	//if (speed < 3.5){
	//	speed += 0.25
	//}
	if (down_state == true){
		y += 3;
		count -= 1;
		if (count <= 0){
			count = count_max;
			up_state = true;
			down_state = false;
		}
	}
	if (up_state == true){
		y -= 3;
		count -= 1;
		if (count <= 0){
			count = count_max;
			up_state = false;
			down_state = true;
		}
	}
	if (x >= obj_player.x){
		if(obj_player.is_safe == false){
			x -= monster_speed;
		}else{
			x += monster_speed - 1;
		}
	}
	if (x < obj_player.x){
		if(obj_player.is_safe == false){
			x += monster_speed;
		}else{
			x -= monster_speed -1 ;
		}
	}
	
	break;
	default:
	break;
}
