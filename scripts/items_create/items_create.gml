/// @description items_create
/// @param x
/// @param y
/// @param rot
/// @param id



var me = instance_create_depth(argument0, argument1, 0, o_eng_item);

me.image_angle = argument2;
me.item = argument3;

return me;