///UIEditor(n, axis)

n = string(argument0)
axis = string(argument1)

ini_open("UIEditor")
    loc = ini_read_real(n,axis,0)
ini_close()

return loc
