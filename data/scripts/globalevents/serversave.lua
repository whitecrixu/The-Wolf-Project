-- Converted from: serversave.lua
-- Name: Server Save

local globalEvent = GlobalEvent("Server Save")
globalEvent:interval(900000)
globalEvent:type("timer")

local function onThink(interval)

	saveServer()
	return true
end

globalEvent:onThink(onThink)
globalEvent:register()