-- Cure Curse
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_CURSED)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local spell = Spell(SPELL_INSTANT)

spell:name("Cure Curse")
spell:words("exana mort")
spell:group(SPELLGROUP_HEALING)
spell:id(147)
spell:cooldown(6000)
spell:groupCooldown(1000)
spell:level(80)
spell:mana(40)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()