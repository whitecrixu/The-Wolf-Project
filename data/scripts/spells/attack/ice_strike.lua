-- Ice Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLICE)

local spell = Spell(SPELL_INSTANT)

spell:name("Ice Strike")
spell:words("exori frigo")
spell:group(SPELLGROUP_ATTACK)
spell:id(112)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(15)
spell:mana(20)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()