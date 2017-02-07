MousePressed = class("MousePressed")

function MousePressed:initialize(x, y, button, isTouch)
  self.x = x
  self.y = y
  self.button = button
  self.isTouch = isTouch
end
