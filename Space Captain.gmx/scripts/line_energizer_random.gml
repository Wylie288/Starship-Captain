len = point_distance(x,y,instance_nearest(x,y,obj_battery).x,instance_nearest(x,y,obj_battery).y)
dir = point_direction(x,y,instance_nearest(x,y,obj_battery).x,instance_nearest(x,y,obj_battery).y)
lines = 2 irandom_range(2,4)

if lines = 2
{
    lt = irandom_range(5, len - 5)
    dt = dir + irandom_range(-13,13)
    x1 = x + lengthdir_x(lt,dt)
    y1 = y + lengthdir_y(lt,dt)
}

if lines = 3
{
    lt = irandom_range(5, (len-5)/2)
    dt = dir + irandom_range(-13,13)
    x1 = x + lengthdir_x(lt,dt)
    y1 = y + lengthdir_y(lt,dt)
    
    lt = irandom_range((len-5)/2, len - 5)
    dt = dir + irandom_range(-13,13)
    x2 = x + lengthdir_x(lt,dt)
    y2 = y + lengthdir_y(lt,dt)
}

if lines = 4
{
    lt = irandom_range(5, (len-5)/3)
    dt = dir + irandom_range(-13,13)
    x1 = x + lengthdir_x(lt,dt)
    y1 = y + lengthdir_y(lt,dt)
    
    lt = irandom_range((len-5)/3, ((len-5)/3)* 2)
    dt = dir + irandom_range(-13,13)
    x2 = x + lengthdir_x(lt,dt)
    y2 = y + lengthdir_y(lt,dt)
    
    lt = irandom_range(((len-5)/3)* 2, len - 5)
    dt = dir + irandom_range(-13,13)
    x3 = x + lengthdir_x(lt,dt)
    y3 = y + lengthdir_y(lt,dt)
}
