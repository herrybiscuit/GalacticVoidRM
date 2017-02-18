lovetoys = require("libs.lovetoys.lovetoys")
lovetoys.initialize({
  globals=true,
  debug=true
})

Gv = {}

-- Setup fonts
Gv.font = {}
Gv.font.CommonFontPx = 25
Gv.font.H1 = love.graphics.newFont(Gv.font.CommonFontPx * 2)
Gv.font.H2 = love.graphics.newFont(Gv.font.CommonFontPx * 1.5)
Gv.font.H3 = love.graphics.newFont(Gv.font.CommonFontPx * 1.17)
Gv.font.H4 = love.graphics.newFont(Gv.font.CommonFontPx * 1.12)
Gv.font.H5 = love.graphics.newFont(Gv.font.CommonFontPx * 0.83)
Gv.font.H6 = love.graphics.newFont(Gv.font.CommonFontPx * 0.75)
Gv.font.p = love.graphics.newFont(Gv.font.CommonFontPx * 1)

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
