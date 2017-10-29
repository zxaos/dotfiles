-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Direct mappings of hyper key as all modifiers for use in other programs that have direct hotkey support

k:bind({}, 'd', nil, function()
		hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'd')
		k.triggered = true
end)

k:bind({}, 't', nil, function()
    hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 't')
    k.triggered = true
end)

k:bind({}, 'm', nil, function()
		hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, 'm')
		k.triggered = true
end)

-- HYPER+L: Open dev board in the default browser
lfun = function()
  target = "app = Application.currentApplication(); app.includeStandardAdditions = true; app.doShellScript('open https://trello.com/b/31p5PlZu/development')"
  hs.osascript.javascript(target)
  k.triggered = true
end
k:bind('', 'l', nil, lfun)

-- HYPER+M: Call a pre-defined trigger in Alfred 3
-- mfun = function()
--   cmd = "tell application \"Alfred 3\" to run trigger \"emoj\" in workflow \"com.sindresorhus.emoj\" with argument \"\""
--   hs.osascript.applescript(cmd)
--   k.triggered = true
-- end
-- k:bind({}, 'm', nil, mfun)

-- HYPER+E: Act like ⌃e and move to end of line.
efun = function()
  hs.eventtap.keyStroke({'⌃'}, 'e')
  k.triggered = true
end
k:bind({}, 'e', nil, efun)

-- HYPER+A: Act like ⌃a and move to beginning of line.
afun = function()
  hs.eventtap.keyStroke({'⌃'}, 'a')
  k.triggered = true
end
k:bind({}, 'a', nil, afun)

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)
