name = argument0
buffer_seek(global.buffer, buffer_seek_start, 0)
buffer_write(global.buffer,buffer_u8,GETRECORD)
buffer_write(global.buffer,buffer_u8,global.zone)
buffer_write(global.buffer,buffer_u8,global.level)
buffer_write(global.buffer,buffer_string,name)
network_send_packet(global.socket,global.buffer,buffer_tell(global.buffer))
