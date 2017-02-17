lovetoys = require("libs.lovetoys.lovetoys")
lovetoys.initialize({
  globals=true,
  debug=true
})

Gv = {}

-- Initialize main elements
Gv.Engine = Engine()
Gv.EventManager = EventManager()

-- Set version
Gv.Version = "0.00.1"

-- Events
require("src.events.KeyPressed")
require("src.events.MousePressed")
require("src.events.MouseMoved")

-- Components
require("src.components.MainMenuButton")

-- Event systems
MainMenuEventSys = require("src.systems.events.MainMenuEventSystem")

-- Drawing systems
MainMenuRenderSys = require("src.systems.render.MainMenuRenderSystem")

-- initialize gamestates
Gv.GameState = require("libs.HUMP.gamestate")
Gv.MainMenu = require("src.gamestate.mainmenu")

function love.load()
  Gv.GameState.registerEvents()
  Gv.GameState.switch(Gv.MainMenu)
end
