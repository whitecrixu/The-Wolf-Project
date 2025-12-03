-- Ultimate Ice Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLICE)

local spell = Spell(SPELL_INSTANT)

spell:name("Ultimate Ice Strike")
spell:words("exori max frigo")
spell:group(SPELLGROUP_ATTACK)
spell:id(156)
spell:cooldown(30000)
spell:groupCooldown(4000)
spell:level(100)
spell:mana(100)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()