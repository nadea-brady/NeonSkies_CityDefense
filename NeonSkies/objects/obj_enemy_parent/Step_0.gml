/// @description Insert description here
// You can write your code in this editor

// Check if the enemy has reached the left side of the grid (x > 127)
if (x > 127 && !place_meeting(x - 1, y, [obj_tower1, obj_tower2, obj_tower3,obj_tower4])) {
    x -= speed; // Move left; each enemy type can have a unique speed
} else if (place_meeting(x, y,  [obj_tower1, obj_tower2, obj_tower3,obj_tower4])) {
    // Trigger the attack when reaching the tower
    sprite_index = spr_enemy_attack; // Switch to attack animation
    //add logic to damage the tower or stop the enemy
}
