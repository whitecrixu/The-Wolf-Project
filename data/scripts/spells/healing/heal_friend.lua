-- Heal Friend
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local spell = Spell(SPELL_INSTANT)

spell:name("Heal Friend")
spell:words("exura sio")
spell:group(SPELLGROUP_HEALING)
spell:id(84)
spell:cooldown(1000)
spell:groupCooldown(1000)
spell:level(18)
spell:mana(140)
spell:isPremium(true)
spell:blockWalls(true)
spell:isAggressive(false)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()