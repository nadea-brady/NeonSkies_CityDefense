/// @description Insert description here
// You can write your code in this editor
if (global.tower_dragging) {
    // Make the object visible while dragging
    visible = true;

    // Snap the object to the grid
    var mx = mouse_x;
    var my = mouse_y;

    // Ensure the ghost tower follows the grid
    x = floor(mx / 32) * 32;
    y = floor(my / 32) * 32;
} else {
    // Hide the object when not dragging
    visible = false;
}