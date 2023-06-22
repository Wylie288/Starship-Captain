    if instance_exists(obj_ship_preview_sandbox)
        with obj_ship_preview_sandbox
            instance_destroy()
            
    if instance_exists(obj_star_sandbox)
        with obj_star_sandbox
            instance_destroy()
    
    if global.ship = global.levelData[global.level,iship]
    {
        global.ship = "3"
        if global.levelData[global.level,iship] = "3"
            global.ship = "6"
    }
     
    Aship[1] = 3 
    Aship[2] = 6
    Aship[3] = 5 
    Aship[4] = 7 
    Aship[5] = 8//12
    //Aship[6] = 8 
    //Aship[7] = 9 
    //Aship[8] = 12
    //Aship[9] = 13
    Aship[6] = 15
    Aship[7] = 16
    Aship[8] = 21
    Aship[9] = 2
    i = 0 //X
    j = 0 //Y
    k = 1 //Num
    repeat(2) //Y
    {
        repeat(4) //X
        {
            with instance_create(64 + i*(320), 368 + j*(416),obj_ship_preview_sandbox)
                image_index = other.Aship[other.k]
            if Aship[k] != real(global.levelData[global.level,iship])
                with instance_create(64 + i*(320) + 32, 368 + j*(416) + 304,obj_star_sandbox)
                    ship = other.Aship[other.k]
   
            k += 1
            i += 1
        }
        i = 0
        j += 1
    }
