-- Energy Beam
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setArea(createCombatArea(AREA_BEAM5, AREADIAGONAL_BEAM5))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 1.8) + 11
	local max = (level / 5) + (maglevel * 3) + 19
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell(SPELL_INSTANT)

spell:name("Energy Beam")
spell:words("exevo vis lux")
spell:group(SPELLGROUP_ATTACK)
spell:id(22)
spell:cooldown(4000)
spell:groupCooldown(2000)
spell:level(23)
spell:mana(40)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()