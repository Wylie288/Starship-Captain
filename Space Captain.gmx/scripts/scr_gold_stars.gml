n = global.levelcount[global.zone]
i = 0
g = 0
ini_open(global.normal_times_file)
    repeat(n)
    {
        i += 1
            t = ini_read_real(string(global.zone),string(i),99999)
        
        setLevelData()
        if t <= global.levelData[i,2] * GOLD
            g += 1
    }
ini_close()


return g
