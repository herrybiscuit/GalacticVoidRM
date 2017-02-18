local MainMenuRenderSystem = class("MainMenuRenderSystem", System)

function MainMenuRenderSystem:initialize()
   System.initialize(self)
end

function MainMenuRenderSystem:draw()
   for key, entity in pairs(self.targets.MainButtons) do
      local MenuButton = entity:get("MainMenuButton")
      love.graphics.draw(MenuButton.text, MenuButton.x, MenuButton.y, MenuButton.r)
   end
end

function MainMenuRenderSystem:requires()
    return {MainButtons={"MainMenuButton"}}
end

return MainMenuRenderSystem
