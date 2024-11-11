/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

// overlay hurt sprite over normal sprite
if (hurt_animation > 0) {
	draw_set_alpha(hurt_animation);
	gpu_set_fog(true, c_red, 1, 1);
	draw_self();
	gpu_set_fog(false, c_white, 1, 1);
	draw_set_alpha(1);
}
