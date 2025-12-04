-- Apprentice's Strike
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 0.6) + 4
	local max = (level / 5) + (maglevel * 1.2) + 8
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

spell:name("Apprentice's Strike")
spell:words("exori min flam")
spell:group(SPELLGROUP_ATTACK)
spell:id(169)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(8)
spell:mana(6)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()