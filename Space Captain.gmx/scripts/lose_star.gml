if instance_exists(obj_game_over) != 1
{
    if global.online = 1
        star_loss()

    if global.game_mode = "Time Trial"
        instance_create(0,0,obj_game_over)
    
    instance_create(0,0,obj_star_loss)
    if stars > 1
    {
        stars -= 1
        collision_counter = collision_count
    }
    else
    {
        if global.die = 0
        {
            stars -= 1
            instance_create(0,0,obj_game_over)
        }
    }
}
