MouseMoved = class("MouseMoved")

function MouseMoved:initialize(x, y, dx, dy, istouch)
  self.x = x
  self.y = y
  self.dx = dy
  self.istouch = istouch
end
