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
	
//level win conditions; once all enemies have been eliminated, the user is prompted to go to the following level
} else if enemies_left <= 0 && instance_number(obj_enemy_parent) <= 0 && keyboard_check_pressed(vk_enter) && game_over == false{
	audio_play_sound(snd_level_cleared,0,false);
	room_goto(level_2);
	
	
} else if enemies_left <=0 && instance_number(obj_enemy_parent) <= 0 && room == level_2 && keyboard_check(vk_enter) && game_over == false{
	audio_play_sound(snd_level_cleared,0,false);
	room_goto(level_3);
	
} else if enemies_left <= 0&& instance_number(obj_enemy_parent) <= 0 && room == level_3 && keyboard_check(vk_enter) && game_over == false{
	audio_play_sound(snd_level_cleared,0,false);
	room_goto(rm_credit);
	
}else if game_over == true && keyboard_check(vk_enter){
	game_restart();
	
}else spawn_cooldown -= 1;

with(obj_enemy_parent){
if x <= 126 {
	if other.game_over == false
		audio_play_sound(snd_level_fail,0,false)
	other.game_over = true
	}
}
//auto generate 2 energy points per second
global.tower_energy += 2/60; 