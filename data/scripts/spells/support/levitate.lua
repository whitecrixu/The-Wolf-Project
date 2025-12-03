-- Levitate
local spell = Spell(SPELL_INSTANT)

spell:name("Levitate")
spell:words("exani hur")
spell:group(SPELLGROUP_SUPPORT)
spell:id(81)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(12)
spell:mana(50)
spell:isPremium(true)
spell:isAggressive(false)

spell:onCastSpell(function(creature, variant)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()