/// @description OUCH OOCH SWORD HURTY JUICE.



if(!hp_dead)
{
	hp -= 1;

	rigidbody_apply_force(other.image_angle, 4);

	shake_screen(4, 0.9);
}