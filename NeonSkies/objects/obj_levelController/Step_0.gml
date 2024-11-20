/// @description Insert description here
// You can write your code in this editor


// spawns enemy objs along far right column of gridlayout and cycles between enemy types
if (spawn_cooldown <= 0) {
	var _spawn_y = choose(180, 212, 244, 276, 308, 340);
	var _spawn_enemy = choose(obj_robot1, obj_robot2);
	if (last_spawn_y != _spawn_y) {
		instance_create_layer(752, _spawn_y, "Gameplay_Layer", _spawn_enemy);
	}
	
	spawn_cooldown = 60+irandom(60);
} else spawn_cooldown -= 1;
