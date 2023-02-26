z = argument0
c = argument1

n = global.levelcount[z]
i = 0
g = 0
ini_open(global.normal_times_file)
    repeat(n)
    {
        i += 1
            t = ini_read_real(string(z),string(i),99999)
        
        global.zone = z
        setLevelData()
        if t <= global.levelData[i,2] * c
            g += 1
    }
ini_close()


return g
