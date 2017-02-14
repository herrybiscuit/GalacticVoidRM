local menu = {}

function menu:init()
  Gv.EventManager:addListener("KeyPressed", keysys, keysys.fireEvent)
end

function menu:update(dt)
  Gv.Engine:update(dt)
end

function menu:draw()
  Gv.Engine:draw()
  love.graphics.print("Testing", 0, 0)
end

function menu:keypressed(key, scancode, isrepeat)
  Gv.EventManager:fireEvent(KeyPressed(key, scancode, isrepeat))
end

function menu:mousepressed(x, y, button, isTouch)
  Gv.EventManager:fireEvent(MousePressed(x, y, button, isTouch))
end

function menu:mousemoved(x, y, dx, dy, istouch)
  Gv.EventManager:fireEvent(MouseMoved(x, y, dx, dy, istouch))
end

function menu:enter(previous)

end

function menu:leave()

end

return menu
