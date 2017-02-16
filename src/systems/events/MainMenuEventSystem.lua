local MainMenuEventSystem = class("MainMenuEventSystem", System)

function MainMenuEventSystem:fireKeyPressed(event)
  if event.key == "w" then
    -- up list
  elseif event.key == "s" then
    -- down list
  end
end

function MainMenuEventSystem:fireMouseMoved(event)

end

function MainMenuEventSystem:fireMousePressed(event)

end

return MainMenuEventSystem
