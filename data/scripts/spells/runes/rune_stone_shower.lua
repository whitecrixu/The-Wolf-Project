-- Stone Shower
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_STONES)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 5) + (maglevel * 1) + 6
    local max = (level / 5) + (maglevel * 2.6) + 16
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_RUNE)
spell:name("Stone Shower")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2288)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(28)
spell:magicLevel(4)
spell:charges(true)
spell:allowFarUse(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()