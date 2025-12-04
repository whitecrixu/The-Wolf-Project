-- Fierce Berserk
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)
combat:setArea(createCombatArea(AREA_SQUARE1X1))
function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()

	local min = (level / 5) + (skill + 2 * attack) * 1.1
	local max = (level / 5) + (skill + 2 * attack) * 3

	return -min * 1.1, -max * 1.1 -- TODO : Use New Real Formula instead of an %
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
local spell = Spell(SPELL_INSTANT)

spell:name("Fierce Berserk")
spell:words("exori gran")
spell:group(SPELLGROUP_ATTACK)
spell:id(105)
spell:cooldown(6000)
spell:groupCooldown(2000)
spell:level(90)
spell:mana(340)
spell:isPremium(true)
spell:needWeapon(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()