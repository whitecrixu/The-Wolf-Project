-- Strong Terra Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLEARTH)

local spell = Spell(SPELL_INSTANT)

spell:name("Strong Terra Strike")
spell:words("exori gran tera")
spell:group(SPELLGROUP_ATTACK)
spell:secondaryGroup(SPELLGROUP_SPECIAL)
spell:id(153)
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