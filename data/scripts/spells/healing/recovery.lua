-- Recovery
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_REGENERATION)
condition:setParameter(CONDITION_PARAM_SUBID, 1)
condition:setParameter(CONDITION_PARAM_TICKS, 1 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 20)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 3000)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Recovery")
spell:words("utura")
spell:group(SPELLGROUP_HEALING)
spell:id(159)
spell:cooldown(60000)
spell:groupCooldown(1000)
spell:level(50)
spell:mana(75)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()