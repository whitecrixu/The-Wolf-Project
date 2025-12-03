-- Magic Rope
local spell = Spell(SPELL_INSTANT)

spell:name("Magic Rope")
spell:words("exani tera")
spell:group(SPELLGROUP_SUPPORT)
spell:id(76)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(9)
spell:mana(20)
spell:isPremium(true)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()