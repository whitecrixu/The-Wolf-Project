-- Fire Wave
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
combat:setArea(createCombatArea(AREA_WAVE4, AREADIAGONAL_WAVE4))

local spell = Spell(SPELL_INSTANT)

spell:name("Fire Wave")
spell:words("exevo flam hur")
spell:group(SPELLGROUP_ATTACK)
spell:id(19)
spell:cooldown(4000)
spell:groupCooldown(2000)
spell:level(18)
spell:mana(25)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()