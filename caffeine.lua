caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setTitle("\u{2615}")
    else
        caffeine:setTitle("\u{1F4A4}")
    end
end

function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

hs.hotkey.bind({"cmd", "ctrl"}, "K", function()
  caffeineClicked()
end)
