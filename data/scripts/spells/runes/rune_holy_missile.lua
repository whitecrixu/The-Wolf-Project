-- Holy Missile
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)

function onGetFormulaValues(player, level, maglevel)
    local min = (level / 5) + (maglevel * 1.79) + 11
    local max = (level / 5) + (maglevel * 3.75) + 24
    return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_RUNE)
spell:name("Holy Missile")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2295)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(27)
spell:magicLevel(4)
spell:charges(true)
spell:allowFarUse(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()