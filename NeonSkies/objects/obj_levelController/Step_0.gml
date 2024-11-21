/// @description Insert description here
// You can write your code in this editor

// spawns enemy objs along far right column of gridlayout and cycles between enemy types
if (spawn_cooldown <= 0) {
	var _spawn_y = choose(180, 212, 244, 276, 308, 340);
	var _spawn_enemy = enemy_type[max(0, irandom(array_length(enemy_type)-1))];
	if (last_spawn_y != _spawn_y && enemies_left > 0) {
		instance_create_layer(752, _spawn_y, "Gameplay_Layer", _spawn_enemy);
		last_spawn_y = _spawn_y;
		enemies_left -= 1;
	}
	
	spawn_cooldown = 60+irandom(60);
} else if enemies_left <= 0 && instance_number(obj_enemy_parent) <= 0 && keyboard_check_pressed(vk_enter){
	room_goto(level_2);

} else spawn_cooldown -= 1;

global.tower_energy += 1/60; 