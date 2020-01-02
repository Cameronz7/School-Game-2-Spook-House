state = obj_enemy3_AI.state
switch(state){
	case "still":
	direction = 0;
	speed = 0.0;
	break;
	case "chase":
	if(obj_player.is_safe == false){
		direction = point_direction(x,y, obj_player.x, obj_player.y)
	}else{
		direction = point_direction(x,y, x_standing, y_standing)
		if ((x >= x_standing - 50) and (x <= x_standing + 50) and (y >= y_standing - 50) and (y <= y_standing + 50)){
			speed = 0;
		}
	}
	
	if (speed < 11){
		speed += 0.10
	}
	break;
	default:
	break;
}