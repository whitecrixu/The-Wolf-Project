-- Strong Ice Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLICE)

local spell = Spell(SPELL_INSTANT)

spell:name("Strong Ice Strike")
spell:words("exori gran frigo")
spell:group(SPELLGROUP_ATTACK)
spell:secondaryGroup(SPELLGROUP_SPECIAL)
spell:id(152)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:secondaryGroupCooldown(8000)
spell:level(80)
spell:mana(60)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()