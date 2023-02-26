lines = obj_energizer.lines
x1 = obj_energizer.x1
y1 = obj_energizer.y1
x2 = obj_energizer.x2
y2 = obj_energizer.y2
x3 = obj_energizer.x3
y3 = obj_energizer.y3


if lines = 2
{
    draw_set_alpha(1)
    draw_line_width(obj_energizer.x,obj_energizer.y,x1,y1,1)
    draw_set_alpha(.5)
    draw_line_width(obj_energizer.x,obj_energizer.y,x1,y1,3)
    
    draw_set_alpha(1)
    draw_line_width(x1,y1,x,y,1)
    draw_set_alpha(.5)
    draw_line_width(x1,y1,x,y,3)
}

if lines = 3
{
    draw_set_alpha(1)
    draw_line_width(obj_energizer.x,obj_energizer.y,x1,y1,1)
    draw_set_alpha(.5)
    draw_line_width(obj_energizer.x,obj_energizer.y,x1,y1,3)
    
    draw_set_alpha(1)
    draw_line_width(x1,y1,x2,y2,1)
    draw_set_alpha(.5)
    draw_line_width(x1,y1,x2,y2,3)
    
    draw_set_alpha(1)
    draw_line_width(x2,y2,x,y,1)
    draw_set_alpha(.5)
    draw_line_width(x2,y2,x,y,3)
}

if lines = 4
{
    draw_set_alpha(1)
    draw_line_width(obj_energizer.x,obj_energizer.y,x1,y1,1)
    draw_set_alpha(.5)
    draw_line_width(obj_energizer.x,obj_energizer.y,x1,y1,3)
    
    draw_set_alpha(1)
    draw_line_width(x1,y1,x2,y2,1)
    draw_set_alpha(.5)
    draw_line_width(x1,y1,x2,y2,3)
    
    draw_set_alpha(1)
    draw_line_width(x2,y2,x3,y3,1)
    draw_set_alpha(.5)
    draw_line_width(x2,y2,x3,y3,3)
    
    draw_set_alpha(1)
    draw_line_width(x3,y3,x,y,1)
    draw_set_alpha(.5)
    draw_line_width(x3,y3,x,y,3)
}
draw_set_alpha(1)
