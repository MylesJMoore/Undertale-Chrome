//Set Draw Options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

#region Menu Position Calculations
//Dynamically get width and height of the menu
var _new_width = 0;
for(var i = 0; i < option_length; i++) 
{
	var _option_width = string_width(option[menu_level, i]);
	_new_width = max(_new_width, _option_width);
}

//Set Height & Width to new dynamic values
width = _new_width + option_border * 2;
height = option_border * 2 + string_height(option[0,0]) + (option_length - 1) * option_space;

//Center Menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

#endregion

//Draw the Menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//Draw Text
for(var i = 0; i < option_length; i++) 
{
	var _color = c_white;
	
	//Set Soul Colors for Text
	if(menu_level == 1) {
			switch(option[menu_level, i]) {
		    case "Resilience": 
				_color = c_grey; 
				break;
		    case "Determination": 
				_color = c_red; 
				break;
		    case "Bravery": 
				_color = c_orange; 
				break;
		    case "Justice": 
				_color = c_olive; 
				break;
		    case "Kindness": 
				_color = c_green; 
				break;
		    case "Patience": 
				_color = c_aqua; 
				break;
		    case "Integrity": 
				_color = c_navy; 
				break;
		    case "Perseverance": 
				_color = c_purple; 
				break;
		    default: 
				_color = c_white;
		    }
		}
	
	//If we are on that option then set the color to yellow
	if(position == i) 
	{
		//Default Selection Color
		_color = c_yellow;
		
		//Set Soul Description Text
		if(menu_level == 1) {
				switch(option[menu_level, i]) {
				    case "Resilience": 
						soul_text = "The Chrome Soul.";
						soul_text_color = c_white;
						_color = c_white;
						_soul_text_x_buffer = 0;
						break;
				    case "Determination": 
						soul_text = "Unbreakable Willpower.";
						soul_text_color = c_red;
						_color = c_red;
						_soul_text_x_buffer = -20;
						break;
				    case "Bravery": 
						soul_text = "Fearless Courage.";
						soul_text_color = c_orange;
						_color = c_orange;
						_soul_text_x_buffer = 0;
						break;
				    case "Justice":  
						soul_text = "Fairness and Equality.";
						soul_text_color = c_olive;
						_color = c_olive;
						_soul_text_x_buffer = -20;
						break;
				    case "Kindness": 
						soul_text = "Strength by Compassion.";
						soul_text_color = c_green;
						_color = c_green;
						_soul_text_x_buffer = -25;
						break;
				    case "Patience": 
						soul_text = "Enduring Power and Calm.";
						soul_text_color = c_aqua;
						_color = c_aqua;
						_soul_text_x_buffer = -25;
						break;
				    case "Integrity": 
						soul_text = "Unwavering Principles.";
						soul_text_color = c_navy;
						_color = c_navy;
						_soul_text_x_buffer = -20;
						break;
				    case "Perseverance": 
						soul_text = "Boundless Endurance.";
						soul_text_color = c_purple;
						_color = c_purple;
						_soul_text_x_buffer = -20;
						break;
				    default: 
						soul_text = "";
						soul_text_color = c_white;
						_soul_text_x_buffer = 0;
			    }
				
				if(soul_text != "") {
					draw_sprite_ext(spr_soul_title_menu, i - 1, x + option_border + 5, y + option_border + option_space * i + 7, .5, .5, 0, c_white, 1);
				}
			}
		
		//If we are on a new game and fading in, then scale up text
		if(fading_in) {
			//Shake Text
			menu_text_x_shake = irandom_range(-.5,1);
			menu_text_y_shake = irandom_range(-.5,1);
			
			//Scale Text
			menu_text_y_scale = saved_y_scale + .002;
			menu_text_x_scale = saved_x_scale + .002;
			saved_y_scale = menu_text_y_scale;
			saved_x_scale = menu_text_x_scale;
		}
	} else {
		//Text Defaults
		menu_text_x_shake = 0;
		menu_text_y_shake = 0;
		menu_text_y_scale = 1;
		menu_text_x_scale = 1;
	}
	
	//In Soul Title Menu, Default borders for "Back" and "Title"
	if(menu_level == 1 && (option[menu_level, i] == "Back" || option[menu_level, i] == "---- Souls ----")) {
		soul_menu_border = 0;
	} else if (menu_level == 1) {
		soul_menu_border = 12;
	}
	
	//Controls Menu
	if(menu_level == 2 && i == 1) {
		_color = c_yellow;
	}
	
	//Draw text
	draw_text_transformed_colour(x + option_border + soul_menu_border + menu_text_x_shake, y + option_border + option_space * i + menu_text_y_shake, option[menu_level, i], 
								menu_text_x_scale, menu_text_y_scale, menu_text_angle, 
								_color, _color, _color, _color, 1);
								
	if(menu_level == 1) {
		draw_text_transformed_colour(x + option_border + _soul_text_x_buffer, 5, soul_text, 
								1, 1, image_angle, 
								soul_text_color, soul_text_color, soul_text_color, soul_text_color, 1);
	}
} 