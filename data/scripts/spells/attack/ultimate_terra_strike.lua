-- Ultimate Terra Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLEARTH)

local spell = Spell(SPELL_INSTANT)

spell:name("Ultimate Terra Strike")
spell:words("exori max tera")
spell:group(SPELLGROUP_ATTACK)
spell:id(157)
spell:cooldown(30000)
spell:groupCooldown(4000)
spell:level(90)
spell:mana(100)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()