hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.eventtap.scrollWheel({0,10},{},'line')
end)

--local as = require "hs.osascript"
local function tell(cmd)
    local _cmd = 'tell application "NeteaseMusic" to ' .. cmd
    local ok, result = hs.osascript.applescript(_cmd)
    if ok then return result else return result end
end
detectMouseDown = hs.eventtap.new({ 
  hs.eventtap.event.types.otherMouseDown,
  hs.eventtap.event.types.leftMouseDown,
  hs.eventtap.event.types.rightMouseDown
}, function(e)
  local button = e:getProperty(
      hs.eventtap.event.properties['mouseEventButtonNumber']
  )
  if button == 3 then 
      print(button)
      print(tell('pause'))
      
      --local op = hs.audiodevice.defaultOutputDevice()
      --op:setMuted(true)
      --local nxt = hs.eventtap.event.newSystemKeyEvent('PLAY',true)
      --print(nxt)
      --nxt:start()
      --local table = hs.application.runningApplications()
      --for i=1,#table do
          --print(table[i])
      --end
  end
  --print(string.format("Clicked Mouse Button: %i", button))
end)

detectMouseDown:start()
