#define scr_packet_client
buffer = argument0
buffer_seek(buffer, buffer_seek_start, 0)
message_id = buffer_read(buffer, buffer_u8)
switch (message_id)
{
    case CONNECTED:
        scr_connected_c(buffer)
    break;
    case NAMETAKEN:
        scr_nametaken(buffer)
    break;
    case GETRECORD:
        scr_get_record(buffer)
    break;
    case GETBOARD:
        scr_get_board(buffer)
    break;
    case VERSION:
        scr_version_check(buffer)
    break;
}

#define scr_version_check
buffer = argument0
mismatch = buffer_read(buffer, buffer_u8)

show_debug_message("Version Check")

if mismatch = 1
{
    network_destroy(global.socket);
    global.online = 0
    show_debug_message("Version Mismatch")    
}

alarm[0] = 1

#define scr_connected_c
alarm[0] = 0
 show_debug_message("Name Check")
    global.online = 1
    ini_open("save")
        global.uname = ini_read_string("name","name","")
    ini_close()
    
    newname = 0
    
    if global.uname = ""
    {
        show_debug_message("New User")
        create_name()
        buffer_seek(global.buffer, buffer_seek_start, 0)
        buffer_write(global.buffer,buffer_u8,NAME)
        buffer_write(global.buffer,buffer_string,global.uname)
        buffer_write(global.buffer,buffer_u8,1)
        network_send_packet(global.socket,global.buffer,buffer_tell(global.buffer))
    }
    else
    {
        buffer_seek(global.buffer, buffer_seek_start, 0)
        buffer_write(global.buffer,buffer_u8,NAME)
        buffer_write(global.buffer,buffer_string,global.uname)
        buffer_write(global.buffer,buffer_u8,0)
        network_send_packet(global.socket,global.buffer,buffer_tell(global.buffer))
        version_check()
    }
    
    show_debug_message(global.uname)

#define scr_nametaken
buffer = argument0
taken = buffer_read(buffer, buffer_u8)
if taken = 1
{
    show_debug_message("Name Taken")
    scr_connected_c(buffer)
}
if taken = 0
{
    show_debug_message("Name Not Taken")
    ini_open("save");
    ini_write_string('name','name',global.uname)
    ini_write_string('friends','1',global.uname)
    ini_write_real('friends','n',1)
    ini_close();
    global.online = 1
    alarm[0] = 1
}

#define scr_get_record
gotrecord = buffer_read(buffer, buffer_f64)
show_debug_message("Record: " + string(gotrecord))

#define scr_get_board
if ds_exists(global.board, ds_type_grid)
    ds_grid_destroy(global.board)

count = buffer_read(buffer, buffer_u32)
show_debug_message("Board Updated")
global.board = ds_grid_create(2,count)

i = 0
repeat(count)
{
    ds_grid_add(global.board,0,i,buffer_read(buffer, buffer_string))
    ds_grid_add(global.board,1,i,buffer_read(buffer, buffer_f64))
    i += 1
}

ds_grid_sort(global.board, 1, true);

if global.board_last_zone = global.zone
    if global.board_last_level = global.level
        global.board_loaded = 1