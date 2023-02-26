#define LoadLevel
global.level_name = "test"
global.file = file_text_open_read(global.level_name)
name = file_text_read_string(global.file)
file_text_readln(global.file)

while(file_text_eof(global.file) = 0)
{
    object = file_text_read_string(global.file)
    file_text_readln(global.file)
    LoadLevelSelector(object)   
}

file_text_close(global.file)

#define LoadLevelSelector
argument0 = object
switch (object)
{
    case "wall128": wall128_load(); break;
}
 


#define wall128_load
lx = file_text_read_real(global.file)
file_text_readln(global.file)

ly = file_text_read_real(global.file)
file_text_readln(global.file)

instance_create(lx, ly, obj_wall128)