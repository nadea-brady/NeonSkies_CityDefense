/// @description Insert description here
// You can write your code in this editor

// process attack
if (attack_delay <= 0) {
	
	attack_delay = attack_speed;
}
else attack_delay -= 1/60;

// process hurt animation
if (hurt_animation > 0)
	hurt_animation -= 0.1;