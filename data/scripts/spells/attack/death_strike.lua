-- Death Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)

local spell = Spell(SPELL_INSTANT)

spell:name("Death Strike")
spell:words("exori mort")
spell:group(SPELLGROUP_ATTACK)
spell:id(87)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(16)
spell:mana(20)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()