-- Strong Ice Wave
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setArea(createCombatArea(AREA_WAVE3))
function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 4.5) + 20
	local max = (level / 5) + (maglevel * 7.6) + 48
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
local spell = Spell(SPELL_INSTANT)

spell:name("Strong Ice Wave")
spell:words("exevo gran frigo hur")
spell:group(SPELLGROUP_ATTACK)
spell:id(43)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:level(40)
spell:mana(170)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()