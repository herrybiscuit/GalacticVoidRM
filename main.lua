lovetoys = require("libs.lovetoys.lovetoys")
lovetoys.initialize({
  globals=true,
  debug=true
})

require("src.events.KeyPressed")
require("src.events.MousePressed")

--fs = require("libs.MiniFS.minifs")

keysys = require("src.systems.events.MainKeySystem")

function love.load()
  engine = Engine()
  world = love.physics.newWorld(0, 0, true)
  eventmanager = EventManager()

  eventmanager:addListener("KeyPressed", keysys, keysys.fireEvent)
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
  eventmanager:fireEvent(KeyPressed(key, scancode, isrepeat))
end

function love.mousepressed(x, y, button, isTouch)
  eventmanager:fireEvent(MousePressed(x, y, button, isTouch))
end
