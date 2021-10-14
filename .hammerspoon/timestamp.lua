
-- gen current timestamp and store in clipboard
hs.hotkey.bind({"alt"}, "t", function()
    local now = os.time()
    hs.pasteboard.writeObjects(now)
    hs.alert.show(now)
end,nil)
