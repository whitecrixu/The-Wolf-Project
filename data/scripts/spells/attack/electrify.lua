-- Electrify
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

local condition = Condition(CONDITION_ENERGY)
condition:setParameter(CONDITION_PARAM_DELAYED, true)
condition:addDamage(10, 10000, -25)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Electrify")
spell:words("utori vis")
spell:group(SPELLGROUP_ATTACK)
spell:id(140)
spell:cooldown(30000)
spell:groupCooldown(2000)
spell:level(34)
spell:mana(30)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()