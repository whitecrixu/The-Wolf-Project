-- Mud Attack
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLEARTH)

local spell = Spell(SPELL_INSTANT)

spell:name("Mud Attack")
spell:words("exori infir tera")
spell:group(SPELLGROUP_ATTACK)
spell:id(172)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(1)
spell:mana(6)
spell:isPremium(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()