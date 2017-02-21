local MainMenuButton = Component.create("MainMenuButton")

function MainMenuButton:initialize(text, x, y, r, ox, oy, font, HoveredDrawable, Callback)
  self.text = love.graphics.newText(font, text)
  self.x = x
  self.y = y
  self.r = r
  self.ox = ox
  self.oy = oy
  self.Hovered = false
  self.HoveredDrawable = HoveredDrawable
  self.Callback = ClickCallback
end
