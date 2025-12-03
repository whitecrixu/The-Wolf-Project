-- Great Light
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_LIGHT)
condition:setParameter(CONDITION_PARAM_LIGHT_LEVEL, 8)
condition:setParameter(CONDITION_PARAM_LIGHT_COLOR, 215)
condition:setParameter(CONDITION_PARAM_TICKS, (11 * 60 + 35) * 1000)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Great Light")
spell:words("utevo gran lux")
spell:group(SPELLGROUP_SUPPORT)
spell:id(11)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(13)
spell:mana(60)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()