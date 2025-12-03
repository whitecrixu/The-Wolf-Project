-- Inflict Wound
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)

local condition = Condition(CONDITION_BLEEDING)
condition:setParameter(CONDITION_PARAM_DELAYED, true)
condition:addDamage(25, 4000, -45)
combat:setCondition(condition)

local spell = Spell(SPELL_INSTANT)

spell:name("Inflict Wound")
spell:words("utori kor")
spell:group(SPELLGROUP_ATTACK)
spell:id(141)
spell:cooldown(30000)
spell:groupCooldown(2000)
spell:level(40)
spell:mana(30)
spell:blockWalls(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()