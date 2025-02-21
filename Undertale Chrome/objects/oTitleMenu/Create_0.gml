//Check if save file exists
save_file_exists = saveFileExists();

//Set Main Menu Option Text
main_option = "New Game";
if(save_file_exists) {
	main_option = "Continue Game";
}


//Menu Variables
start_fade_in_to_new_game = false;
fading_in = false;
fade_in_complete = false;
width = 100;
height = 104;
option_border = 4;
option_space = 16;
controller_down_threshold = -.8;
controller_up_threshold = .8;
controller_joystick_moved = false;

//Menu Navigation
position = 0;
option_length = 0;
menu_level = 0;

//Menu Text Transformation
menu_text_x_shake = 0;
menu_text_y_shake = 0;
menu_text_x_scale = 1;
menu_text_y_scale = 1;
saved_x_scale = 1;
saved_y_scale = 1;
menu_text_angle = image_angle;

//Menu Options
//Main Menu
option[0, 0] = main_option;
option[0, 1] = "Human Souls";
option[0, 2] = "Controls";
option[0, 3] = "Quit Game";
//option[0, 3] = "Battle Test";
	
//Settings Menu
soul_text_color = c_white;
soul_text = "";
soul_menu_border = 0;
_soul_text_x_buffer = 0;
option[1, 0] = "---- Souls ----";
option[1, 1] = "Resilience";
option[1, 2] = "Determination";
option[1, 3] = "Bravery";
option[1, 4] = "Justice";
option[1, 5] = "Kindness";
option[1, 6] = "Patience";
option[1, 7] = "Integrity";
option[1, 8] = "Perseverance";
option[1, 9] = "Back";

//Controls Menu
option[2, 0] = "-------------------------";
option[2, 1] = "[Keyboard] | [Controller]";
option[2, 2] = "-------------------------";
option[2, 3] = "Confirm: Z | A Button";
option[2, 4] = "Cancel:  X | B Button";
option[2, 5] = "Move: WASD | Joystick";
option[2, 6] = "Menu:    C | Start Button";
option[2, 7] = "";