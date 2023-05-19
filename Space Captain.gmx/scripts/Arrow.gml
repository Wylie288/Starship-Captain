///Arrow(sprite_index)
width = other.width
scale = other.scale
       
//Side of Screen
if x < view_xview[0]
    dx = 0 + width
else if x > view_xview[0] + view_wview[0]
    dx = view_wview[0] - width
else
    dx = x - view_xview[0] + 64
    
if y < view_yview[0]
    dy = 0 + width
else if y > view_yview[0] + view_hview[0]
    dy = view_hview[0] - width
else
    dy = y - view_yview[0] + 6
    
//Bound
 if dx < width
    dx = width
 if dy < width
    dy = width
 if dx > view_wview[0] - width
    dx = view_wview[0] - width
 if dy > view_hview[0] - width
    dy = view_hview[0] - width
    
//Angle
if dx = width
{
    if dy = width
        angle = 45
    else if dy = view_hview[0] - width
        angle = 45 + 90
    else
        angle = 90
}
else if dx = view_wview[0] - width
{
    if dy = width
        angle = -45
    else if dy = view_hview[0] - width
        angle = -45 - 90
    else
        angle = -90
}
else
{
    if dy = width
        angle = 0
    else if dy = view_hview[0] - width
        angle = 180
}

//Visible
if !((bbox_right > view_xview[0]) && (bbox_left < view_xview[0] + view_wview[0]) && (bbox_bottom > view_yview[0]) && (bbox_top < view_yview[0] + view_hview[0]))
    draw_sprite_ext(argument0,0,view_xview[0] + dx, view_yview[0] + dy,scale,scale,angle,image_blend,image_alpha)
