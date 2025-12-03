-- Envenom
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

local condition = Condition(CONDITION_POISON)
condition:setParameter(CONDITION_PARAM_DELAYED, true)
condition:addDamage(25, 4000, -45)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Envenom")
spell:words("utori pox")
spell:group(SPELLGROUP_ATTACK)
spell:id(142)
spell:cooldown(40000)
spell:groupCooldown(2000)
spell:level(50)
spell:mana(30)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()