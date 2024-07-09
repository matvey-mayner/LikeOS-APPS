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
    }}

return list
