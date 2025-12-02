-- Converted from: record.lua
-- Name: PlayerRecord

local globalEvent = GlobalEvent("PlayerRecord")
globalEvent:type("record")

local function onRecord(current, old)

	addEvent(broadcastMessage, 150, "New record: " .. current .. " players are logged in.", MESSAGE_STATUS_DEFAULT)
	return true
end

globalEvent:onRecord(onRecord)
globalEvent:register()