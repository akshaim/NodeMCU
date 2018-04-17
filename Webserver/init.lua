--    Author : Akshai M <akshaim.in>
--    This program is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.

wifi.setmode(wifi.STATION)
station_cfg={}
station_cfg.ssid="Your SSID"
station_cfg.pwd="Your WIfi Password"
station_cfg.save=false
wifi.sta.config(station_cfg)
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
