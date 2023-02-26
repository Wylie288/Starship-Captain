#define SaveLevel
global.level_name = "test"
global.file = file_text_open_write(global.level_name)
file_text_write_string(global.file,global.level_name)
file_text_writeln(global.file)

with(obj_wall128)
    wall_128_save()
    
file_text_close(global.file)

#define wall_128_save
file_text_write_string(global.file,"wall128")
file_text_writeln(global.file)

file_text_write_real(global.file,x)
file_text_writeln(global.file)

file_text_write_real(global.file,y)
file_text_writeln(global.file)