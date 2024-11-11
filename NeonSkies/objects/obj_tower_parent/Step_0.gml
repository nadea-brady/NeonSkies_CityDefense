/// @description Insert description here
// You can write your code in this editor

// process attack
if (instance_exists(proj_type) && attack_delay <= 0 && collision_line(x, y, x + range, y, obj_enemy_parent, false, true) != noone ) {
	
	instance_create_layer(x, y, "Gameplay_Layer", proj_type, { damage: 1, distance: 32*2, proj_speed: 2 } );
	
	attack_delay = attack_speed;
}
else if (attack_delay > 0) attack_delay -= 1/60;

// process hurt animation
if (hurt_animation > 0)
	hurt_animation -= 0.1;