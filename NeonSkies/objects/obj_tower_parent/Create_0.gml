/// @description Insert description here
// You can write your code in this editor

attack_delay = attack_speed;
hurt_animation = 0;
mask_index = Ballistic1_Idle;

if(energy_cost <= global.tower_energy){
	global.tower_energy -= energy_cost;
	audio_play_sound(snd_tower_place,0,false);
}else{
	audio_play_sound(snd_no_energy,0,false);
	instance_destroy();
}