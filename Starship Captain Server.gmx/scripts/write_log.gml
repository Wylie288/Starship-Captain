str = argument0
uname = argument1

server_log += "#" + get_time_log() + str
global.log_lines += 1

file = file_text_open_append("Logs/Server/" + string(get_time_file())+ ".log")
file_text_write_string(file,str)
file_text_writeln(file)
file_text_close(file)

if uname != ""
{
    file = file_text_open_append("Logs/Player/" + string(uname)+ ".log")
    file_text_write_string(file,str)
    file_text_writeln(file)
    file_text_close(file)
}
