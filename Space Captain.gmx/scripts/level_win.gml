buffer_seek(global.buffer, buffer_seek_start, 0)
buffer_write(global.buffer,buffer_u8,WIN)
buffer_write(global.buffer,buffer_string,global.uname)
buffer_write(global.buffer,buffer_u8,global.zone)
buffer_write(global.buffer,buffer_u8,global.level)
buffer_write(global.buffer,buffer_u8,obj_ship.stars)
buffer_write(global.buffer,buffer_u32,global.timer)
buffer_write(global.buffer,buffer_string,global.game_mode)
network_send_packet(global.socket,global.buffer,buffer_tell(global.buffer))
