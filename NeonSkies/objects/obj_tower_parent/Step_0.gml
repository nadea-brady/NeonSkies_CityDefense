/// @description Insert description here
// You can write your code in this editor

// process attack
if (proj_type != noone && attack_delay <= 0 && collision_line(x, y, x + range, y, obj_enemy_parent, false, true) != noone ) {
	
	instance_create_layer(x, y, "Gameplay_Layer", proj_type, { damage: 1, distance: range, proj_speed: 3 } );
	//audio_play_sound(snd_Laser_Drone,0,false);
	attack_delay = attack_speed;
	
}
else if (attack_delay > 0) attack_delay -= 3/60;

// process hurt animation
if (hurt_animation > 0)
	hurt_animation -= 0.1;