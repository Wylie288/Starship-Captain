z = argument0
ini_open(global.normal_stars_file)
n = global.levelcount[z]
i = 0
s = 0
repeat(n)
{
    i += 1
    s += ini_read_real(string(z),string(i),0)
}
ini_close()

return s
