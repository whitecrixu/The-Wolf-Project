-- Potions Script for The Wolf Project
-- Properly working potion system

-- Condition for Berserk Potion
local berserk = Condition(CONDITION_ATTRIBUTES)
berserk:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000) -- 10 minutes
berserk:setParameter(CONDITION_PARAM_SKILL_MELEE, 5)
berserk:setParameter(CONDITION_PARAM_SKILL_SHIELD, -10)

-- Condition for Mastermind Potion
local mastermind = Condition(CONDITION_ATTRIBUTES)
mastermind:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
mastermind:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 3)

-- Condition for Bullseye Potion
local bullseye = Condition(CONDITION_ATTRIBUTES)
bullseye:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
bullseye:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 5)
bullseye:setParameter(CONDITION_PARAM_SKILL_SHIELD, -10)

-- Combat for Antidote
local antidote = Combat()
antidote:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
antidote:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
antidote:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)
antidote:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

-- Potions table with correct item IDs for this server
-- Flask IDs: 7634 (small), 7635 (medium), 7636 (large)
local potions = {
	-- Small Health Potion (ID: 8704)
	[8704] = {
		health = {50, 100},
		flask = 7636
	},
	-- Health Potion (ID: 7618)
	[7618] = {
		health = {125, 175},
		flask = 7636
	},
	-- Strong Health Potion (ID: 7588)
	[7588] = {
		health = {250, 350},
		vocations = {3, 4}, -- Paladin, Knight
		level = 50,
		flask = 7634,
		description = "Only knights and paladins of level 50 or above may drink this fluid."
	},
	-- Great Health Potion (ID: 7591)
	[7591] = {
		health = {425, 575},
		vocations = {4}, -- Knight only
		level = 80,
		flask = 7635,
		description = "Only knights of level 80 or above may drink this fluid."
	},
	-- Ultimate Health Potion (ID: 8473)
	[8473] = {
		health = {650, 850},
		vocations = {4}, -- Knight only
		level = 130,
		flask = 7635,
		description = "Only knights of level 130 or above may drink this fluid."
	},
	-- Supreme Health Potion (ID: 26031)
	[26031] = {
		health = {875, 1125},
		vocations = {4}, -- Knight only
		level = 200,
		flask = 7635,
		description = "Only knights of level 200 or above may drink this fluid."
	},

	-- Mana Potion (ID: 7620)
	[7620] = {
		mana = {75, 125},
		flask = 7636
	},
	-- Strong Mana Potion (ID: 7589)
	[7589] = {
		mana = {115, 185},
		level = 50,
		flask = 7634,
		description = "Only players of level 50 or above may drink this fluid."
	},
	-- Great Mana Potion (ID: 7590)
	[7590] = {
		mana = {150, 250},
		vocations = {1, 2, 3}, -- Sorcerer, Druid, Paladin
		level = 80,
		flask = 7635,
		description = "Only sorcerers, druids and paladins of level 80 or above may drink this fluid."
	},
	-- Ultimate Mana Potion (ID: 26029)
	[26029] = {
		mana = {425, 575},
		vocations = {1, 2}, -- Sorcerer, Druid
		level = 130,
		flask = 7635,
		description = "Only sorcerers and druids of level 130 or above may drink this fluid."
	},

	-- Great Spirit Potion (ID: 8472)
	[8472] = {
		health = {250, 350},
		mana = {100, 200},
		vocations = {3}, -- Paladin only
		level = 80,
		flask = 7635,
		description = "Only paladins of level 80 or above may drink this fluid."
	},
	-- Ultimate Spirit Potion (ID: 26030)
	[26030] = {
		health = {420, 580},
		mana = {250, 350},
		vocations = {3}, -- Paladin only
		level = 130,
		flask = 7635,
		description = "Only paladins of level 130 or above may drink this fluid."
	},

	-- Antidote Potion (ID: 8474)
	[8474] = {
		combat = antidote,
		flask = 7636
	},

	-- Buff Potions
	-- Berserk Potion (ID: 7439) - Knight only
	[7439] = {
		vocations = {4},
		condition = berserk,
		effect = CONST_ME_MAGIC_RED,
		description = "Only knights may drink this potion.",
		text = "You feel stronger."
	},
	-- Mastermind Potion (ID: 7440) - Sorcerer/Druid only
	[7440] = {
		vocations = {1, 2},
		condition = mastermind,
		effect = CONST_ME_MAGIC_BLUE,
		description = "Only sorcerers and druids may drink this potion.",
		text = "You feel smarter."
	},
	-- Bullseye Potion (ID: 7443) - Paladin only
	[7443] = {
		vocations = {3},
		condition = bullseye,
		effect = CONST_ME_MAGIC_GREEN,
		description = "Only paladins may drink this potion.",
		text = "You feel more accurate."
	}
}

