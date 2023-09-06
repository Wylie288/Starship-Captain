#define create_name
name_ok = 0
reason = "Uncaught"
file = file_text_open_read(working_directory + "Filter_Words.txt")
repeat (729)
{
    text = file_text_read_string(file)
    if string_pos(text,string_lower(global.uname)) != 0
    {
        name_ok = 1
        reason = "Cannot use the phrase "+chr(34)+text+chr(34)+" "
    }
    file_text_readln(file)
}
if global.uname = ""
{
        name_ok = 1
        reason = "Must use at least 1 character"
}
if string_char_at(global.uname, 1) = " "
{
        name_ok = 1
        reason = "Cannot start username with a space"
}
if string_length(global.uname) > 15
{
        name_ok = 1
        reason = "Your username cannot exceed 15 characters"
}
if name_ok = 0
{
    regex_setinput(global.uname)
    regex_setexpression("[^a-zA-Z\d\s:]")
    if regex_search() = 1
    {
        name_ok = 1
        reason = "Cannot use special characters "
        show_debug_message("Special")
    }
}
file_text_close(file)

if name_ok = 0
{
    buffer_seek(global.buffer, buffer_seek_start, 0)
    buffer_write(global.buffer,buffer_u8,NAME)
    buffer_write(global.buffer,buffer_string,global.uname)
    buffer_write(global.buffer,buffer_u8,1)
    network_send_packet(global.socket,global.buffer,buffer_tell(global.buffer))
    newname = 1
    
}
else
{
    askName()
    
}

#define askName
if name_ok = 0
    message = get_string_async("Insert your username.", "")
if name_ok = 1
    message = get_string_async(reason+"try again.", "")