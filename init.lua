require "screen"
require "wifiWatcher"

hs.alert.show("Config loaded")
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

hs.urlevent.bind("someAlert", function(eventName, params)
    hs.alert.show("Received someAlert")
end)

-- hs.loadSpoon("ClipboardTool")
-- spoon.ClipboardTool:start()
-- spoon.ClipboardTool:bindHotkeys({
--   toggle_clipboard = { { "ctrl","shift" }, "v" }
-- })
