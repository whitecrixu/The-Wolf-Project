-- Convince Creature
local spell = Spell(SPELL_RUNE)
spell:name("Convince Creature")
spell:group(SPELLGROUP_SUPPORT)
spell:runeId(2290)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(16)
spell:magicLevel(5)
spell:charges(true)
spell:allowFarUse(true)
spell:needTarget(true)

spell:onCastSpell(function(creature, variant)
    local target = creature:getTarget()
    if not target or not target:isMonster() then
        creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        return false
    end
    
    local manaCost = target:getType():getManaCost()
    if manaCost == 0 or not target:getType():isConvinceable() then
        creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        creature:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end
    
    if creature:getMana() < manaCost then
        creature:sendCancelMessage(RETURNVALUE_NOTENOUGHMANA)
        creature:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end
    
    creature:addMana(-manaCost)
    creature:addManaSpent(manaCost)
    target:setMaster(creature)
    target:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()
