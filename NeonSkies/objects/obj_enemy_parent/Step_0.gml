/// @description Insert description here
// You can write your code in this editor

// Check if the enemy has reached the left side of the grid (x > 127)
if (x > 127 && !position_meeting(bbox_left - movespeed, y+16, obj_tower_parent)) {
    x -= movespeed; // Move left, speed can be customized for child objects
} else {
    // Tower collision handling, switch to appropriate attack animation for each tower
	var _inst = instance_position(bbox_left - movespeed, y + 16, obj_tower_parent);
	var _ad = attack_damage;
	
    if (attack_delay <= 0) {
		// - attack the tower
		with (_inst) {
			hp -= _ad;
			
			// hurt animation
			hurt_animation = 1;
			
			// check for tower death
			if (hp <= 0)
				instance_destroy();
		}
		
		attack_delay = attack_cooldown;
	}
	else attack_delay -= 1;
}

