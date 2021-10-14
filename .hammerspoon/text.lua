
hs.hotkey.bind({"alt"}, "i", function()
  hs.eventtap.keyStroke({},'up',0);
end,nil,function()
  hs.eventtap.keyStroke({},'up',0);
end)
hs.hotkey.bind({"alt"}, "k", function()
  hs.eventtap.keyStroke({},'down',0);
end,nil,function()
  hs.eventtap.keyStroke({},'down',0);
end)
hs.hotkey.bind({"alt"}, "j", function()
  hs.eventtap.keyStroke({},'left',0);
end,nil,function()
  hs.eventtap.keyStroke({},'left',0);
end)
hs.hotkey.bind({"alt"}, "l", function()
  hs.eventtap.keyStroke({},'right',0);
end,nil,function()
  hs.eventtap.keyStroke({},'right',0);
end)

hs.hotkey.bind({"alt","shift"}, "j", function()
  hs.eventtap.keyStroke({"ctrl"},'a',0);
end,nil,function()
  hs.eventtap.keyStroke({"ctrl"},'a',0);
end)

hs.hotkey.bind({"alt","shift"}, "l", function()
  hs.eventtap.keyStroke({"ctrl"},'e',0);
end,nil,function()
  hs.eventtap.keyStroke({"ctrl"},'e',0);
end)


hs.hotkey.bind({"alt","shift"}, "i", function()
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
end,nil,function()
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
  hs.eventtap.keyStroke({},'up',0);
end)

hs.hotkey.bind({"alt","shift"}, "k", function()
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
end,nil,function()
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
  hs.eventtap.keyStroke({},'down',0);
end)
hs.hotkey.bind({"alt"}, "u", function()
  hs.eventtap.keyStroke({},'backspace',0);
end,nil,function()
  hs.eventtap.keyStroke({},'backspace',0);
end)
--local function pressFn(mods, key)
	--if key == nil then
		--key = mods
		--mods = {}
	--end
	--return function() hs.eventtap.keyStroke(mods, key, 0) end
--end

--hs.hotkey.bind({"alt"}, "k", pressFn({},'down'))
--hs.hotkey.bind({"alt"}, "j", pressFn({},'left'))
--hs.hotkey.bind({"alt"}, "i", pressFn({},'up'))
--hs.hotkey.bind({"alt"}, "l", pressFn({},'right'))
--hs.loadSpoon("Calendar")
--hs.loadSpoon("BingDaily")
--BingDaily.start()
--
--for key, val in pairs(hs.usb.attachedDevices()) do
    --print(key, val['productName'])
--end

--function usbDeviceCallback(data)
    --hs.alert(data["productName"])
    --if (data["productName"] == "ZOWIE Gaming mouse" ) then
        --if(data["eventType"] == "added") then
            --hs.alert("added")
            --hs.execute('defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false')
        --elseif(data["eventType"] == "removed") then
            --hs.alert("removed")
            --hs.execute('defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true')
        --end
    --end
--end
--usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
--usbWatcher:start()
