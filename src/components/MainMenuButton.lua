local MainMenuButton = Component.create("MainMenuButton")

function MainMenuButton:initialize(text, x, y, font, HoveredDrawable, Callback)
    self.text = love.graphics.newText(font, text)
    self.x = x
    self.y = y
    self.Hovered = false
    self.HoveredDrawable = HoveredDrawable
    self.Callback = ClickCallback
end
