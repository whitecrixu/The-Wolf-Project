-- Intense Healing Rune
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onGetFormulaValues(player, level, maglevel)
    local min = (level * 3.184) + (maglevel * 5.59) + 35
    local max = (level * 3.184) + (maglevel * 10.79) + 35
    return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_RUNE)
spell:name("Intense Healing Rune")
spell:group(SPELLGROUP_HEALING)
spell:runeId(2265)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(15)
spell:magicLevel(1)
spell:charges(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()