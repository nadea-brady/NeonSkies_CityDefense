/// @description Insert description here
// You can write your code in this editor

distance -= proj_speed;

if distance <= 0 {
	instance_destroy();
}

x += proj_speed;


// Enemy collision handling, switch to appropriate attack animation for each tower
with (instance_place(x,y,obj_enemy_parent)){
hp -= other.damage;

if hp <= 0 {
instance_destroy();
}
instance_destroy(other);

}