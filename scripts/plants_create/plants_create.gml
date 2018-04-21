/// @description plants_create
/// @param x
/// @param y
/// @param id



var me = instance_create_depth(argument0, argument1, 0, o_eng_plant);

me.plant_id = argument2;
me.sprite_index = global.plants[argument2, 1];
me.image_speed = global.plants[argument2, 2];
me.image_index = 0;
me.scale_x = 1.33;
me.scale_y = 0.66;

return me;