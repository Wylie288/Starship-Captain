hour = current_hour
minute = current_minute

if hour < 10
    hour = "0" + string(hour)
    
if minute < 10
    minute = "0" + string(minute)


return string(current_month) + "/" + string(current_day) + "/" + string(current_year) + " " + string(hour) + ":" + string(minute) + " | "
