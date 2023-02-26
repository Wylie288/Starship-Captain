if argument0 > 359
{
    time = real(argument0)
    
    hours = string(floor(time/360))
    time -= (real(hours) * 360)

    minutes = floor(time/60)
    if minutes >= 10
        minutes = string(minutes)
    else
        minutes = "0" + string(minutes)
    
    seconds = time - (real(minutes) * 60)
    if seconds >= 10
        seconds = string_format(floor(seconds * 100)/100,2,2)
    else
        seconds = "0" + string_format(floor(seconds * 100)/100,2,2)
    return hours + ":" + minutes + ":" + seconds
}
else if argument0 > 59
{
    time = string(floor(argument0/60))
    seconds = argument0 - (real(time) * 60)
    if seconds >= 10
        seconds = string_format(floor(seconds * 100)/100,2,2)
    else
        seconds = "0" + string_format(floor(seconds * 100)/100,2,2)
    return time + ":" + seconds
}
else
{
    seconds = argument0
    if seconds >= 10
        seconds = string_format(floor(seconds * 100)/100,2,2)
    else
        seconds = "0" + string_format(floor(seconds * 100)/100,2,2)
    return seconds
}
