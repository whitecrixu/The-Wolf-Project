-- Annihilation
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
combat:setParameter(COMBAT_PARAM_USECHARGES, true)

local spell = Spell(SPELL_INSTANT)

spell:name("Annihilation")
spell:words("exori gran ico")
spell:group(SPELLGROUP_ATTACK)
spell:id(62)
spell:cooldown(30000)
spell:groupCooldown(4000)
spell:level(110)
spell:mana(300)
spell:isPremium(true)
spell:needWeapon(true)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()