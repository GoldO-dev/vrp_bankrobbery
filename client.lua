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

-- --local cfg = module("vrp_bankrobbery", "cfg/cfg")
-- local vrp_bankrobbery = class("vrp_bankrobbery", vRP.Extension)

-- vRP:registerExtension(vrp_bankrobbery)

--##########    VRP Main    ##########--
-- init vRP client context
Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")

local cvRP = module("vrp", "client/vRP")
vRP = cvRP()

local pvRP = {}
-- load script in vRP context
pvRP.loadScript = module
Proxy.addInterface("vRP", pvRP)

local cfg = module("vrp_bankrobbery", "cfg/cfg")            -- Optiona, Change vrp_Test to match folder name

local vrp_bankrobbery = class("vrp_bankrobbery", vRP.Extension)            -- Class Name, Can be changed to anything (match with server class name to make things easier

function vrp_bankrobbery:__construct()                            -- Change test to match Class Name
    vRP.Extension.__construct(self)
end 

vRP:registerExtension(vrp_bankrobbery)