local MainKeySystem = class("MainKeySystem", System)

function MainKeySystem:fireEvent(event)
  if event.key == "w" then
    -- up list
  elseif event.key == "s" then
    -- down list
  end
end

return MainKeySystem
