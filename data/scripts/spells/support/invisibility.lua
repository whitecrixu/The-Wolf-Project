-- Invisibility
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_INVISIBLE)
condition:setParameter(CONDITION_PARAM_TICKS, 200000)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Invisibility")
spell:words("utana vid")
spell:group(SPELLGROUP_SUPPORT)
spell:id(45)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(35)
spell:mana(440)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()