-- Antidote Rune
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local spell = Spell(SPELL_RUNE)
spell:name("Antidote Rune")
spell:group(SPELLGROUP_HEALING)
spell:runeId(2266)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(15)
spell:magicLevel(0)
spell:charges(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()
