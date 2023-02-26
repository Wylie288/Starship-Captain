surfx = floor(x/512) * 512
surfy = floor(y/512) * 512
gapx = x - surfx
gapy = y - surfy

if (gapx + sprite_width > 512) or (gapy + sprite_height > 512)
{
    if (gapx + sprite_width > 512) and !(gapy + sprite_height > 512)
    {
        extrax = gapx + sprite_width - 512
        draw_sprite_part_ext(Back_spr,0,gapx,gapy,512-gapx,sprite_height,0,0,1,1,c_white,1)
        draw_sprite_part_ext(Back_spr,0,0,gapy,extrax,sprite_height,(sprite_width-extrax),0,1,1,c_white,1)
    }   
    else if !(gapx + sprite_width > 512) and (gapy + sprite_height > 512)
    {
        extray = gapy + sprite_height - 512
        draw_sprite_part_ext(Back_spr,0,gapx,gapy,sprite_width,512-gapy,0,0,1,1,c_white,1)
        draw_sprite_part_ext(Back_spr,0,gapx,0,sprite_width,extray,0,(sprite_height-extray),1,1,c_white,1)
    } 
    else
    {
        extrax = gapx + sprite_width - 512
        extray = gapy + sprite_height - 512
        draw_sprite_part_ext(Back_spr,0,gapx,gapy,512-gapx,512-gapy,0,0,1,1,c_white,1)
        draw_sprite_part_ext(Back_spr,0,0,gapy,extrax,512-gapy,(sprite_width-extrax),0,1,1,c_white,1)
        draw_sprite_part_ext(Back_spr,0,gapx,0,512-gapx,extray,0,(sprite_height-extray),1,1,c_white,1)
        draw_sprite_part_ext(Back_spr,0,0,0,extrax,extray,(sprite_width-extrax),(sprite_height-extray),1,1,c_white,1)
    } 
}
else
    draw_sprite_part(Back_spr,0,gapx,gapy,sprite_width,sprite_height,0,0)
