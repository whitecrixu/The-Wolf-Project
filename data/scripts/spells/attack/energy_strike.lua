-- Energy Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

local spell = Spell(SPELL_INSTANT)

spell:name("Energy Strike")
spell:words("exori vis")
spell:group(SPELLGROUP_ATTACK)
spell:id(88)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(12)
spell:mana(20)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()