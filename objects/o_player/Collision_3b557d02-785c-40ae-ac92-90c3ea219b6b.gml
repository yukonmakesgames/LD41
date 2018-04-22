/// @description FUCKING HELL THAT HURTS.



if(!global.player_status_hp_stunned && !global.player_status_hp_dead)
{
	global.player_status_hp_stunned = true;
	
	global.player_status_hp -= 3;
	
	shake_screen(16, 0.9);

	scale_x = 0.66;
	scale_y = 1.33;

	rigidbody_apply_force(point_direction(other.x, other.y, x, y), 12);
}