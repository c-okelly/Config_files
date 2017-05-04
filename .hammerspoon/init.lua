
-- hs.hotkey.bind({}, "`", function()
--     hs.eventtap.keyStroke({}, "ctrl")
-- end)

hs.hotkey.bind({"ctrl"}, "e", function()
    hs.eventtap.keyStroke({}, "ESCAPE")
end)

hs.hotkey.bind({"option"}, "h", function()
    hs.eventtap.keyStroke({"shift"}, "1")
end)



-- hs.hotkey.bind({}, "§", function()
--     hs.eventtap.keyStroke({"shift"}, "`")
-- end)
