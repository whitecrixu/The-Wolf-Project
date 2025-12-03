-- Poison Bomb
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_CREATEITEM, 1496)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
combat:setArea(createCombatArea(AREA_CIRCLE2X2))

local spell = Spell(SPELL_RUNE)
spell:name("Poison Bomb")
spell:group(SPELLGROUP_ATTACK)
spell:runeId(2286)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(25)
spell:magicLevel(4)
spell:charges(true)
spell:allowFarUse(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()