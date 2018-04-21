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

		for (i = 0; i < abs(spd_v); i++)
		{
		    if (!instance_position(x, y + sign(spd_v), o_eng_solid))
			{
		        y += sign(spd_v);
			} else
			{		
				spd_v = 0;
		        break;
		    }
		}
		
#endregion



#region //-------------------------------- Horizontal.

		for (i = 0; i < abs(spd_h); i++)
		{
			if (!instance_position(x + sign(spd_h), y, o_eng_solid))
			{
		        x += sign(spd_h); 
		    } else
			{
				spd_h = 0;
				break;
			}
		}

#endregion

#endregion



#region //________________________________________________ Full Collisions.

	} else if(collide_type == "full")
	{
		var i;

#region //-------------------------------- Vertical.

		for (i = 0; i < abs(spd_v); i++)
		{
		    if (!place_meeting(x, y + sign(spd_v), o_eng_solid))
			{
		        y += sign(spd_v);
			} else
			{
		        spd_v = 0;
		        break;
			}
	    }

#endregion



#region //-------------------------------- Horizontal.

		for (i = 0; i < abs(spd_h); i++)
		{
			if (!place_meeting(x + sign(spd_h), y, o_eng_solid))
			{
		        x += sign(spd_h); 
		    } else
			{
				spd_h = 0;
				break;
			}
		}
	}
}

#endregion

#endregion