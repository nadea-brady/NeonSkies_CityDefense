/// @description Insert description here
// You can write your code in this editor

// Check if the enemy has reached the left side of the grid (x > 127)
if (x > 127 && !place_meeting(x - _speed, y, [obj_tower1, obj_tower2, obj_tower3, obj_tower4])) {
    x -= _speed; // Move left, speed can be customized for child objects
} else {
    // Tower collision handling, switch to appropriate attack animation for each tower
    if (place_meeting(x, y, obj_tower1)) {
        sprite_index = spr_enemy_attack_tower1; // Attack animation for Tower 1
        obj_tower1.hp -= 1; // Optional: Damage Tower 1
    }
    else if (place_meeting(x, y, obj_tower2)) {
        sprite_index = spr_enemy_attack_tower2; // Attack animation for Tower 2
        obj_tower2.hp -= 2; // Optional: Damage Tower 2 with more damage
    }
    else if (place_meeting(x, y, obj_tower3)) {
        sprite_index = spr_enemy_attack_tower3; // Attack animation for Tower 3
        obj_tower3.hp -= 1; // Optional: Damage Tower 3
    }
    else if (place_meeting(x, y, obj_tower4)) {
        sprite_index = spr_enemy_attack_tower4; // Attack animation for Tower 4
        obj_tower4.hp -= 1; // Optional: Damage Tower 4
    }
    
    //add logic to stop movement once attacking or handle continuous damage
}

