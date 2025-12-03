-- Eternal Winter
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
combat:setArea(createCombatArea(AREA_CROSS5X5))

local spell = Spell(SPELL_INSTANT)

spell:name("Eternal Winter")
spell:words("exevo gran mas frigo")
spell:group(SPELLGROUP_ATTACK)
spell:id(118)
spell:cooldown(40000)
spell:groupCooldown(4000)
spell:level(60)
spell:mana(1050)
spell:isPremium(true)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()