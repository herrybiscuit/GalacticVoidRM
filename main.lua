lovetoys = require("libs.lovetoys.lovetoys")
lovetoys.initialize({
  globals=true,
  debug=true
})

Gv = {}

-- Setup fonts
Gv.Font = {}
Gv.Font.commonFontPx = 25
Gv.Font.H1 = love.graphics.newFont(Gv.Font.commonFontPx * 2)
Gv.Font.H2 = love.graphics.newFont(Gv.Font.commonFontPx * 1.5)
Gv.Font.H3 = love.graphics.newFont(Gv.Font.commonFontPx * 1.17)
Gv.Font.H4 = love.graphics.newFont(Gv.Font.commonFontPx * 1.12)
Gv.Font.H5 = love.graphics.newFont(Gv.Font.commonFontPx * 0.83)
Gv.Font.H6 = love.graphics.newFont(Gv.Font.commonFontPx * 0.75)
Gv.Font.p = love.graphics.newFont(Gv.Font.commonFontPx * 1)

-- Initialize main elements
Gv.engine = Engine()
Gv.eventManager = EventManager()

-- Set version
Gv.version = "0.00.1"

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
Gv.gameState = require("libs.HUMP.gamestate")
Gv.mainMenu = require("src.gamestate.mainmenu")

function love.load()
  Gv.gameState.registerEvents()
  Gv.gameState.switch(Gv.mainMenu)
end
