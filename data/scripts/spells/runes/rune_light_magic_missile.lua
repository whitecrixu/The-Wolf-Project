-- Light Magic Missile
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 5) + (maglevel * 0.4) + 2
    local max = (level / 5) + (maglevel * 0.81) + 4
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_RUNE)
spell:name("Light Magic Missile")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2287)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(15)
spell:magicLevel(0)
spell:charges(true)
spell:allowFarUse(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()