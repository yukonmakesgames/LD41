/// @description items_init

var current_item = 0;

global.items[current_item, 0] = "Sword"; // Name
global.items[current_item, 1] = true; // Can rotate?
global.items[current_item, 2] = false; // Seed?
global.items[current_item, 3] = 0; // Plant ID
current_item++;

global.items[current_item, 0] = "Sword Seed"; // Name
global.items[current_item, 1] = false; // Can rotate?
global.items[current_item, 2] = true; // Seed?
global.items[current_item, 3] = 0; // Plant ID
current_item++;