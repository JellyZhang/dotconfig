local pasteboard = require("hs.pasteboard") -- http://www.hammerspoon.org/docs/hs.pasteboard.html
local string = require "string"
local table = require "table"

--URL encode a string.
local function encode(str)
  --Convert spaces to plus signs
  str = string.gsub (str, " ", "%%20")
  return str
end

hs.hotkey.bind({"alt"}, "n", function()
    current_clipboard = pasteboard.getContents()
    after_encode = encode(current_clipboard)
    after_encode = [[[Solution](leetcode/]]..after_encode..")"
    hs.pasteboard.writeObjects(after_encode)
    hs.alert.show(after_encode)
end,nil)
