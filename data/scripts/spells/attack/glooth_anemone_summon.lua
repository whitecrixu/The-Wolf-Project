-- glooth anemone summon
local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

local maxsummons = 1

local spell = Spell(SPELL_INSTANT)

spell:name("glooth anemone summon")
spell:words("##372")
spell:group(SPELLGROUP_ATTACK)
spell:id(0)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(0)
spell:mana(0)
spell:needLearn(true)
spell:blockWalls(true)
spell:isAggressive(false)

spell:onCastSpell(function(creature, variant)
    return combat:execute(creature, variant)
end)

spell:register()