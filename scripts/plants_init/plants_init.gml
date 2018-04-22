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

global.plants[current_plant, 0] = "Bomb Plant"; // Name
global.plants[current_plant, 1] = s_plant_bomb; // Sprite
global.plants[current_plant, 2] = 0.5; // Speed
global.plants[current_plant, 3] = 2; // Item ID
global.plants[current_plant, 4] = 0; //Item Offset Rot
global.plants[current_plant, 5] = 0; //Item Offset X
global.plants[current_plant, 6] = -12; //Item Offset Y
current_plant++;