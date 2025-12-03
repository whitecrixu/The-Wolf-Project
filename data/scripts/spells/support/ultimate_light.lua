-- Ultimate Light
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_LIGHT)
condition:setParameter(CONDITION_PARAM_LIGHT_LEVEL, 8)
condition:setParameter(CONDITION_PARAM_LIGHT_COLOR, 215)
condition:setParameter(CONDITION_PARAM_TICKS, (60 * 33 + 10) * 1000)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Ultimate Light")
spell:words("utevo vis lux")
spell:group(SPELLGROUP_SUPPORT)
spell:id(75)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(26)
spell:mana(140)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()