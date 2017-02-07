lovetoys = require("libs.lovetoys.lovetoys")
lovetoys.initialize({
  globals=true,
  debug=true
})

require("src.events.KeyPressed")

function love.load()
  engine = Engine()
  world = love.physics.newWorld(0, 0, true)
  eventmanager = EventManager()
end

function love.update(dt)
  engine:update(dt)
  world:update(dt)
end

function love.draw()
    love.graphics.print("Hello World2", 400, 300)
    engine:draw()
end

function love.keypressed(key, scancode, isrepeat)
  -- body...
end

function love.mousepressed(x, y, button, isTouch)
  -- body...
end
