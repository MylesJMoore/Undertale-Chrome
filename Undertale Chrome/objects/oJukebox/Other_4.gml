show_debug_message(room);
switch (room)
{
	case DEBUG_ROOM:
        audio_stop_all();
    break;
	
	case TRUELAB_2:
        //setSongInGame(TRUELAB_2_MUSIC, 60, 2*60);
    break;
	
	case TRUELAB_3:
        setSongInGame(TRUELAB_3_MUSIC, 0, 0);
    break;
	
	case TRUELAB_4:
        setSongInGame(TRUELAB_3_MUSIC, 0, 0);
    break;
	
	case TRUELAB_5:
        setSongInGame(TRUELAB_3_MUSIC, 0, 0);
    break;
	
	case TRUELAB_6:
        setSongInGame(TRUELAB_3_MUSIC, 0, 0);
    break;
	
	case TRUELAB_7:
        setSongInGame(TRUELAB_3_MUSIC, 0, 0);
    break;
	
	case TRUELAB_8:
        audio_stop_all();
    break;
	
	case MT_EBBOT_BASE:
        setSongInGame(MT_EBBOT_BASE_MUSIC, 0, 0);
    break;
	
	case MT_EBBOT_LONGPATH:
        setSongInGame(MT_EBBOT_LONGPATH_MUSIC, 0, 0);
    break;
	
	case MT_EBBOT_LONGPATH_CUTSCENE:
		if(global.mt_ebbot_longpath_cutscene_done) {
			//audio_stop_all();
			//setSongInGame(MT_EBBOT_SUMMIT_MUSIC, 0, 0);
		}
		
    break;
	
	case MT_EBBOT_SUMMIT:
        setSongInGame(MT_EBBOT_SUMMIT_MUSIC, 0, 0);
    break;
}