-- Energybomb
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_CREATEITEM, 1495)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

local spell = Spell(SPELL_RUNE)
spell:name("Energybomb")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2262)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(37)
spell:magicLevel(10)
spell:charges(true)
spell:allowFarUse(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()