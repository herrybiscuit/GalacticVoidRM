lovetoys = require("libs.lovetoys.lovetoys")
lovetoys.initialize({
  globals=true,
  debug=true
})

Gv = {}

Gv.Engine = Engine()
Gv.EventManager = EventManager()
Gv.GameState = require("libs.HUMP.gamestate")
Gv.MainMenu = require("src.gamestate.mainmenu")

require("src.events.KeyPressed")
require("src.events.MousePressed")
require("src.events.MouseMoved")

keysys = require("src.systems.events.MainKeySystem")

--fs = require("libs.MiniFS.minifs")

function love.load()
  Gv.GameState.registerEvents()
  Gv.GameState.switch(Gv.MainMenu)
end
