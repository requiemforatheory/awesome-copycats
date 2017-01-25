--[[

     Requiem For A Theory's Awesome WM config 1.0
     github.com/requiemforatheory/awesome-r4at

--]]

-- Use common for default (non-theme-specific) settings. Currently based on multicolor.
-- Theme Declaration
local theme = "nuc"
local themedir = os.getenv("HOME") .. "/.config/awesome/rc.d/" .. theme

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

local commondir = os.getenv("HOME") .. "/.config/awesome/common"

dofile(commondir .. "/error-handling.lua")

-- {{{ Variable definitions
beautiful.init(themedir .. "/theme/theme.lua")

dofile(commondir .. "/variables.lua")
dofile(commondir .. "/layouts.lua")

-- }}}

-- {{{ Wallpaper

if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper[s], s, true)
    end
end

-- }}}

dofile(commondir .. "/context-menu.lua")
dofile(commondir .. "/wibox-def.lua")
dofile(commondir .. "/wibox-layout.lua")
dofile(commondir .. "/bindings-mouse.lua")
dofile(commondir .. "/bindings-keys.lua")
dofile(commondir .. "/rules.lua")
dofile(commondir .. "/signals.lua")

-- {{{Theme-Specific Settings (may overwrite defaults)

dofile(themedir .. "/rc.lua")

-- }}}
