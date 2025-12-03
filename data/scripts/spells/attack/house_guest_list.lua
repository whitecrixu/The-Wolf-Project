-- House Guest List
local spell = Spell(SPELL_INSTANT)

spell:name("House Guest List")
spell:words("aleta sio")
spell:group(SPELLGROUP_ATTACK)
spell:id(71)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(0)
spell:mana(0)
spell:isAggressive(false)
spell:isSelfTarget(true)

spell:onCastSpell(function(creature, variant)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()