-- Protector
local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local skill = Condition(CONDITION_ATTRIBUTES)
skill:setParameter(CONDITION_PARAM_TICKS, 13000)
skill:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, 220)
skill:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:setCondition(skill)

local cooldownAttackGroup = Condition(CONDITION_SPELLGROUPCOOLDOWN)
cooldownAttackGroup:setParameter(CONDITION_PARAM_SUBID, 1)
cooldownAttackGroup:setParameter(CONDITION_PARAM_TICKS, 10000)
combat:setCondition(cooldownAttackGroup)

local pacified = Condition(CONDITION_PACIFIED)
pacified:setParameter(CONDITION_PARAM_TICKS, 10000)
combat:setCondition(pacified)

local spell = Spell(SPELL_INSTANT)

spell:name("Protector")
spell:words("utamo tempo")
spell:group(SPELLGROUP_SUPPORT)
spell:id(132)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(55)
spell:mana(200)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()