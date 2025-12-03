-- Scorch
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
combat:setArea(createCombatArea(AREA_WAVE4))

local spell = Spell(SPELL_INSTANT)

spell:name("Scorch")
spell:words("exevo infir flam hur")
spell:group(SPELLGROUP_ATTACK)
spell:id(178)
spell:cooldown(4000)
spell:groupCooldown(2000)
spell:level(1)
spell:mana(8)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()