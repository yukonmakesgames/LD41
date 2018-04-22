/// @description FUCKING HELL THAT HURTS.



if(!global.player_status_hp_stunned && !global.player_status_hp_dead && !other.hp_dead)
{
	global.player_status_hp_stunned = true;
	
	global.player_status_hp -= other.attack_damage;

	scale_x = 0.66;
	scale_y = 1.33;

	other.spd_h = 0;
	other.spd_v = 0;

	rigidbody_apply_force(point_direction(other.x, other.y, x, y), other.attack_knockback);
}