/// @description Insert description here
// You can write your code in this editor


x += 2;

var _instance = instance_position(x, y, obj_enemy_parent);

if (_instance != noone){
	audio_play_sound(snd_enemy_defeated,1,false);
	instance_destroy(_instance)
}

if (x > 766)
	instance_destroy();