/// @description Insert description here
// You can write your code in this editor

draw_text_transformed(10,10,"energy: " + string(round(global.tower_energy)),0.5,0.5,0);
draw_text_transformed(10,35,"enemies left: " + string(enemies_left),0.5,0.5,0);

if enemies_left <= 0 && instance_number(obj_enemy_parent) <= 0{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"LEVEL CLEARED!\n Press Enter to Continue.");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	
}
if game_over == true{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"LEVEL FAILED!\n Press Enter to Continue.");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}