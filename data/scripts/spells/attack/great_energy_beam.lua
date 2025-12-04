-- Great Energy Beam
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
combat:setArea(createCombatArea(AREA_BEAM7, AREADIAGONAL_BEAM7))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4)
	local max = (level / 5) + (maglevel * 7)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

spell:name("Great Energy Beam")
spell:words("exevo gran vis lux")
spell:group(SPELLGROUP_ATTACK)
spell:id(23)
spell:cooldown(6000)
spell:groupCooldown(2000)
spell:level(29)
spell:mana(110)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()