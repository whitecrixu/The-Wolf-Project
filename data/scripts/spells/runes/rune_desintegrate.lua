-- Desintegrate
local spell = Spell(SPELL_RUNE)
spell:name("Desintegrate")
spell:group(SPELLGROUP_SUPPORT)
spell:runeId(2310)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(21)
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
    
    local corpse = tile:getTopDownItem()
    if corpse then
        local itemType = corpse:getType()
        if itemType:isCorpse() and itemType:isMovable() then
            corpse:remove()
            pos:sendMagicEffect(CONST_ME_POFF)
            return true
        end
    end
    
    creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
    creature:getPosition():sendMagicEffect(CONST_ME_POFF)
    return false
end)

spell:register()
