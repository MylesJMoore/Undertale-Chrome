/// @function CreateSaveData
function CreateSaveData() {
	// Define SaveData Struct using Current Global Values
    return {
        game_chapter: global.game_chapter,
        game_chapter_description: global.game_chapter_description,
		save_file: global.save_file,
		current_room: global.current_room,
		save_player_x: obj_player.x,
		save_player_y: obj_player.y,
        words_of_save_wisdom: global.words_of_save_wisdom,
        player_has_moved: global.player_has_moved,
        allow_random_encounters: global.allow_random_encounters,
        sfx_master_volume: global.sfx_master_volume,
        player_can_move: global.player_can_move,
        textbox_is_open: global.textbox_is_open,
        textbox_for_dialogue: global.textbox_for_dialogue,
        dialogue_is_done_typing: global.dialogue_is_done_typing,
        title_opening_image_index: global.title_opening_image_index,
        in_cutscene: global.in_cutscene,
        allow_documentation: global.allow_documentation,
        speakblock_x: global.speakblock_x,
        speakblock_y: global.speakblock_y,
        emote_x_buffer: global.emote_x_buffer,
        emote_y_buffer: global.emote_y_buffer,

        // Textbox Globals
        default_textbox_x_adjustment: global.default_textbox_x_adjustment,
        default_textbox_y_adjustment: global.default_textbox_y_adjustment,
        default_textbox_width: global.default_textbox_width,
        default_textbox_height: global.default_textbox_height,
        textbox_x_adjustment: global.textbox_x_adjustment,
        textbox_y_adjustment: global.textbox_y_adjustment,
        textbox_width: global.textbox_width,
        textbox_height: global.textbox_height,

        // Player Face Information
        player_face_direction: global.player_face_direction,

        // Follower Cutscene Faces
        follower1_cutscene_face: global.follower1_cutscene_face,
        follower2_cutscene_face: global.follower2_cutscene_face,
        follower3_cutscene_face: global.follower3_cutscene_face,

        // Player Menu
        open_menu: global.open_menu,
        menu_option: global.menu_option,
        menu_level: global.menu_level,
        open_inventory: global.open_inventory,
        open_items: global.open_items,
        open_stats: global.open_stats,
        open_soul: global.open_soul,
        open_soul_selection: global.open_soul_selection,
        soul_selected: global.soul_selected,
        soul_lookup: global.soul_lookup,
        show_words_of_wisdom: global.show_words_of_wisdom,
        talk_to_friend: global.talk_to_friend,
        menu_player_name_font: global.menu_player_name_font,
        menu_player_info_font: global.menu_player_info_font,
        menu_option_font: global.menu_option_font,
        dialogue_global_horizontal_adjustment: global.dialogue_global_horizontal_adjustment,
        dialogue_global_vertical_adjustment: global.dialogue_global_vertical_adjustment,

        // Inventory Menu Globals
        inventory_controller_keyboard_input: global.inventory_controller_keyboard_input,
        inventory_input_mouse: global.inventory_input_mouse,
        picked_up_items: global.picked_up_items,
        player_item_inventory: global.player_item_inventory,
        player_item_page_inventory: global.player_item_page_inventory,
        inventory_menu_drop_prompt: global.inventory_menu_drop_prompt,
        inventory_menu_drop_fail: global.inventory_menu_drop_fail,
        inventory_menu_goto_previous_page: global.inventory_menu_goto_previous_page,
        top_of_inventory_menu: global.top_of_inventory_menu,

        // Player Information
        player_hp: global.player_hp,
        player_max_hp: global.player_max_hp,
        player_exp: global.player_exp,
        player_level: global.player_level,
        player_gold: global.player_gold,
        player_name: global.player_name,
        player_base_attack: global.player_base_attack,
        player_base_defense: global.player_base_defense,
        player_attack: global.player_attack,
        player_defense: global.player_defense,
        player_weapon: global.player_weapon,
        player_armor: global.player_armor,
        player_inv_frames: global.player_inv_frames,
        player_karma: global.player_karma,
        player_karma_enabled: global.player_karma_enabled,

        // Follower Information
        follower_1_hp: global.follower_1_hp,
        follower_2_hp: global.follower_2_hp,
        follower_3_hp: global.follower_3_hp,

        // Random Encounters
        player_step_count: global.player_step_count,
        random_encounter_index: global.random_encounter_index,
        random_encounter_index_range: global.random_encounter_index_range,
        random_encounter: global.random_encounter,

        // Battle System
        battle_trigger_object: global.battle_trigger_object,
        player_triggered_battle: global.player_triggered_battle,
        soul_speed: global.soul_speed,
        player_invisible_frames: global.player_invisible_frames,
        soulCanShoot: global.soulCanShoot,
        enemy_invisible_frames: global.enemy_invisible_frames,

        // Battle System Menu Details
        battle_border_width: global.battle_border_width,
        battle_border_height: global.battle_border_height,

        // Battle Player Meta Info
        player_previous_x: global.player_previous_x,
        player_previous_y: global.player_previous_y,
        player_left_battle: global.player_left_battle,
        player_previous_sprite_face: global.player_previous_sprite_face,
        player_previous_room: global.player_previous_room,

        // Enemy Meta Data
        current_enemy_name: global.current_enemy_name,
        current_enemy_macro: global.current_enemy_macro,
        current_enemy_overworld_obj: global.current_enemy_overworld_obj,
        current_enemy_music: global.current_enemy_music,
        current_enemy_music_index: global.current_enemy_music_index,
        current_enemy_bullet_sound_index: global.current_enemy_bullet_sound_index,

        // Overworld Enemies Info
        overworld_enemies_defeated: global.overworld_enemies_defeated,
		
		//Overworld Battle Trigger Info
		overworld_battle_triggers_defeated: global.overworld_battle_triggers_defeated,

        // Enemy Bullet Variables
        monster_bullet_pattern: global.monster_bullet_pattern
    };
}

