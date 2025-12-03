-- Strong Ice Wave
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setArea(createCombatArea(AREA_WAVE3))

local spell = Spell(SPELL_INSTANT)

spell:name("Strong Ice Wave")
spell:words("exevo gran frigo hur")
spell:group(SPELLGROUP_ATTACK)
spell:id(43)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:level(40)
spell:mana(170)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()