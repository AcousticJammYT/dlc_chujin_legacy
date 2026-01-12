local CityView, super = Class(Map)

function CityView:load()
  super.load(self)
end

function CityView:onEnter()
  if not Game:getFlag("chujin_city_cg") then
    --Game:setFlag("chujin_city_cg", true)
    Game.world:startCutscene("beginning", "cg")
  end
end

return CityView