/// @function saveGameProgress
function saveGameProgress(_fileNum = 0) {
	//Saves it to: C:\Users\Myles\AppData\Local\Walnut_Hill or search for %localappdata%
	var _saveArray = array_create(0);
	
	//Save the current game progress
	global.save_data = CreateSaveData();
	
	//Add Game Data to the Save Array
	array_push(_saveArray, global.save_data);
	
	// Convert to JSON and encode with Base64
    var _json = json_stringify(_saveArray);
    var _encoded = base64_encode(_json);

    // Save to file
	var _filename = game_save_id + "/uc_save_data_" + string(_fileNum) + ".sav";
    //var _filename = "uc_save_data_" + string(_fileNum) + ".sav";
    var _buffer = buffer_create(string_byte_length(_encoded) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _encoded);
    buffer_save(_buffer, _filename);
    buffer_delete(_buffer);
}

/// @function loadGameProgress
function loadGameProgress(_fileNum = 0) {
	//Loads it from: C:\Users\Myles\AppData\Local\Undertale_Chrome or search for %localappdata%
	var _filename = "uc_save_data_" + string(_fileNum) + ".sav";
    if (file_exists(_filename)) {
		show_debug_message("Save file found!");
        var _buffer = buffer_load(_filename);
        var _encoded = buffer_read(_buffer, buffer_string);
        buffer_delete(_buffer);
        
        // Decode from Base64
        var _json = base64_decode(_encoded);
        var _saveArray = json_parse(_json);

        if (is_array(_saveArray)) {
            global.save_data = _saveArray[0];
        }
    } else {
		show_debug_message("Save file not found!");
		exit;
	}
	
	//Use our new data to get back to where we were in the game
	//Go to the saved room
	room_goto(global.save_data.current_room);
	
	//Load Globals
	resetGlobalsFromSave(global.save_data);
	
	//Set Player
	global.player_can_move = true;
	global.player_has_moved = false;
	
	//Remove Player and Follower Objects
	RemovePlayerAndFollowers();
	
	//Recreate the player object
	instance_create_layer(global.save_player_x, global.save_player_y, "Player", obj_player);
	
	//Reset player move flag for follower creation
	//global.player_has_moved = false;
}

/// @function resetGlobalsFromSave
/// @desc Resets global variables from a loaded save struct
function resetGlobalsFromSave(_saveData) {
	show_debug_message("player_gold value: " + string(_saveData.player_gold));
    if (is_struct(_saveData)) {
        // Iterate through all keys in the struct and assign global values
        var _keys = variable_struct_get_names(_saveData);

        for (var i = 0; i < array_length(_keys); i++) {
            var _key = _keys[i];
			
            // Dynamically assign the global variable
            if (variable_global_exists(_key)) {
                variable_global_set(_key, variable_struct_get(_saveData, _key));
            } else {
                show_debug_message("Warning: Global variable '" + string(_key) + "' does not exist.");
            }
        }
        
        show_debug_message("Game progress successfully loaded!");
    } else {
        show_message("Failed to load save data.");
    }
}

/// @function saveFileExists
function saveFileExists(_fileNum = 0) {
	//Loads it from: C:\Users\Myles\AppData\Local\Undertale_Chrome or search for %localappdata%
	var _filename = game_save_id + "/uc_save_data_" + string(_fileNum) + ".sav";
    show_debug_message("Checking file: " + _filename);
    if (file_exists(_filename)) {
		show_debug_message("Save file found!");
		return true;
    } else {
		show_debug_message("Save file not found!");
		return false;
	}
}