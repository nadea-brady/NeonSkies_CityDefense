/// @description Insert description here
// You can write your code in this editor

distance -= proj_speed;

if distance <= 0 {
	instance_destroy();
}

x += proj_speed;


// Checking for Enemy collision handling, switch to appropriate attack animation for each tower
with (instance_place(x,y,obj_enemy_parent)){
hp -= other.damage;
hurt_animation = 1;

if hp <= 0 {
audio_play_sound(snd_enemy_defeated,1,false);
instance_destroy();
}
instance_destroy(other);

}
