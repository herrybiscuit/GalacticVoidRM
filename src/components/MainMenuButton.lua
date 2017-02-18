local MainMenuButton = Component.create("MainMenuButton")

function MainMenuButton:initialize(text, x, y, r, font, HoveredDrawable, Callback)
    self.text = love.graphics.newText(font, text)
    self.x = x
    self.y = y
    self.r = r
    self.Hovered = false
    self.HoveredDrawable = HoveredDrawable
    self.Callback = ClickCallback
end
