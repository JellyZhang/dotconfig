-- Setup
--hs.drawing.windowBehaviors = {"managed"}

-- Includes
require('quickopen')
require('window')
require('navigator')
require('test')

local function pressFn(mods, key)
	if key == nil then
		key = mods
		mods = {}
	end

	return function() hs.eventtap.keyStroke(mods, key, 1000) end
end


hs.hotkey.bind({"alt"}, "k", pressFn({},'down'))
hs.hotkey.bind({"alt"}, "j", pressFn({},'left'))
hs.hotkey.bind({"alt"}, "i", pressFn({},'up'))
hs.hotkey.bind({"alt"}, "l", pressFn({},'right'))
--hs.loadSpoon("Calendar")
--hs.loadSpoon("BingDaily")
--BingDaily.start()
