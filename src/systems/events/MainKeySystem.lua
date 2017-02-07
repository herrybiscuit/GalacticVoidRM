MainKeySystem = class("MainKeySystem", System)

function MainKeySystem:fireEvent(event)
  if event.key == "s" then
    print("yeh")
  end
end
