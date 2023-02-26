surfx = floor(x/512) * 512
surfy = floor(y/512) * 512
gapx = x - surfx
gapy = y - surfy

if (gapx + sprite_width > 512) or (gapy + sprite_height > 512)
{
    if (gapx + sprite_width > 512) and !(gapy + sprite_height > 512)
    {
        extrax = gapx + sprite_width - 512
        draw_sprite_part(Back_spr,0,gapx,gapy,512-gapx,sprite_height,x,y)
        draw_sprite_part(Back_spr,0,0,gapy,extrax,sprite_height,x+(sprite_width-extrax),y+0)
    }   
    else if !(gapx + sprite_width > 512) and (gapy + sprite_height > 512)
    {
        extray = gapy + sprite_height - 512
        draw_sprite_part(Back_spr,0,gapx,gapy,sprite_width,512-gapy,x+0,y+0)
        draw_sprite_part(Back_spr,0,gapx,0,sprite_width,extray,x+0,y+(sprite_height-extray))
    } 
    else
    {
        extrax = gapx + sprite_width - 512
        extray = gapy + sprite_height - 512
        draw_sprite_part(Back_spr,0,gapx,gapy,512-gapx,512-gapy,x+0,y+0)
        draw_sprite_part(Back_spr,0,0,gapy,extrax,512-gapy,x+(sprite_width-extrax),y+0)
        draw_sprite_part(Back_spr,0,gapx,0,512-gapx,extray,x+0,y+(sprite_height-extray))
        draw_sprite_part(Back_spr,0,0,0,extrax,extray,x+(sprite_width-extrax),y+(sprite_height-extray))
    } 
}
else
    draw_sprite_part(Back_spr,0,gapx,gapy,sprite_width,sprite_height,x+0,y+0)
