-- --##########    VRP Main    ##########--
-- -- init vRP server context
-- Tunnel = module("vrp", "lib/Tunnel")
-- Proxy = module("vrp", "lib/Proxy")

-- local cvRP = module("vrp", "client/vRP")
-- vRP = cvRP()

-- local pvRP = {}
-- -- load script in vRP context
-- pvRP.loadScript = module
-- Proxy.addInterface("vRP", pvRP)

-- local cfg = module("vrp_bankrobbery", "cfg/cfg")
-- --local vrp_bankrobbery = class("vrp_bankrobbery", vRP.Extension)
-- local Vrp_bankrobbery = class("Vrp_bankrobbery", vRP.Extension)

-- local Tunnel = module("vrp", "lib/Tunnel")
-- local Proxy = module("vrp", "lib/Proxy")

-- local vRP = Proxy.getInterface("vRP")

local vrp_bankrobbery = class("vrp_bankrobbery", vRP.Extension)

function vrp_bankrobbery:__construct()
    vRP.Extension.__construct(self)
end

--vrp_bankrobbery.event = {}
vrp_bankrobbery.event = {}


print("Init")
function vrp_bankrobbery.event:playerSpawn(user, first_spawn)
    print("Starting")
    if first_spawn then
      local menu
      local function enter(user)
        if user:hasPermission("police.pc") then
            print("User entered test pc")
          --menu = user:openMenu("police_pc")
        end
      end
  
      local function leave(user)
        if menu then
            print("User left test pc")
          --user:closeMenu(menu)
        end
      end
  
      -- build police PCs
      for k,v in pairs(self.cfg.test) do
        local x,y,z = table.unpack(v)
  
        local ment = clone(self.cfg.test_map_entity)
        ment[2].title = "Test pc"--lang.police.pc.title()
        ment[2].pos = {x,y,z-1}
        vRP.EXT.Map.remote._addEntity(user.source, ment[1], ment[2])
  
        user:setArea("vRP:police:pc:"..k,x,y,z,1,1.5,enter,leave)
      end
    end
  end
local test = table.unpack(vrp_bankrobbery.event)
print(test)

vRP:registerExtension(vrp_bankrobbery)