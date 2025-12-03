-- Food
local food = {
	2666, -- meat
	2671, -- ham
	2681, -- grape
	2674, -- apple
	2689, -- bread
	2690, -- roll
	2696  -- cheese
}

local spell = Spell(SPELL_INSTANT)

spell:name("Food")
spell:words("exevo pan")
spell:group(SPELLGROUP_SUPPORT)
spell:id(42)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(14)
spell:mana(120)
spell:isAggressive(false)

spell:onCastSpell(function(creature, variant)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()