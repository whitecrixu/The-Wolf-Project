-- Ethereal Spear
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)

local spell = Spell(SPELL_INSTANT)

spell:name("Ethereal Spear")
spell:words("exori con")
spell:group(SPELLGROUP_ATTACK)
spell:id(111)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(23)
spell:mana(25)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()