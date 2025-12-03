-- Lightning
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

local spell = Spell(SPELL_INSTANT)

spell:name("Lightning")
spell:words("exori amp vis")
spell:group(SPELLGROUP_ATTACK)
spell:secondaryGroup(SPELLGROUP_SPECIAL)
spell:id(149)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:secondaryGroupCooldown(8000)
spell:level(55)
spell:mana(60)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()