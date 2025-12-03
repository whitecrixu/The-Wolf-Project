-- Challenge
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

function onTargetCreature(creature, target)
	return doChallengeCreature(creature, target)
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

local spell = Spell(SPELL_INSTANT)

spell:name("Challenge")
spell:words("exeta res")
spell:group(SPELLGROUP_SUPPORT)
spell:id(93)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(20)
spell:mana(30)
spell:isPremium(true)
spell:isAggressive(false)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()