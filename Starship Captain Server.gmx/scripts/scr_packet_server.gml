#define scr_packet_server
buffer = argument0
socket = argument1
buffer_seek(buffer, buffer_seek_start, 0)
message_id = buffer_read(buffer, buffer_u8)
switch (message_id)
{
    case NAME:
        scr_name_s(buffer,socket)
    break;
    case SENDRECORD:
        scr_sendrecord(buffer,socket)
    break;
    case GETRECORD:
        scr_getrecord(buffer,socket)
    break;
    case GETBOARD:
        scr_getboard(buffer,socket)
    break;
    case WIN:
        scr_win(buffer,socket)
    break;
    case STARLOSS:
        scr_starloss(buffer,socket)
    break;
    case LEVELLOSS:
        scr_levelloss(buffer,socket)
    break;
    case LEVELSTARTED:
        scr_levelstart(buffer,socket)
    break;
    case LEVELQUIT:
        scr_levelquit(buffer,socket)
    break;
    case VERSION:
        scr_version(buffer,socket)
    break;
}

#define scr_name_s
buffer = argument0
socket = argument1

name = buffer_read(buffer, buffer_string)
newname = buffer_read(buffer, buffer_u8)
taken = 0

if newname = 1
{
    ini_open("Names")
    count = ini_read_real("count","count",0)
    
    i = 0
    repeat(count)
    {
        i++
        if ini_read_string(string(i),"name","") = name
            taken = 1
    }
    
    if taken = 1
    {
        buffer_seek(global.buffer, buffer_seek_start, 0)
        buffer_write(global.buffer,buffer_u8,NAMETAKEN)
        buffer_write(global.buffer,buffer_u8,1)
        network_send_packet(socket,global.buffer,buffer_tell(global.buffer))
        write_log(name + " was already in the list of players","")
    }
    
    if taken = 0
    {
        write_log(name + " was added to list of players","")
        count += 1
        ini_write_string(string(count),"name",name)
        ini_write_real("count","count",count)
        buffer_seek(global.buffer, buffer_seek_start, 0)
        buffer_write(global.buffer,buffer_u8,NAMETAKEN)
        buffer_write(global.buffer,buffer_u8,0)
        network_send_packet(socket,global.buffer,buffer_tell(global.buffer))
    }
    ini_close()
}

if taken = 0
{
    write_log(name + "'s name was resolved",name)
    ds_list_add(name_list,name)
    ini_open("online")
        ini_write_string(string(socket),"name",name)
    ini_close()
}


#define scr_sendrecord
buffer = argument0
socket = argument1

zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)
record = buffer_read(buffer, buffer_f64)
name = buffer_read(buffer, buffer_string)

ini_open("High Scores/" + string(zone) + "/" + string(level))
    count = ini_read_real("count","count",0)
    
    written = 0
    i = 0
    repeat(count)
    {
        i++
        if ini_read_string(string(i),"name","") = name
        {
            written = 1
            ini_write_real(string(i),"record",record)
            write_log(name + " got a new record of " + string(record),name)
        }
    }
    if written = 0
    {
        count = ini_read_real("count","count",0) + 1
        
        ini_write_real("count","count",count)
        ini_write_real(string(count),"record",record)
        ini_write_string(string(count),"name",name)
        write_log(name + " got a new record of " + string(record),name)
    }
ini_close()

#define scr_getrecord
buffer = argument0
socket = argument1

zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)
name = buffer_read(buffer, buffer_string)

ini_open("High Scores/" + string(zone) + "/" + string(level))
    count = ini_read_real("count","count",0)
    
    i = 0
    repeat(count)
    {
        i++
        if ini_read_string(string(i),"name","") = name
            record = ini_read_real(string(i),"record",0)
    }
ini_close()

ini_open("online")
        uname = ini_read_string(string(socket),"name","")
ini_close()

write_log(uname + " requested record for " + name +  "(" + string(record) + ")",uname)

buffer_seek(global.buffer, buffer_seek_start, 0)
buffer_write(global.buffer,buffer_u8,GETRECORD)
buffer_write(global.buffer,buffer_f64,record)
network_send_packet(socket,global.buffer,buffer_tell(global.buffer))

#define scr_getboard
buffer = argument0
socket = argument1

zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)

buffer_seek(global.buffer, buffer_seek_start, 0)
buffer_write(global.buffer,buffer_u8,GETBOARD)

ini_open("High Scores/" + string(zone) + "/" + string(level))
count = ini_read_real("count","count",0)
buffer_write(global.buffer,buffer_u32,count)
    i = 0
    repeat(count)
    {
        i++
        buffer_write(global.buffer,buffer_string,ini_read_string(string(i),"name","ERROR"))
        buffer_write(global.buffer,buffer_f64,ini_read_real(string(i),"record",0))
    }
ini_close()

network_send_packet(socket,global.buffer,buffer_tell(global.buffer))
write_log("Board Requested",name)

#define scr_win
buffer = argument0
socket = argument1

name = buffer_read(buffer, buffer_string)
zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)
stars = buffer_read(buffer, buffer_u8)
time = buffer_read(buffer, buffer_u32)
gamemode = buffer_read(buffer, buffer_string)

write_log(name + " Won: " + string(zone) + "." + string(level) + "  S:" + string(stars) + "  T:" + string_format(time,1,2), name)

#define scr_starloss
buffer = argument0
socket = argument1

name = buffer_read(buffer, buffer_string)
zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)
ix = buffer_read(buffer, buffer_u32)
iy = buffer_read(buffer, buffer_u32)
dir = buffer_read(buffer, buffer_u32)

ini_open("Metrics/Star Losses/" + string(zone) + "/" + string(level))
    count = ini_read_real("count","count",0)
    
    ini_write_real(string(count),"X",ix)
    ini_write_real(string(count),"Y",iy)
    ini_write_real(string(count),"Dir",dir)
    
    ini_write_real("count","count",count + 1)
ini_close()

write_log(name + " Star X:" + string(ix) + "  Y:" + string(iy) + " Dir:" + string(dir), name)

#define scr_levelloss
buffer = argument0
socket = argument1

name = buffer_read(buffer, buffer_string)
zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)

write_log(name + " Lost:" + string(zone) + "." + string(level), name)

#define scr_levelstart
buffer = argument0
socket = argument1

name = buffer_read(buffer, buffer_string)
zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)
gamemode = buffer_read(buffer, buffer_string)

write_log(name + " Started " + string(zone) + "." + string(level) + "  Mode: " + gamemode, name)

#define scr_levelquit
buffer = argument0
socket = argument1

name = buffer_read(buffer, buffer_string)
zone = buffer_read(buffer, buffer_u8)
level = buffer_read(buffer, buffer_u8)

write_log(name + " Quit:" + string(zone) + "." + string(level), name)

#define scr_version
buffer = argument0
socket = argument1

name = buffer_read(buffer, buffer_string)
version = buffer_read(buffer, buffer_string)

mismatch = 1
if version = global.version
    mismatch = 0
else
    write_log(name + " Version Mismatch: " + string(version), name)

buffer_seek(global.buffer, buffer_seek_start, 0)
buffer_write(global.buffer,buffer_u8, VERSION)
buffer_write(global.buffer,buffer_u8, mismatch)
network_send_packet(socket,global.buffer, buffer_tell(global.buffer))