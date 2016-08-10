PIN = 2
gpio.mode(PIN,gpio.INPUT) -- PIN 2 as input

tmr.alarm(0, 1000, 1, function () --print value in 1 second interval
    print(gpio.read(PIN)) ----Print state of PIN 2
end)
