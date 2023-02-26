force *= global.game_speed

if os_type = os_windows && global.androidDebug = 0
{
    i = 0
    repeat(6)
    {
        with(instance_create(0,0,obj_key_grid))
        {
            drawx = other.keyX[other.i]
            drawy = other.keyY[other.i]
            letter = global.keymap[other.i]
            vector = 0
            
            i = 0
            repeat(other.thrusterCount + 1)
            {
                if global.alternate_key = 0
                    if other.thrustProp[i,ikey] = global.keymap[other.i]
                    {
                        vector = 1
                        sliderProp(i,1)
                    }
                    
                if global.alternate_key = 1
                    if other.thrustProp[i,ikey2] = global.keymap[other.i]
                    {
                        vector = 1
                        sliderProp(i,1)
                    }
                i++
            }
        }
        i++
    } 
}
