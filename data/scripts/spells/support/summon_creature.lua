-- Summon Creature
local spell = Spell(SPELL_INSTANT)

spell:name("Summon Creature")
spell:words("utevo res")
spell:group(SPELLGROUP_SUPPORT)
spell:id(9)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(25)
spell:mana(0)

spell:onCastSpell(function(creature, variant)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()