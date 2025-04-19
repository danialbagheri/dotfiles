hs = hs
hs.loadSpoon("AClock")

-- reload configs
hs.hotkey.bind({"cmd", "alt"}, "R", function()
	  hs.reload()
  end)
  hs.alert.show("Config loaded")

-- Defeating paste blocking
hs.hotkey.bind({"cmd", "alt"}, "V", function()
    hs.eventtap.keyStrokes(hs.pasteboard.getContents()) 
end)

hs.hotkey.bind({"alt", "cmd"}, "1", function()
	hs.application.launchOrFocus("Warp")
end)

hs.hotkey.bind({"alt", "cmd"}, "2", function()
	hs.application.launchOrFocus("Visual Studio Code")
end)

hs.hotkey.bind({"alt", "cmd"}, "3", function()
	hs.application.launchOrFocus("Google Chrome")
end)

hs.hotkey.bind({"alt","cmd"}, "4", function()
	hs.application.launchOrFocus("Slack")
end)

hs.hotkey.bind({"cmd", "alt"}, "c", function()
  spoon.AClock:toggleShow()
end)


