-- Protect Party
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
combat:setArea(createCombatArea(AREA_CROSS5X5))

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_SUBID, 2)
condition:setParameter(CONDITION_PARAM_TICKS, 2 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_SKILL_SHIELD, 2)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local baseMana = 90

local spell = Spell(SPELL_INSTANT)

spell:name("Protect Party")
spell:words("utamo mas sio")
spell:group(SPELLGROUP_SUPPORT)
spell:id(127)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(32)
spell:mana(90)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()