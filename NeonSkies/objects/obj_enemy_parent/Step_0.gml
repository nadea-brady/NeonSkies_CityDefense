/// @description Insert description here
// You can write your code in this editor

// Check if the enemy has reached the left side of the grid (x > 127)
if (x > 127 && !place_meeting(x - movespeed, y, obj_tower_parent)) {
    x -= movespeed; // Move left, speed can be customized for child objects
} else {
    // Tower collision handling, switch to appropriate attack animation for each tower
    if (place_meeting(x, y, obj_tower_parent)) {
        sprite_index = spr_enemy_attack_tower1; // Attack animation for Tower 1
        obj_tower1.hp -= 1; // Optional: Damage Tower 1
    }
}

