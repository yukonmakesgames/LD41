/// @description plants_init

var current_plant = 0;

global.plants[current_plant, 0] = "Sword Plant"; // Name
global.plants[current_plant, 1] = s_plant_sword; // Sprite
global.plants[current_plant, 2] = 1; // Speed
global.plants[current_plant, 3] = 0; // Item ID
global.plants[current_plant, 4] = -90; //Item Offset Rot
global.plants[current_plant, 5] = 0; //Item Offset X
global.plants[current_plant, 6] = -8; //Item Offset Y

current_plant++;