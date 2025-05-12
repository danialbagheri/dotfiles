hs = hs
hs.loadSpoon("AClock")

local hyper = {"cmd", "shift"}
-- reload configs
hs.hotkey.bind(hyper, "R", function()
	  hs.reload()
  end)
hs.alert.show("Config loaded")

-- Defeating paste blocking
-- hs.hotkey.bind(hyper, "V", function()
--     hs.eventtap.keyStrokes(hs.pasteboard.getContents()) 
-- end)


-- switching between windows
hs.hotkey.bind(hyper, 'm', function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)

-- this function doesn't work on mac. issue is visibleWindows() or mainWindo() are coming back null on certain apps
function launchOrMoveToScreen(appName)
  hs.application.launchOrFocus(appName)

  hs.timer.doAfter(1, function()
    local app = hs.appfinder.appFromName(appName)
    if app then
      local win = app:visibleWindows()
      -- local screen = hs.mouse.getCurrentScreen()
      local screen = hs.screen.allScreens()[1]    
      win:moveToScreen(screen)
      win:focus()
    end
  end)
end

-- below quick switch shortcuts are vendor agnostic for example 'b' for browser
-- or 'e' for editor or 't' for terminal
hs.hotkey.bind(hyper,"t", function()
	hs.application.launchOrFocus("Warp") 
    -- launchOrMoveToScreen("Warp")
end)

hs.hotkey.bind(hyper, "e", function()
	hs.application.launchOrFocus("Visual Studio Code")
end)

hs.hotkey.bind(hyper, "b", function()
	hs.application.launchOrFocus("Google Chrome")
end)

hs.hotkey.bind(hyper, "s", function()
	hs.application.launchOrFocus("Slack")
    -- launchOrMoveToScreen("Slack")
end)

hs.hotkey.bind(hyper, "m", function()
	hs.application.launchOrFocus("Mail")
end)

hs.hotkey.bind(hyper, "i", function()
	hs.application.launchOrFocus("Messages")
end)

hs.hotkey.bind(hyper, "a", function()
	hs.application.launchOrFocus("ChatGPT")
end)

-- function to set any active window full screen
hs.hotkey.bind(hyper, "F", function()
    -- setActiveAppFullscreen()
    local win = window.focusedWindow()
    if win ~= nil then
        win:setFullScreen(not win:isFullScreen())
    end
end)


hs.hotkey.bind(hyper, "c", function()
  spoon.AClock:toggleShow()
end)


