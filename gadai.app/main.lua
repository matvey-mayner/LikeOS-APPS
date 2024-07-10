local iowindows = require("iowindows")
local openbox = require("openbox")
local system = require("system")

-----------------------------------------------

local screen = ...
openbox.runWithSplash(screen, system.getResourcePatch("game.lua"))
