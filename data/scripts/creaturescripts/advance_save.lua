-- Advance Save Event (RevScriptSys)

local config = {
	heal = true,
	save = true,
	effect = false
}

local function advanceSaveCallback(player, skill, oldLevel, newLevel)
	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	if config.effect then
		player:getPosition():sendMagicEffect(math.random(CONST_ME_FIREWORK_YELLOW, CONST_ME_FIREWORK_BLUE))
		player:say('LEVEL UP!', TALKTYPE_MONSTER_SAY)
	end

	if config.heal then
		player:addHealth(player:getMaxHealth())
	end

	if config.save then
		player:save()
	end
	return true
end

local advanceSave = CreatureEvent("AdvanceSave")
advanceSave:type("advance")
advanceSave:onAdvance(advanceSaveCallback)
advanceSave:register()
