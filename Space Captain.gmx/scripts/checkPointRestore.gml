with (obj_control)
{

    if instance_exists(obj_target)
        global.targets_hit = objectivesComplete
    if instance_exists(obj_battery)
        global.batteries_charged = objectivesComplete

    i = 0
    repeat(15)
    {        
        instance = objectiveState[i, 0]
        
        if instance = -1
            exit
        
        if instance_exists(obj_target)
            instance.image_index = objectiveState[i, 1]
         if instance_exists(obj_battery)
            instance.charge = objectiveState[i, 1]
    }
}
