-- Strong Ethereal Spear
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)

local spell = Spell(SPELL_INSTANT)

spell:name("Strong Ethereal Spear")
spell:words("exori gran con")
spell:group(SPELLGROUP_ATTACK)
spell:id(57)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:level(90)
spell:mana(55)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()