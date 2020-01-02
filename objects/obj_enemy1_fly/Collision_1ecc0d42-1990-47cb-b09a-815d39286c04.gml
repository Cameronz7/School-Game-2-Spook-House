if (!obj_player.is_safe){
	obj_player.x = obj_player.spawn_x
	obj_player.y = obj_player.spawn_y
	obj_enemy1_AI.state = "still"
	obj_enemy1.x = obj_enemy1.x_original
	obj_enemy1.y = obj_enemy1.y_original
	obj_enemy2_AI.state = "still"
	obj_enemy2.x = obj_enemy2.x_original
	obj_enemy2.y = obj_enemy2.y_original
	obj_enemy3_AI.state = "still"
	obj_enemy3.x = obj_enemy3.x_original
	obj_enemy3.y = obj_enemy3.y_original
	obj_enemyChaser_AI.state = "still"
	obj_enemy_chaser.x = obj_enemy_chaser.x_original
	obj_enemy_chaser.y = obj_enemy_chaser.y_original
}
