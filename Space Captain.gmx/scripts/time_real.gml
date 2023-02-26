if argument0 > 59
{
    time = string(floor(argument0/60))
    seconds = argument0 - (real(time) * 60)
    if seconds >= 10
        seconds = string_format(floor(seconds * 100)/100,2,2)
    else
        seconds = "0" + string_format(floor(seconds * 100)/100,2,2)
    return (time * 60) + seconds
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
