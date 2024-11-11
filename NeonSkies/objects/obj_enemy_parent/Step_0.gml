/// @description Insert description here
// You can write your code in this editor

// Check if the enemy has reached the left side of the grid (x > 127)
if (x > 127 && !position_meeting(bbox_left - movespeed, y - 16, obj_tower_parent)) {
    sprite_index = walk_sprite;
	x -= movespeed;// Move left, speed can be customized for child objects
} else {
    // Tower collision handling, switch to appropriate attack animation for each tower
	var _inst = instance_position(bbox_left - movespeed, y - 16, obj_tower_parent);
	
	if (_inst != noone)
	{
		var _cd = _inst.contact_damage;
	
	    if (attack_delay <= 0) {
			sprite_index = attack_sprite;
		
			// attack the tower
			hurt_instance(_inst, attack_damage);
		
			// take contact damage
			hurt_instance(self, _cd);
		
			// set cooldown
			attack_delay = attack_cooldown;
		}
		else attack_delay -= 1;
	}
}

// process hurt animation
if (hurt_animation > 0)
	hurt_animation -= 0.1;


