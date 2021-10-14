local application = require 'hs.application'
local spotify = require 'hs.spotify'

local obj={}
obj.__index=obj

-- Toggle an application between being the frontmost app, and being hidden
function toggle_application(_app)
  -- finds a running applications
  local app = application.find(_app)
  --for key,val in pairs(hs.application.runningApplications()) do
      --print(key,val)
  --end
  if not app and _app=='wechat' then
    app = application.find('微信')
  end


  if not app then
    -- application not running, launch app
    application.launchOrFocus(_app)
    return
  end

  -- application running, toggle hide/unhide
  local mainwin = app:mainWindow()
  if mainwin then
    if true == app:isFrontmost() then
      mainwin:application():hide()
    else
      mainwin:application():activate(true)
      mainwin:application():unhide()
      mainwin:focus()
    end
  else
    -- no windows, maybe hide
    if true == app:hide() then
      -- focus app
      application.launchOrFocus(_app)
    else
      -- nothing to do
    end
  end
end


function open(name)
  return function()
    toggle_application(name)
     --hs.application.launchOrFocus(name)
     --if name == "Finder" then
       --local f=hs.appfinder.appFromName("Finder")
       --if(f~=nil) then
         --f:activate()
       --else
         --print(f)
         --hs.eventtap.keyStroke({"cmd"},"N")
       --end

     --end
  end
end

hs.application.enableSpotlightForNameSearches(true)

--hs.hotkey.bind({"alt"}, "F", open("sketch"))
hs.hotkey.bind({"alt"}, "Q", open("QQ"))
hs.hotkey.bind({"alt"}, "E", open("提醒事项"))
--hs.hotkey.bind({"alt"}, "E", open("飞书"))
hs.hotkey.bind({"alt"}, "F", open("微信开发者工具"))
hs.hotkey.bind({"alt"}, "W", open("微信"))
hs.hotkey.bind({"alt"}, "S", open("Google Chrome"))
--hs.hotkey.bind({"alt"}, "S", open("Safari"))
hs.hotkey.bind({"alt"}, "A", open("iTerm"))
hs.hotkey.bind({"alt"}, "D", open("Typora"))
hs.hotkey.bind({"alt"}, "M", open("SoundCleod"))
--hs.hotkey.bind({"alt"}, "Z", open("Postman"))
hs.hotkey.bind({"alt"}, "Z", open("Spark"))
hs.hotkey.bind({"alt"}, "X", open("anki"))
--hs.hotkey.bind({"alt"}, "C", open("Charles"))
hs.hotkey.bind({"alt"}, "C", open("PDF Expert"))
hs.hotkey.bind({"alt"}, "V", open("Visual Studio Code"))
--hs.hotkey.bind({"alt"}, "D", open("DingTalk"))
--hs.hotkey.bind({"alt"}, "2", open("Microsoft To Do"))
--
--
--
--
hs.hotkey.bind({"alt", "cmd"}, "l", function()
  hs.eventtap.event.newSystemKeyEvent("NEXT", true):post();
  hs.eventtap.event.newSystemKeyEvent("NEXT", false):post();
end,nil,nil)

hs.hotkey.bind({"alt", "cmd"}, "j", function()
  hs.eventtap.event.newSystemKeyEvent("PREVIOUS", true):post();
  hs.eventtap.event.newSystemKeyEvent("PREVIOUS", false):post();
end,nil,nil)

hs.hotkey.bind({"alt", "cmd"}, "k", function()
  hs.eventtap.event.newSystemKeyEvent("PLAY", true):post();
  hs.eventtap.event.newSystemKeyEvent("PLAY", false):post();
end,nil,nil)

hs.hotkey.bind({"alt", "cmd"}, "i", function()
  hs.eventtap.event.newSystemKeyEvent("PLAY", true):post();
  hs.eventtap.event.newSystemKeyEvent("PLAY", false):post();
end,nil,nil)

--[[
SOUND_UP
SOUND_DOWN
MUTE
BRIGHTNESS_UP
BRIGHTNESS_DOWN
CONTRAST_UP
CONTRAST_DOWN
POWER
LAUNCH_PANEL
VIDMIRROR
PLAY
EJECT
NEXT
PREVIOUS
FAST
REWIND
ILLUMINATION_UP
ILLUMINATION_DOWN
ILLUMINATION_TOGGLE
CAPS_LOCK
HELP
NUM_LOCK
--]]


return obj
