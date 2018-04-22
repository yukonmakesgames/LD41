/// @description Die.



event_inherited();


if(!hp_dead)
{
	sprite_index = anim_norm;
	image_blend = c_white;
	
	if(hp <= 0)
	{
		hp_dead = true;	
	}
} else
{
	sprite_index = anim_dead;
	image_blend = c_gray;
	image_speed = 1;
}