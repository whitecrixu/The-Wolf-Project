-- Rage of the Skies
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BIGCLOUDS)
combat:setArea(createCombatArea(AREA_CROSS6X6))

local spell = Spell(SPELL_INSTANT)

spell:name("Rage of the Skies")
spell:words("exevo gran mas vis")
spell:group(SPELLGROUP_ATTACK)
spell:id(119)
spell:cooldown(40000)
spell:groupCooldown(4000)
spell:level(55)
spell:mana(600)
spell:isPremium(true)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()