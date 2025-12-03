-- Magic Wall
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_CREATEITEM, 1497)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

local spell = Spell(SPELL_RUNE)
spell:name("Magic Wall")
spell:group(SPELLGROUP_SUPPORT)
spell:runeId(2293)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(32)
spell:magicLevel(9)
spell:charges(true)
spell:allowFarUse(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()
