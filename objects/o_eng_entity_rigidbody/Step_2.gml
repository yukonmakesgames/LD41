/// @description Actual collisions & movement.



#region //________________________________________________ No Collisions.

if(collide_type == "none")
{
	
#region //-------------------------------- Vertical.

	y += spd_v;

#endregion



#region //-------------------------------- Horizontal.

	x += spd_h;
	
#endregion
	
} else
{

#endregion



#region //________________________________________________ Point Collisions.

	if(collide_type == "point")
	{
		var i;

#region //-------------------------------- Vertical.

		if(position_meeting(x, y + spd_v, o_eng_solid) && spd_v != 0)
		{
			if(!position_meeting(x, y, o_eng_solid))
			{
			    while(!position_meeting(x, y + sign(spd_v), o_eng_solid))
			    {
			        y += sign(spd_v);
			    }
			}
	
			spd_v = 0;
		}

		y += spd_v;
		
#endregion



#region //-------------------------------- Horizontal.

		if(position_meeting(x + spd_h, y, o_eng_solid) && spd_h != 0)
		{
			if(!position_meeting(x, y, o_eng_solid))
			{
			    while(!position_meeting(x + sign(spd_h), y, o_eng_solid))
			    {
			        x += sign(spd_h);
			    }
			}
    
			spd_h = 0;
		}

		x += spd_h;

#endregion

#endregion



#region //________________________________________________ Full Collisions.

	} else if(collide_type == "full")
	{

#region //-------------------------------- Vertical.

		if(place_meeting(x, y + spd_v, o_eng_solid) && spd_v != 0)
		{
			if(!place_meeting(x, y, o_eng_solid))
			{
			    while(!place_meeting(x, y + sign(spd_v), o_eng_solid))
			    {
			        y += sign(spd_v);
			    }
			}
	
			spd_v = 0;
		}

		y += spd_v;

#endregion



#region //-------------------------------- Horizontal.

		if(place_meeting(x + spd_h, y, o_eng_solid) && spd_h != 0)
		{
			if(!place_meeting(x, y, o_eng_solid))
			{
			    while(!place_meeting(x + sign(spd_h), y, o_eng_solid))
			    {
			        x += sign(spd_h);
			    }
			}
    
			spd_h = 0;
		}

		x += spd_h;
	}
}

#endregion

#endregion