//Initialization
randomise();
createSaveDialogueMessages();
global.game_chapter = "Prologue";
global.game_chapter_description = "The Massacre at True Lab";
global.in_title_intro = false;
global.save_file = 0;
global.show_title_after_chapter = false;
global.words_of_save_wisdom = 0;
global.hide_all_followers = true;
global.player_has_moved = false;
global.allow_random_encounters = false;
global.sfx_master_volume = 1;
global.player_can_move = true;
global.textbox_is_open = false;
global.textbox_for_dialogue = false;
global.dialogue_is_done_typing = false;
global.bubble_dialogue_is_done_typing = false;
global.title_opening_image_index = 0;
global.in_cutscene = false;
global.allow_documentation = true;
global.speakblock_x = 0;
global.speakblock_y = 0;
global.emote_x_buffer = 0;
global.emote_y_buffer = 0;

//Textbox Globals
global.default_textbox_x_adjustment = 0;
global.default_textbox_y_adjustment = 144;
global.default_textbox_width = 200;
global.default_textbox_height = 64;
global.textbox_x_adjustment = 0;
global.textbox_y_adjustment = 144;
global.textbox_width = 220;
global.textbox_height = 64;

//Player Face Information
global.player_face_direction = "Down";

//Player Sprite Information
global.in_truelab = true;
global.player_set_to_child = false;

//Follower Cutscene Faces
global.follower1_cutscene_face = IDLEDOWN;
global.follower2_cutscene_face = IDLEDOWN;
global.follower3_cutscene_face = IDLEDOWN;

//Player Menu
global.open_menu = false;
global.menu_option = 0;
global.menu_level = 0;
global.open_inventory = false;
global.open_items = false;
global.open_stats = false;
global.open_soul = false;
global.open_soul_selection = false;
global.soul_selected = 0;
global.soul_lookup = [
            "Resilience",
            "Determination",
			"Bravery",
			"Justice",
			"Kindness",
			"Patience",
			"Integrity",
			"Perseverance"
];
global.show_words_of_wisdom = false;
global.talk_to_friend = false;
global.menu_player_name_font = fUndertale;
global.menu_player_info_font = fUndertaleMenuStats;
global.menu_option_font = fUndertale;
global.dialogue_global_horizontal_adjustment = 0; //Used in obj_textbox to adjust globally based on room
global.dialogue_global_vertical_adjustment = 0; //Used in obj_textbox to adjust globally based on room

//Inventory Menu Globals
global.inventory_controller_keyboard_input = false; //Set in Player Object
global.inventory_input_mouse = false; //Set to true to turn on Mouse Input only
global.picked_up_items = ds_list_create(); //Keeping track of Overworld Items
global.player_item_inventory = array_create(0);//Keeping track of Player Inventory
global.player_item_page_inventory = array_create(0);//Keeping track of Player Inventory Pages
global.inventory_menu_drop_prompt = false;
global.inventory_menu_drop_fail = false;
global.inventory_menu_goto_previous_page = false;
global.top_of_inventory_menu = false;

//Player Information
global.save_player_x = 0;
global.save_player_y = 0;
global.player_hp = 6;
global.player_max_hp = 6;
global.player_exp = 0;
global.player_level = 1;
global.player_gold = 0;
global.player_name = "Prisma";
global.player_base_attack = 1;
global.player_base_defense = 1;
global.player_attack = 0;
global.player_defense = 0;
global.player_weapon = "Chara's Knife";
global.player_armor = "Franklin Badge";
global.player_inv_frames = 0;
global.player_karma = 0;
global.player_karma_enabled = false;

//Follower Information
global.follower_1_hp = 10;
global.follower_2_hp = 10;
global.follower_3_hp = 10;

//Random Encounters
global.player_step_count = 0;
global.random_encounter_index = 0;
global.random_encounter_index_range = irandom_range(0,2); //Modify this based on global.random_encounter values
global.random_encounter = [180, 360, 480]; //Modify this to set number of frames for an encounter to start

//Battle Triggering
global.enemy_to_battle = global.enemy_macros[0];
global.randomize_enemy_battle = false;

//Battle System
global.bypass_battle_menu = false;
global.hide_battle_menu = false;
global.return_to_battle_menu = false;
global.battle_trigger_object = noone;
global.player_triggered_battle = false;
global.soul_speed = 6;
global.player_invisible_frames = 0;
global.soulCanShoot = false;
global.enemy_invisible_frames = 0;

//Battle System Menu Details
global.battle_border_width = 570;
global.battle_border_height = 120;

//Battle Player Meta Info
global.player_previous_x = 0;
global.player_previous_y = 0;
global.player_left_battle = false;
global.player_previous_sprite_face = 0;
global.player_previous_room = rm_debug;

//Enemy Meta Data
createEnemyMusic();
createEnemyBulletSounds();
createEnemyBulletPatterns();
global.dialogue_only_bullet_pattern = false;
global.current_enemy_name = "";
global.current_enemy_macro = TORIEL;
global.current_enemy_overworld_obj = noone;
global.current_enemy_music = snd_default_battle;
global.current_enemy_music_index = 0;
global.current_enemy_bullet_sound_index = 0;

//Overworld Enemies Info
global.overworld_enemies_defeated = [];

//Overworld Battle Trigger Info
global.overworld_battle_triggers_defeated = [];

//Enemy Bullet Variables
global.monster_bullet_pattern = 0;

//Cutscenes
global.start_prologue_cutscene = false;
global.start_prologue_open_chrome_jar = false;

//BOSS FIGHT - Failed Human
global.failed_human_boss_intro_done = false;
global.failed_human_knife_fadeout = false;
global.fighting_failed_human_boss = true;
global.fighting_failed_human_boss_last_soul = false;
global.battle_turn = 0;
global.last_soul_removed = "Resilience";
global.last_soul_removed_flavor_text = "Eight souls. One heartbeat.";

//BOSS FIGHT - Failed Human FINAL ATTACK
global.failed_human_show_player_health = false;
global.resilience_pattern = 0;