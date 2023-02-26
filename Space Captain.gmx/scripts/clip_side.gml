surfx = floor(x/512) * 512
gapx = x - surfx

if (gapx + sprite_width > 512)
{
    extrax = gapx + sprite_width - 512
    draw_sprite_part(Side_spr,0,gapx,0,512-gapx,32,x,y+sprite_height)
    draw_sprite_part(Side_spr,0,0,0,extrax,32,x+(sprite_width-extrax),y+sprite_height)
}
else
    draw_sprite_part(Side_spr,0,gapx,0,sprite_width,32,x,y+sprite_height)
