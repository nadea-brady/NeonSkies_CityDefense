/// @description Insert description here
// You can write your code in this editor

// Check if dragging a tower

if (global.tower_dragging) {
    // Get the mouse position
    var mx = mouse_x;
    var my = mouse_y;

    // Snap the position to the grid (896x504 grid size, with 32x32 cells)
    var grid_x = floor(mx / 32) * 32;
    var grid_y = floor(my / 32) * 32;

    // Check for mouse release to drop the tower
	if (mouse_check_button_released(mb_left)){
		if ( mx >= 127 && mx <= 767 && my >= 159 && my <= 351 && !position_meeting(grid_x+16, grid_y+8, obj_tower_parent)) {
        // Place the tower at the grid position
        instance_create_layer(grid_x + 16, grid_y +16 , "Gameplay_Layer", global.tower_type);

       
    }
	//stop dragging if within gridlayout
	global.tower_dragging = false;
	}
}