--[[

     Evolution Awesome WM config 2.0
     github.com/requiemforatheory

--]]

-- {{{ Required libraries
gears     = require("gears")
awful     = require("awful")
awful.rules     = require("awful.rules")
                  require("awful.autofocus")
wibox     = require("wibox")
beautiful = require("beautiful")
naughty   = require("naughty")
drop      = require("scratchdrop")
lain      = require("lain")
-- }}}

local confdir = os.getenv("HOME") .. "/.config/awesome/rc.d/evolution/"

dofile(confdir .. "error-handling.lua")

-- {{{ Variable definitions

-- beautiful init
beautiful.init(confdir .. "theme/theme.lua")
dofile(confdir .. "variables.lua")
dofile(confdir .. "layouts.lua")

-- }}}

-- {{{ Wallpaper

if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper[s], s, true)
    end
end

-- }}}

dofile(confdir .. "context-menu.lua")
dofile(confdir .. "wibox-def.lua")
dofile(confdir .. "wibox-layout.lua")
dofile(confdir .. "bindings-mouse.lua")
dofile(confdir .. "bindings-keys.lua")
dofile(confdir .. "rules.lua")
dofile(confdir .. "signals.lua")
