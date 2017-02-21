local menu = {}

local MainMenuButton = Component.load({"MainMenuButton"})

function menu:init()
  Gv.eventManager:addListener("KeyPressed", MainMenuEventSys, MainMenuEventSys.fireKeyPressed)

  local StartGameEntity = Entity()
  StartGameEntity:add(MainMenuButton("StartGame", 50, 60, 0, 0, 0, Gv.Font.H1, nil, nil))
  Gv.engine:addEntity(StartGameEntity)

  local OptionsEntity = Entity()
  OptionsEntity:add(MainMenuButton("Options", 50, 60*2, 0, 0, 0, Gv.Font.H1, nil, nil))
  Gv.engine:addEntity(OptionsEntity)

  local QuitEntity = Entity()
  QuitEntity:add(MainMenuButton("Quit", 50, 60*3, 0, 0, 0, Gv.Font.H1, nil, function() print("Quit") end))
  Gv.engine:addEntity(QuitEntity)

  Gv.engine:addSystem(MainMenuRenderSys())
end

function menu:update(dt)
  Gv.engine:update(dt)
end

function menu:draw()
  Gv.engine:draw()
end

function menu:keypressed(key, scancode, isrepeat)
  Gv.eventManager:fireEvent(KeyPressed(key, scancode, isrepeat))
end

function menu:mousepressed(x, y, button, isTouch)
  Gv.eventManager:fireEvent(MousePressed(x, y, button, isTouch))
end

function menu:mousemoved(x, y, dx, dy, istouch)
  Gv.eventManager:fireEvent(MouseMoved(x, y, dx, dy, istouch))
end

function menu:enter(previous)

end

function menu:leave()

end

return menu
