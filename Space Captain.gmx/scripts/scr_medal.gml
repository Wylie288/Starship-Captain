c = argument0
g = 0

ini_open(global.normal_times_file)
t = ini_read_real(string(global.zone),string(global.level),99999)
ini_close()

setLevelData()
if t <= global.levelData[global.level,2] * c
    g = 1


return g
