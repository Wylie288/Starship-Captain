global.board_loaded = 0
global.board_last_zone = global.zone
global.board_last_level = global.level
global.board_scroll = 0

buffer_seek(global.buffer, buffer_seek_start, 0)
buffer_write(global.buffer,buffer_u8,GETBOARD)
buffer_write(global.buffer,buffer_u8,global.zone)
buffer_write(global.buffer,buffer_u8,global.level)
network_send_packet(global.socket,global.buffer,buffer_tell(global.buffer))
