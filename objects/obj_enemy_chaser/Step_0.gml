state = obj_enemyChaser_AI.state

switch(state){
	case "still":
	direction = 0;
	speed = 0.0;
	break;
	case "chase":
	if(obj_player.is_safe == false){
		direction = point_direction(x,y, obj_player.x, obj_player.y)
	}else{
		direction = point_direction(x,y, x_original, y_original)
		if ((x >= x_original - 50) and (x <= x_original + 50) and (y >= y_original - 50) and (y <= y_original + 50)){
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