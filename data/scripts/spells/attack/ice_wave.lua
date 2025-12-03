-- Ice Wave
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setArea(createCombatArea(AREA_WAVE4, AREADIAGONAL_WAVE4))

local spell = Spell(SPELL_INSTANT)

spell:name("Ice Wave")
spell:words("exevo frigo hur")
spell:group(SPELLGROUP_ATTACK)
spell:id(121)
spell:cooldown(4000)
spell:groupCooldown(2000)
spell:level(18)
spell:mana(25)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()