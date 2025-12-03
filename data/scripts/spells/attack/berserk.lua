-- Berserk
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

local spell = Spell(SPELL_INSTANT)

spell:name("Berserk")
spell:words("exori")
spell:group(SPELLGROUP_ATTACK)
spell:id(80)
spell:cooldown(4000)
spell:groupCooldown(2000)
spell:level(35)
spell:mana(115)
spell:isPremium(true)
spell:needWeapon(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()