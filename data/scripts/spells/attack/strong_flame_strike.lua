-- Strong Flame Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

local spell = Spell(SPELL_INSTANT)

spell:name("Strong Flame Strike")
spell:words("exori gran flam")
spell:group(SPELLGROUP_ATTACK)
spell:secondaryGroup(SPELLGROUP_SPECIAL)
spell:id(150)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:secondaryGroupCooldown(8000)
spell:level(70)
spell:mana(60)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()