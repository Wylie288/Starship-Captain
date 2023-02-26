if !place_meeting(x-67,y,obj_wall)
{
    if obj_energizer.x < x
        return 1
    else
        return 0
}
else if !place_meeting(x+67,y,obj_wall)
{
    if obj_energizer.x > x
        return 1
    else
        return 0
}
else if !place_meeting(x,y-67,obj_wall)
{
    if obj_energizer.y < y
        return 1
    else
        return 0
}
else if !place_meeting(x,y+67,obj_wall)
{
    if obj_energizer.y > y
        return 1
    else
        return 0
}
