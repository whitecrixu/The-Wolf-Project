-- Light Stone Shower
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_STONES)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
combat:setArea(createCombatArea(AREA_CIRCLE2X2))

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 5) + (maglevel * 0.8) + 4
    local max = (level / 5) + (maglevel * 1.8) + 12
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_RUNE)
spell:name("Light Stone Shower")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(23722)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(1)
spell:magicLevel(0)
spell:charges(true)
spell:allowFarUse(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()