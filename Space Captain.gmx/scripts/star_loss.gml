buffer_seek(global.buffer, buffer_seek_start, 0)
buffer_write(global.buffer,buffer_u8,STARLOSS)
buffer_write(global.buffer,buffer_string,global.uname)
buffer_write(global.buffer,buffer_u8,global.zone)
buffer_write(global.buffer,buffer_u8,global.level)
buffer_write(global.buffer,buffer_u32,round(obj_ship.phy_position_x))
buffer_write(global.buffer,buffer_u32,round(obj_ship.phy_position_y))
buffer_write(global.buffer,buffer_u32,obj_ship.col_dir)
network_send_packet(global.socket,global.buffer,buffer_tell(global.buffer))
