//Stop Title Opening Music
if(room != rm_title_introduction && audio_is_playing(undertale_chrome_ost_Once_Upon_A_Time)) 
{
	audio_stop_sound(undertale_chrome_ost_Once_Upon_A_Time);
}

//Stop Battle Music
if(room != rm_battle && audio_is_playing(global.current_enemy_music)) 
{
	audio_stop_sound(global.current_enemy_music);
}
