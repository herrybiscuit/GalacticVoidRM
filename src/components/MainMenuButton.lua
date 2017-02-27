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

  -- init base vectors
  local leftTop = Gv.vector.new(x, y)
  local leftBot = Gv.vector.new(x, y + self.text:getHeight())
  local rightTop = Gv.vector.new(x + self.text:getWidth(), y)
  local rightBot = Gv.vector.new(x + self.text:getWidth(), y + self.text:getHeight())

  --self.shape = love.physics.newPolygonShape(x1, y1, x2, y2, ...)
end
