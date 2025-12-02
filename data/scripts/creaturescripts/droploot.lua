-- Drop Loot Event (RevScriptSys)

local function dropLootCallback(player, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	if player:hasFlag(PlayerFlag_NotGenerateLoot) or player:getVocation():getId() == VOCATION_NONE then
		return true
	end

	return player:createLoot(corpse)
end

local dropLoot = CreatureEvent("DropLoot")
dropLoot:type("death")
dropLoot:onDeath(dropLootCallback)
dropLoot:register()
