-- Wrath of Nature
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_PLANTATTACK)
combat:setArea(createCombatArea(AREA_CROSS6X6))

local spell = Spell(SPELL_INSTANT)

spell:name("Wrath of Nature")
spell:words("exevo gran mas tera")
spell:group(SPELLGROUP_ATTACK)
spell:id(56)
spell:cooldown(40000)
spell:groupCooldown(4000)
spell:level(55)
spell:mana(700)
spell:isPremium(true)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()