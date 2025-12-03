-- Divine Missile
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)

local spell = Spell(SPELL_INSTANT)

spell:name("Divine Missile")
spell:words("exori san")
spell:group(SPELLGROUP_ATTACK)
spell:id(122)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(40)
spell:mana(20)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()