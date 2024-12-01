
/// @description Insert description here
// You can write your code in this editor
var _scale = 3;

draw_set_font(fnt_monogram);

// Loop through the array containing each menu element
for(i = 0; i < array_length(menu); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Drawing the text
	draw_text(x + 6*_scale,y+i*spacing*_scale, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu
var cursWidth = sprite_get_width(s_cursor)*_scale;

// Draw cursor at where it should be, but half its width 
// to the left of the menu
draw_sprite_ext(s_cursor, -1, x + cursorLevitate - cursWidth/2, y + selectLerp*spacing*_scale, _scale, _scale, 0, c_white, 1);
// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_set_halign(fa_center);

draw_text_transformed(room_width/2, room_height*0.1 , gameTitle, titleSize, titleSize,0);
draw_set_color(c_white);
draw_set_halign(fa_left);
