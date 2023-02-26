n = argument0
ini_open(global.normal_times_file)
time = ini_read_real(string(global.zone),string(n),999999)
ini_close()

setLevelData()
if time <= global.levelData[n,2]
    index = 7
else if time <= global.levelData[n,2] * RUBY
    index = 6
else if time <= global.levelData[n,2] * SAPPHIRE
    index = 5
else if time <= global.levelData[n,2] * EMERALD
    index = 4
else if time <= global.levelData[n,2] * GOLD
    index = 3
else if time <= global.levelData[n,2] * SILVER
    index = 2
else if time <= global.levelData[n,2] * BRONZE
    index = 1
else
    index = 0
