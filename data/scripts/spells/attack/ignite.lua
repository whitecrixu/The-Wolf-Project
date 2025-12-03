-- Ignite
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

local condition = Condition(CONDITION_FIRE)
condition:setParameter(CONDITION_PARAM_DELAYED, true)
condition:addDamage(23, 10000, -10)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Ignite")
spell:words("utori flam")
spell:group(SPELLGROUP_ATTACK)
spell:id(138)
spell:cooldown(30000)
spell:groupCooldown(2000)
spell:level(26)
spell:mana(30)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()