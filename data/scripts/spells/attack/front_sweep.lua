-- Front Sweep
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)
combat:setArea(createCombatArea(AREA_WAVE6, AREADIAGONAL_WAVE6))

local spell = Spell(SPELL_INSTANT)

spell:name("Front Sweep")
spell:words("exori min")
spell:group(SPELLGROUP_ATTACK)
spell:id(59)
spell:cooldown(6000)
spell:groupCooldown(2000)
spell:level(70)
spell:mana(200)
spell:isPremium(true)
spell:needWeapon(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()