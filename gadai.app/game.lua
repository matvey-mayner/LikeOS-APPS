local component = require("component")
local term = require("term")
local os = require("os")
local gpu = component.gpu

gpu.setResolution(80, 25)

local function clear()
  gpu.fill(1, 1, 80, 25, " ")
end

local function printCentered(text)
  local w, h = gpu.getResolution()
  local x = math.floor((w - #text) / 2) + 1
  local y = math.floor(h / 2)
  gpu.set(x, y, text)
end

local function playGame()
  clear()
  printCentered("Добро пожаловать в игру 'Угадай число'!")
  gpu.set(1, math.floor(25 / 2) + 2, "Я загадал число от 1 до 100. Попробуй угадать его.")
  
  local number = math.random(1, 100)
  local attempts = 0
  
  while true do
    term.setCursor(1, math.floor(25 / 2) + 4)
    term.write("Введите ваше предположение: ")
    local input = term.read()
    local guess = tonumber(input)
    
    if guess then
      attempts = attempts + 1
      if guess < number then
        gpu.set(1, math.floor(25 / 2) + 5, "Загаданное число больше.                                ")
      elseif guess > number then
        gpu.set(1, math.floor(25 / 2) + 5, "Загаданное число меньше.                                ")
      else
        gpu.set(1, math.floor(25 / 2) + 5, "Поздравляю! Вы угадали число за " .. attempts .. " попыток.")
        os.sleep(4)
        break
      end
    else
      gpu.set(1, math.floor(25 / 2) + 5, "Пожалуйста, введите действительное число.                ")
    end
  end
end

playGame()
