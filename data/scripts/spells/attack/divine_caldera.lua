-- Divine Caldera
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))
function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4)
	local max = (level / 5) + (maglevel * 6)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
local spell = Spell(SPELL_INSTANT)

spell:name("Divine Caldera")
spell:words("exevo mas san")
spell:group(SPELLGROUP_ATTACK)
spell:id(124)
spell:cooldown(4000)
spell:groupCooldown(2000)
spell:level(50)
spell:mana(160)
spell:isPremium(true)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()