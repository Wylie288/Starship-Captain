name_ok = 0
do
{
    if name_ok = 0
    global.uname = get_string("Insert your username.", "")
    if name_ok = 1
    global.uname = get_string(reason+"try again.", "")
    name_ok = 0
    file = file_text_open_read(working_directory + "Filter_Words.txt")
    repeat (729)
    {
        text = file_text_read_string(file)
        if string_pos(text,global.uname) != 0
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
        }
    }
    file_text_close(file)
}
until (name_ok = 0);
newname = 1
