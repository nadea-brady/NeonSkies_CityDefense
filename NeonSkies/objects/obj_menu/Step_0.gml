/// @description Insert description here
// You can write your code in this editor

// Oscillate the cursor using sin function
cursorLevitate = dsin(cursorTime);

// Use this as an "angle" to use in the sin function
// to oscillate cursor
cursorTime += leviRate;


// Vertical input is determined by the press of up
// and down buttons
var vert =  keyboard_check_pressed(downButt) -  keyboard_check_pressed(upButt);

// Move cursor up or down depending on inputs
selected += vert;
selectLerp = lerp(selectLerp, selected, lerpAmt); // Smooth cursor movement

// Don't let cursor move past where it should be
selected = clamp(selected, 0, array_length(menu) - 1);

// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected
if(keyboard_check_pressed(confirmButt))
{
	if(selected == 0) // Play by default
	{
		// Whatever happens when you play
		room_goto(level_1);
	}
	
	if(selected == 1) //Go to controls/info page
	{
		room_goto(rm_controls);
	}

	
	if(selected == 2) //Go to credits
	{
		room_goto(rm_credit);
	}
	
	if(selected == 3) //Exit Game
	{
		game_end();
	}
}