local hyper = {"cmd", "ctrl", "alt", "shift"}
local meh = {"ctrl", "alt", "shift"}

hs.hotkey.bind(hyper, "H", function()
  hs.reload()
end)

--[[
hs.hotkey.bind(meh, "W", function()
  hs.alert.show("Hello World!", chunkHotkeyConfirmationStyle)
end)

]]
-- Chunkwm
local chunkHotkeyConfirmationStyle = {atScreenEdge = 2}
local showChunkWMCommands = 1;
--local chunkc = '/usr/local/bin/chunkc'

function chunkAlert(text)
  if showChunkWMCommands then
    hs.alert(text, chunkHotkeyConfirmationStyle)
  end
end

-- This is all disabled because it's way too slow. Register the url helper and let skhd trigger hs events via background URLs instead
--[[
function alertCallback(text)
  return function(exitCode, stdOut, stdErr)
    chunkAlert(text)
  end
end

local directionsQwerty = { h = 'west', j = 'south', k = 'north', l = 'east'}
local directionsWorkman = { y = 'west', n = 'south', e = 'north', o = 'east'}

for key, dir in pairs(directionsWorkman) do
  hs.hotkey.bind(hyper, key, function()
    os.execute(chunkc .. " tiling::window" .. " --focus " .. dir)
    chunkAlert('focus ' .. dir)
  end)
end

-- Print contents of `tbl`, with indentation.
-- `indent` sets the initial level of indentation.
function tprint (tbl, indent)
  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      print(formatting)
      tprint(v, indent+1)
    elseif type(v) == 'boolean' then
      print(formatting .. tostring(v))
    else
      print(formatting .. v)
    end
  end
end
]]

hs.urlevent.bind("chunkEvent", function(eventName, params)
  if showChunkWMCommands and params.t then
    hs.alert(params.t, chunkHotkeyConfirmationStyle)
  end
end)
