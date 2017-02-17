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
  if event.button == 1 then
    -- Check for clicking on main menu buttons
    for key, entity in pairs(Gv.getEntitiesWithComponent("MainMenuButton")) do
      local MenuButton = entity:get("MainMenuButton")
      local TextHeight, TextWidth = MenuButton.text:getDimensions()
      local TextX, TextY = MenuButton.x, MenuButton.y

    end
  end
end

return MainMenuEventSystem
