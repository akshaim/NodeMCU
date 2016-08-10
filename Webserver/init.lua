wifi.setmode(wifi.STATION)
wifi.sta.config("Your SSID","Your WIfi Password")
wifi.sta.connect()
tmr.alarm(1, 1000, 1, function()
if wifi.sta.getip()== nil then
print("IP unavaiable, Waiting...")
else
tmr.stop(1)
print("Connected, IP is "..wifi.sta.getip())
dofile("server.lua")
end
end)
