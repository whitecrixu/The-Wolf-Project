-- Holy Flash
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)

local condition = Condition(CONDITION_DAZZLED)
condition:setParameter(CONDITION_PARAM_DELAYED, true)
condition:addDamage(50, 10000, -10)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Holy Flash")
spell:words("utori san")
spell:group(SPELLGROUP_ATTACK)
spell:id(143)
spell:cooldown(40000)
spell:groupCooldown(2000)
spell:level(70)
spell:mana(30)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()