-- Strong Haste
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_HASTE)
condition:setParameter(CONDITION_PARAM_TICKS, 22000)
condition:setFormula(0.7, -56, 0.7, -56)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Strong Haste")
spell:words("utani gran hur")
spell:group(SPELLGROUP_SUPPORT)
spell:id(39)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(20)
spell:mana(100)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()