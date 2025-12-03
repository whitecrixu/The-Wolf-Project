-- Paralyze
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

local condition = Condition(CONDITION_PARALYZE)
condition:setParameter(CONDITION_PARAM_TICKS, 20000)
condition:setFormula(-0.9, 0, -0.9, 0)
combat:setCondition(condition)

local spell = Spell(SPELL_RUNE)
spell:name("Paralyze")
spell:group(SPELLGROUP_SUPPORT)
spell:runeId(2278)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(54)
spell:magicLevel(18)
spell:charges(true)
spell:allowFarUse(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()
