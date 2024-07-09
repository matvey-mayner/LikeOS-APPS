local fs = require("filesystem")
local paths = require("paths")
local programs = require("programs")
local internet = require("internet")
local unicode = require("unicode")
local registry = require("registry")
local liked = require("liked")

local function download(path, url)
    assert(internet.download(url, path))
end

local function save(path, data)
    assert(fs.writeFile(path, data))
end

local screen, nickname, selfurl = ...

local selfurlpart = selfurl
for i = #selfurl, 1, -1 do
    selfurlpart = unicode.sub(selfurlpart, 1, #selfurlpart - 1)
    if unicode.sub(selfurl, i, i) == "/" then
        break
    end
end

local list = {
    {
        name = "gadai",
        version = "1",
        vendor = "matveymayner",
        description = "gadai game for Liked And OpenOS",
        minDiskSpace = 64,
        libs = {"openbox"},

        path = "/data/apps/gadai.app",
        urlPrimaryPart = selfurlpart .. "/apps/gadai.app/",
        files = {"main.lua", "icon.t2p", "game.lua"}
    },

list.libs = {
    ["vec"] = {
        url = selfurlpart .. "/libs/vec.lua",
        vendor = "logic",
        version = "2"
    },
    ["brainfuck"] = {
        url = selfurlpart .. "/libs/brainfuck.lua",
        vendor = "logic",
        version = "1"
    },
    ["rsa"] = {
        url = selfurlpart .. "/libs/rsa.lua",
        vendor = "logic",
        version = "1"
    },
    ["host"] = {
        url = selfurlpart .. "/libs/host.lua",
        vendor = "logic",
        version = "3"
    },
    ["midi"] = {
        url = selfurlpart .. "/libs/midi.lua",
        vendor = "logic",
        version = "2"
    },
    ["vmx"] = {
        url = selfurlpart .. "/libs/vmx.lua",
        vendor = "logic",
        version = "1"
    },
    ["draw"] = {
        url = selfurlpart .. "/libs/draw.lua",
        vendor = "logic",
        version = "1"
    },
    ["adv"] = {
        url = selfurlpart .. "/libs/adv.lua",
        vendor = "logic",
        version = "1"
    },
    ["glasses"] = {
        url = selfurlpart .. "/libs/glasses.lua",
        vendor = "logic",
        version = "1"
    },
    ["xml"] = {
        url = selfurlpart .. "/libs/xml.lua",
        vendor = "logic",
        version = "1"
    },
    ["bitMapFonts"] = {
        url = selfurlpart .. "/libs/bitMapFonts/init.lua",
        vendor = "logic",
        version = "1",
        path = "/data/lib/bitMapFonts/init.lua",
        files = {
            {
                url = selfurlpart .. "/libs/bitMapFonts/font.bin",
                path = "/data/lib/bitMapFonts/font.bin"
            },
            {
                url = selfurlpart .. "/libs/bitMapFonts/font.tbl",
                path = "/data/lib/bitMapFonts/font.tbl"
            }
        }
    },
    ["zximage"] = {
        url = selfurlpart .. "/libs/zximage/init.lua",
        vendor = "veeford",
        version = "1",
        path = "/data/lib/zximage/init.lua",
        files = {
            {
                url = selfurlpart .. "/libs/zximage/palette.plt",
                path = "/data/lib/zximage/palette.plt"
            }
        }
    },
    ["openbox"] = {
        url = selfurlpart .. "/libs/openbox/init.lua",
        vendor = "logic",
        version = "4",
        path = "/data/lib/openbox/init.lua",
        libs = {"vmx"},
        files = (function ()
            local boxlist = {
                "box.lua",
                "boot/00_base.lua",
                "boot/01_process.lua",
                "boot/02_os.lua",
                "boot/03_io.lua",
                "boot/04_component.lua",
                "boot/90_filesystem.lua",
                "boot/91_gpu.lua",
                "boot/92_keyboard.lua",
                "boot/93_term.lua",
                "boot/94_shell.lua",
                "lib/bit32.lua",
                "lib/buffer.lua",
                "lib/colors.lua",
                "lib/event.lua",
                "lib/filesystem.lua",
                "lib/internet.lua",
                "lib/io.lua",
                "lib/keyboard.lua",
                "lib/note.lua",
                "lib/package.lua",
                "lib/pipe.lua",
                "lib/process.lua",
                "lib/serialization.lua",
                "lib/sh.lua",
                "lib/shell.lua",
                "lib/sides.lua",
                "lib/term.lua",
                "lib/text.lua",
                "lib/thread.lua",
                "lib/transforms.lua",
                "lib/tty.lua",
                "lib/uuid.lua",
                "lib/vt100.lua",
                "lib/tools/programLocations.lua",
                "lib/tools/transfer.lua",
                "lib/core/boot.lua",
                "lib/core/cursor.lua",
                "lib/core/device_labeling.lua",
                "lib/core/full_buffer.lua",
                "lib/core/full_cursor.lua",
                "lib/core/full_event.lua",
                "lib/core/full_filesystem.lua",
                "lib/core/full_keyboard.lua",
                "lib/core/full_ls.lua",
                "lib/core/full_sh.lua",
                "lib/core/full_shell.lua",
                "lib/core/full_text.lua",
                "lib/core/full_transforms.lua",
                "lib/core/full_vt.lua",
                "lib/core/install_basics.lua",
                "lib/core/install_utils.lua",
                "lib/core/lua_shell.lua",
                "bin/cd.lua",
                "bin/edit.lua",
                "bin/pastebin.lua",
                "bin/sh.lua",
                "bin/wget.lua"
            }

            local list = {}
            table.insert(list, {
                url = selfurlpart .. "/libs/openbox/eepromImage",
                path = "/data/lib/openbox/eepromImage"
            })
            for i, lst in ipairs(boxlist) do
                table.insert(list, {
                    url = selfurlpart .. "/libs/openbox/box/" .. lst,
                    path = "/data/lib/openbox/box/" .. lst
                })
            end
            return list
        end)()
    }
}

return list