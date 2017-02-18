local menu = {}

local MainMenuButton = Component.load({"MainMenuButton"})

function menu:init()
  Gv.EventManager:addListener("KeyPressed", MainMenuEventSys, MainMenuEventSys.fireKeyPressed)

  local StartGameEntity = Entity()
  StartGameEntity:add(MainMenuButton("StartGame", 50, 60, 0, Gv.font.H1, nil, nil))
  Gv.Engine:addEntity(StartGameEntity)

  local OptionsEntity = Entity()
  OptionsEntity:add(MainMenuButton("Options", 50, 60*2, 0, Gv.font.H1, nil, nil))
  Gv.Engine:addEntity(OptionsEntity)

  local QuitEntity = Entity()
  QuitEntity:add(MainMenuButton("Quit", 50, 60*3, 0, Gv.font.H1, nil, function() print("Quit") end))
  Gv.Engine:addEntity(QuitEntity)

  Gv.Engine:addSystem(MainMenuRenderSys())
end

function menu:update(dt)
  Gv.Engine:update(dt)
end

function menu:draw()
  Gv.Engine:draw()
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
