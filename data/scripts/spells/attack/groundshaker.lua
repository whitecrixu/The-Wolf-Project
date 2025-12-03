-- Groundshaker
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

local spell = Spell(SPELL_INSTANT)

spell:name("Groundshaker")
spell:words("exori mas")
spell:group(SPELLGROUP_ATTACK)
spell:id(106)
spell:cooldown(8000)
spell:groupCooldown(2000)
spell:level(33)
spell:mana(160)
spell:isPremium(true)
spell:needWeapon(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()