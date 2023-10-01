local inet = require("Internet")
local fs = require("Filesystem")

inet.download("https://raw.githubusercontent.com/matvey-mayner/LikeOS-APPS" .. tostring(file),where)
download("/bootloader.lua","/system/core/bootloader.lua")
download("/Fedya.lua","/system/core/Fedya.lua")
