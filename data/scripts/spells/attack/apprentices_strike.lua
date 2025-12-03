-- Apprentice's Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

local spell = Spell(SPELL_INSTANT)

spell:name("Apprentice's Strike")
spell:words("exori min flam")
spell:group(SPELLGROUP_ATTACK)
spell:id(169)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(8)
spell:mana(6)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()