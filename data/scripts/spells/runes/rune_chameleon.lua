-- Chameleon
local spell = Spell(SPELL_RUNE)
spell:name("Chameleon")
spell:group(SPELLGROUP_SUPPORT)
spell:runeId(2291)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(27)
spell:magicLevel(4)
spell:charges(true)
spell:allowFarUse(true)

spell:onCastSpell(function(creature, variant)
    local pos = variant:getPosition()
    local tile = Tile(pos)
    if not tile then
        creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        creature:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end
    
    local item = tile:getTopDownItem()
    if not item then
        creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
        creature:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end
    
    local condition = Condition(CONDITION_OUTFIT)
    condition:setTicks(200000)
    condition:setOutfit({lookTypeEx = item:getId()})
    creature:addCondition(condition)
    creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    return true
end)

spell:register()
