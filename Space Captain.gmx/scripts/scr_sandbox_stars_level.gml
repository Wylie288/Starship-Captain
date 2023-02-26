Aship[1] = 3 
Aship[2] = 4 
Aship[3] = 5 
Aship[4] = 6 
Aship[5] = 7 
Aship[6] = 8 
Aship[7] = 9 
Aship[8] = 12
Aship[9] = 13
Aship[10] = 15
Aship[11] = 16
Aship[12] = 21
Aship[13] = 2
l = argument0
c = 0
k = 1
ini_open(global.sandbox_file + string(global.zone))
    repeat(12)
    {
        c += ini_read_real(string(l),string(Aship[k]),0)
        k += 1
    }
ini_close()
return c
