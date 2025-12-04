-- Energy Wave
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.5)
	local max = (level / 5) + (maglevel * 9)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

spell:name("Energy Wave")
spell:words("exevo vis hur")
spell:group(SPELLGROUP_ATTACK)
spell:id(13)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:level(38)
spell:mana(170)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()