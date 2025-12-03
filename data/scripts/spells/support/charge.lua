-- Charge
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_HASTE)
condition:setParameter(CONDITION_PARAM_TICKS, 5000)
condition:setFormula(0.9, -72, 0.9, -72)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Charge")
spell:words("utani tempo hur")
spell:group(SPELLGROUP_SUPPORT)
spell:id(131)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(25)
spell:mana(100)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()