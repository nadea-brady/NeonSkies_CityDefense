/// @description Insert description here
// You can write your code in this editor

attack_delay = attack_speed;
hurt_animation = 0;
mask_index = Ballistic1_Idle;

if(energy_cost <= global.tower_energy){
	global.tower_energy -= energy_cost;
}else{
	instance_destroy();
}