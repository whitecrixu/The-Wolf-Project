-- Converted from: cleanmap.lua
-- Name: Clean Map

local globalEvent = GlobalEvent("Clean Map")
globalEvent:interval(7200000)
globalEvent:type("timer")

local function onThink(interval)

	broadcastMessage("Cleaning map in 5 minutes.", MESSAGE_STATUS_WARNING)
	addEvent(saveServer, 5 * 60 * 1000)
	return true
end

globalEvent:onThink(onThink)
globalEvent:register()