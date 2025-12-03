-- Intense Wound Cleansing
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local spell = Spell(SPELL_INSTANT)

spell:name("Intense Wound Cleansing")
spell:words("exura gran ico")
spell:group(SPELLGROUP_HEALING)
spell:id(158)
spell:cooldown(600000)
spell:groupCooldown(1000)
spell:level(80)
spell:mana(200)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()