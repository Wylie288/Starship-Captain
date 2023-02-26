StartY = y + 145// + 35
EntryY = 41
StartX = x
NameX = x + 65
ScoreX = x + 605
list_size = 24//argument0
if global.board_loaded = 1
{
    font_set(font54,fa_center,fa_top,c_white)
        draw_text(x + sprite_width/2, StartY - 125, "LEADERBOARD")
    
    //Find Position
    pos = -1
    i = 0
    repeat(ds_grid_height(global.board))
    {
        if ds_grid_get(global.board,0,i) = global.uname
            pos = i
            
        i++
    }
    
    font_set(font28,fa_center,fa_top,c_white)
        draw_text(x + 1000,y + 425, "You are:")
        if pos != -1
            draw_text(x + 1000,y + 480, string(pos + 1) + "/" + string(ds_grid_height(global.board)))
        else
            draw_text(x + 1000,y + 480, "N/A")
            
        draw_text(x + 1000,y + 745, "Time to Beat:")
        if (pos > 0)
            draw_text(x + 1000,y + 800, time_string(ds_grid_get(global.board,1,pos - 1)))
        else
            draw_text(x + 1000,y + 800, "N/A")
    
    font_set(font24,fa_left,fa_top,c_white)
    
    i = 0 + global.board_scroll
    r = ds_grid_height(global.board)
    
    if ds_grid_height(global.board) > list_size
        r = list_size
        
    if r > 0
    {
        draw_line_width(StartX + NameX - 6, StartY - 3, StartX + NameX - 6, StartY + (r * EntryY) - 4, 3)
        draw_line_width(StartX + NameX - 6, StartY - 3, StartX + ScoreX + 180, StartY - 3, 3)
        
        drawY = StartY + (EntryY * -1) - 3
        draw_text(StartX + NameX,drawY, "Name")
        draw_text(StartX + ScoreX,drawY, "Time")
        
        repeat(r)
        {
            drawY = StartY + (EntryY * (i - global.board_scroll))
            
            if ((i > 0) and ((i - global.board_scroll) < r) and (i % 2 = 0))
                draw_line_width(StartX + NameX - 6, round(drawY) - 3, StartX + ScoreX + 180, round(drawY) - 3, 1)
            
            draw_set_color(c_white)
            if ds_grid_get(global.board,0,i) = global.uname
                draw_set_color(make_color_rgb(0,0,115))
            
            draw_set_halign(fa_right)
            draw_text(StartX + NameX - 6,drawY,string(i + 1) + " " );
            
            
            draw_set_halign(fa_left)    
            draw_text(StartX + NameX,drawY,ds_grid_get(global.board,0,i))
            draw_text(StartX + ScoreX,drawY,time_string(ds_grid_get(global.board,1,i)))
            
            i+= 1
        }
    }
    else
    {
        font_set(font24,fa_center,fa_top,c_white)
        draw_text(x + sprite_width/2, StartY, "No results")
    }
}
else
{
    font_set(font24,fa_center,fa_top,c_white)
    draw_text(x + sprite_width/2, StartY, "Loading...")
}
