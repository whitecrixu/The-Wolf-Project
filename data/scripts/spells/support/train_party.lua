-- Train Party
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
combat:setArea(createCombatArea(AREA_CROSS5X5))

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_SUBID, 1)
condition:setParameter(CONDITION_PARAM_TICKS, 2 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_SKILL_MELEE, 3)
condition:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 3)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local baseMana = 60

local spell = Spell(SPELL_INSTANT)

spell:name("Train Party")
spell:words("utito mas sio")
spell:group(SPELLGROUP_SUPPORT)
spell:id(126)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(32)
spell:mana(60)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()