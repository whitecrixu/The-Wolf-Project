-- Find Person
local spell = Spell(SPELL_INSTANT)

spell:name("Find Person")
spell:words("exiva")
spell:group(SPELLGROUP_SUPPORT)
spell:id(20)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(8)
spell:mana(20)
spell:isAggressive(false)

spell:onCastSpell(function(creature, variant)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()