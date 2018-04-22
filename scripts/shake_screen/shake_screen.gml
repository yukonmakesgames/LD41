/// @description shake_screen
/// @param shake
/// @param decay



if(instance_exists(o_eng_camera))
{
	o_eng_camera.shake = argument0;
	o_eng_camera.shake_decay = argument1;	
}