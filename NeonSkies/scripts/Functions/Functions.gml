// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function hurt_instance(inst, damage) {
	with (inst) {
		
		// deal damage
		hp -= damage;
		
		// set hurt animation
		hurt_animation = 1;
		
		// destroy the instance
		if (hp <= 0)
			instance_destroy(inst);
	}
}