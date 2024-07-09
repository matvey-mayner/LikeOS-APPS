local iowindows = require("iowindows")
local openbox = require("openbox")

-----------------------------------------------

local screen = ...
openbox.runWithSplash(screen, system.getResourcePatch("game.lua"))
