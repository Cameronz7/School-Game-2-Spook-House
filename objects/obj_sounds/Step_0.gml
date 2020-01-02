sound_count -= 1;
if (sound_count <= 0){
	sound_count = irandom_range(150, 500)
	var numb = irandom_range(1,2)
	if (numb == 1){
		audio_play_sound(sThunder, 2, false);
	}else{
		
		sound_num = irandom_range(1,6)
	}
	switch(sound_num){
		case 1:
		audio_play_sound(sThunder, 2, false);
		break;
		
		case 2:
		audio_play_sound(sMummy_Zombie, 2, false);
		break;
		
		case 3:
		audio_play_sound(sSpooky_Chains, 2, false);
		break;
		
		case 4:
		audio_play_sound(sCreaking_Door, 2, false);
		break;
		
		case 5:
		audio_play_sound(sMummy_Zombie, 2, false);
		break;
		
		case 6:
		audio_play_sound(sOld_Door_Creaking, 2, false);
		break;
	}
}