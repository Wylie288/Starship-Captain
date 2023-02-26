if instance_exists(obj_game_over) = 0 and instance_exists(obj_win) = 0
{
    i = 0
    repeat(thrusterCount + 1)
    {
        if global.alternate_key = 0
            key = ikey
        if global.alternate_key = 1
            key = ikey2    
        
        if keyboard_check_pressed(ord(thrustProp[i,key]))
        {
            global.thrust[i] = 1
            //if audio_is_playing(snd_thruster_fire) = false           
                s_fire = audio_play_sound(snd_thruster_fire,10,0)
                audio_sound_gain(s_fire,global.master_volume * global.sound_effect_volume * 0.12,0)
                
            if audio_is_playing(snd_thruster1) = false
            {
                s_thruster = audio_play_sound(snd_thruster1,11,1)
                audio_sound_gain(s_thruster,global.master_volume * global.sound_effect_volume * .18,0)
                audio_sound_pitch(s_thruster, .7 + random_range(-.20,.20))
            }
        }
        
        if keyboard_check_released(ord(thrustProp[i,key]))
        {
            global.thrust[i] = 0
            
            if audio_is_playing(snd_thruster1)
            {
                j = 0
                pressed = 0
                repeat(thrusterCount + 1)
                {
                    if keyboard_check(ord(thrustProp[j,key]))
                        pressed = 1
                    j ++
                }
                if pressed = 0
                    audio_stop_sound(snd_thruster1)
            }
        }
        
        i++
    }
}
