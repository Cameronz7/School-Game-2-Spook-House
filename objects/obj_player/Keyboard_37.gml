//sprite_index = spr_left;

if (sprite_index != spr_player_walking){
	sprite_index = spr_player_walking
}

image_xscale = -1
var obst = instance_place(x - 30, y + 0, obj_block);
if (!(obst > 0))
{
	x += -10;
	y += 0;
}
is_walking = 3;