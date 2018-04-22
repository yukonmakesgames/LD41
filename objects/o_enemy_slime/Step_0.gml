/// @description Actions.



event_inherited();


if(!hp_dead)
{
	if(instance_exists(o_player))
	{
		if(collision_line(x, y, o_player.x, o_player.y, o_eng_solid, false, true) == noone)
		{
			target_x = o_player.x;
			target_y = o_player.y;
		
			if(target_x < x)
			{
				image_xscale = -1;	
			} else
			{
				image_xscale = 1;	
			}
		
			aggro = true;
		}
	}

	if(aggro)
	{
		var target_dir = point_direction(x, y, target_x, target_y);
		
		spd_h += lengthdir_x(spd, target_dir);
		spd_v += lengthdir_y(spd, target_dir);
	
		image_speed = 2;
	
		if(distance_to_point(target_x, target_y) < 4)
		{
			aggro = false;	
		}
	} else
	{
		image_speed = 1;	
	}
} else
{
	aggro = false;	
}