-- Creature Illusion
local spell = Spell(SPELL_INSTANT)

spell:name("Creature Illusion")
spell:words("utevo res ina")
spell:group(SPELLGROUP_SUPPORT)
spell:id(38)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(23)
spell:mana(100)
spell:isAggressive(false)

spell:onCastSpell(function(creature, variant)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()