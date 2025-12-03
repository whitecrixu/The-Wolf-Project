-- Soulfire
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITBYFIRE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 5) + (maglevel * 0.4) + 2
    local max = (level / 5) + (maglevel * 0.8) + 6
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_RUNE)
spell:name("Soulfire")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2308)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(27)
spell:magicLevel(7)
spell:charges(true)
spell:allowFarUse(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()