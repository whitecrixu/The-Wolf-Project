-- Terra Wave
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLPLANTS)
combat:setArea(createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 3.5)
	local max = (level / 5) + (maglevel * 7)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
local spell = Spell(SPELL_INSTANT)

spell:name("Terra Wave")
spell:words("exevo tera hur")
spell:group(SPELLGROUP_ATTACK)
spell:id(120)
spell:cooldown(4000)
spell:groupCooldown(2000)
spell:level(38)
spell:mana(210)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()