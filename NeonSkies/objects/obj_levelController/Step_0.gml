/// @description Insert description here
// You can write your code in this editor


// spawn some enemies randomly. change this later after demo
if (spawn_cooldown <= 0) {
	var _spawn_y = choose(128, 160, 192, 224, 256, 288);
	var _spawn_enemy = obj_robot1;//choose(obj_robot1);
	if (last_spawn_y != _spawn_y) {
		instance_create_layer(736, _spawn_y, "Gameplay_Layer", _spawn_enemy);
	}
	
	spawn_cooldown = 60+irandom(60);
} else spawn_cooldown -= 1;
