//Initialize Variables
depth = -99998; //Text Depth is -99999
text_id = "save test";
sep = 16;
screen_border = 16;
start_save_dialogue = false;
show_save_dialogue = false;
show_save_option = false;
save_option_value = "resilience";
show_save_confirm = false;
show_game_saved = false;
close_save_menu = false;
start_close_save_menu_timer = false;
timer_count = 120;
close_save_menu_timer = timer_count;

//Fear Option
fear_was_selected = false;

//Resilience Option
start_fade_in_to_credits = false;
fading_in = false;


//Controller
controller_down_threshold = .8;
controller_up_threshold = -.8;
controller_left_threshold = -.9;
controller_right_threshold = .9;
controller_joystick_moved = false;
controller_joystick_vertical_moved = false;

//Save Dialogue Textbox
save_textbox_buffer_height = 2;
save_textbox_buffer_width = 11;
save_textbox_horizontal_buffer = 13;
save_textbox_vertical_buffer = 85;

//Save Dialogue Text
LineSpacing = 15;
LetterSpacing = 8.5;
TextBufferX = 17;
TextBufferY = 90;
TextScaleX = .5;
TextScaleY = .5;

//Save Choice Textbox
choice_textbox_buffer_height = 3;
choice_textbox_buffer_width = 8;
choice_textbox_horizontal_buffer = 45;
choice_textbox_vertical_buffer = 85;

//Save Choice Text
ChoiceLineSpacing = 15;
ChoiceLetterSpacing = 8.5;
ChoiceTextBufferX = 24;
ChoiceTextBufferY = 90;
ChoiceTextScaleX = .5;
ChoiceTextScaleY = .5;

//Player Has already talked to us
player_already_talked_to = false;