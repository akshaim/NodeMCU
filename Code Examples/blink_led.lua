PIN = 1
gpio.mode(PIN,gpio.OUTPUT) -- PIN 2 as input
tmr.alarm(0, 1000, 1, function () --execute loop in 1 second interval
   if status==0 then
    status=1
    gpio.write(PIN, gpio.HIGH)
   else 
    status =0
    gpio.write(PIN, gpio.LOW)
   end
end)
