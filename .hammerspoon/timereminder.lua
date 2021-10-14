local timer = hs.timer.doEvery(60, function()
    print(os.date("%M"))
    if os.date("%M") == '00' then
        hs.alert.show(os.date("%H:%M"))
    end
end)

