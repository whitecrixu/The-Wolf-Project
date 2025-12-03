-- Icicle
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 5) + (maglevel * 1.81) + 10
    local max = (level / 5) + (maglevel * 3) + 18
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_RUNE)
spell:name("Icicle")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2271)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(28)
spell:magicLevel(4)
spell:charges(true)
spell:allowFarUse(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()