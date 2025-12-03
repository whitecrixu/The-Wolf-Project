-- Fire Field
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_CREATEITEM, 1492)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

local spell = Spell(SPELL_RUNE)
spell:name("Fire Field")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2301)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(15)
spell:magicLevel(1)
spell:charges(true)
spell:allowFarUse(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()