-- Helper function to get base vocation ID
local function getBaseVocationId(vocation)
	local vocId = vocation:getId()
	-- If promoted (ID > 4), get base vocation
	if vocId > 4 then
		vocId = vocId - 4
	end
	return vocId
end

-- onUse callback function
local function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- If target is not a player, use self
	if not target or type(target) ~= "userdata" or not target:isPlayer() then
		target = player
	end
	
	local itemId = item:getId()
	local potion = potions[itemId]
	
	if not potion then
		return false
	end
	
	-- Get base vocation ID
	local baseVocId = getBaseVocationId(player:getVocation())
	
	-- Check level requirement
	if potion.level and player:getLevel() < potion.level then
		player:say(potion.description or "You are not high enough level.", TALKTYPE_MONSTER_SAY)
		return true
	end
	
	-- Check vocation requirement (GMs can bypass)
	if potion.vocations then
		local hasVocation = false
		for _, vocId in ipairs(potion.vocations) do
			if vocId == baseVocId then
				hasVocation = true
				break
			end
		end
		
		if not hasVocation and player:getGroup():getId() < 2 then
			player:say(potion.description or "Your vocation cannot use this potion.", TALKTYPE_MONSTER_SAY)
			return true
		end
	end
	
	-- Handle healing potions (health/mana/combat)
	if potion.health or potion.mana or potion.combat then
		local healthHealed = 0
		local manaHealed = 0
		
		if potion.health then
			local healthBefore = target:getHealth()
			doTargetCombatHealth(0, target, COMBAT_HEALING, potion.health[1], potion.health[2], CONST_ME_MAGIC_BLUE)
			healthHealed = target:getHealth() - healthBefore
		end
		
		if potion.mana then
			local manaBefore = target:getMana()
			doTargetCombatMana(0, target, potion.mana[1], potion.mana[2], CONST_ME_MAGIC_BLUE)
			manaHealed = target:getMana() - manaBefore
		end
		
		if potion.combat then
			potion.combat:execute(target, Variant(target:getId()))
		end
		
		-- Build message with healed amounts
		local message = "Aaaah..."
		if healthHealed > 0 and manaHealed > 0 then
			message = string.format("+%d HP, +%d MP", healthHealed, manaHealed)
		elseif healthHealed > 0 then
			message = string.format("+%d HP", healthHealed)
		elseif manaHealed > 0 then
			message = string.format("+%d MP", manaHealed)
		end
		
		target:say(message, TALKTYPE_MONSTER_SAY)
		
		-- Return empty flask
		if potion.flask then
			player:addItem(potion.flask, 1)
		end
		
		item:remove(1)
		return true
	end
	
	-- Handle buff potions (berserk, mastermind, bullseye)
	if potion.condition then
		player:addCondition(potion.condition)
		
		if potion.text then
			player:say(potion.text, TALKTYPE_MONSTER_SAY)
		end
		
		if potion.effect then
			player:getPosition():sendMagicEffect(potion.effect)
		end
		
		item:remove(1)
		return true
	end
	
	return false
end

-- Register all potions
local potionAction = Action()
for itemId, _ in pairs(potions) do
	potionAction:id(itemId)
end
potionAction:onUse(onUse)
potionAction:register()
