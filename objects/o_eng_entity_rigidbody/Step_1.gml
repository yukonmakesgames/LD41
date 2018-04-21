/// @description Ground Check.



if(collide_type != "none")
{
	
	var isGrounded = spd_grounded;	

#region //________________________________________________ Point Collisions.

	if(collide_type == "point")
	{
		spd_grounded = instance_position(x, y + 1, o_eng_solid);
		
#endregion



#region //________________________________________________ Full Collisions.
	
	} else if(collide_type == "full")
	{
		spd_grounded = place_meeting(x, y + 1, o_eng_solid);
	}

#endregion



#region //________________________________________________ Effect.

	if(!isGrounded && spd_grounded)
	{
		if(spd_v >= 0)
		{
			scale_x = 1.33;
			scale_y = 0.66;
		}
	}
	
#endregion
	
}