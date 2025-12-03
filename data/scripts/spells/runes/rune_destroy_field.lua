-- Destroy Field
local FIELDS = {
    [1492] = true, [1493] = true, [1494] = true,
    [1495] = true,
    [1496] = true, [1497] = true, [1498] = true, [1499] = true,
    [1500] = true, [1501] = true, [1502] = true, [1503] = true,
    [1504] = true,
    [1505] = true, [1506] = true, [1507] = true, [1508] = true,
}

local spell = Spell(SPELL_RUNE)
spell:name("Destroy Field")
spell:group(SPELLGROUP_SUPPORT)
spell:runeId(2261)
spell:cooldown(2000)
spell:groupCooldown(2000)
spell:level(17)
spell:magicLevel(3)
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
    
    local field = tile:getGround()
    if field and FIELDS[field:getId()] then
        field:remove()
        pos:sendMagicEffect(CONST_ME_POFF)
        return true
    end
    
    local items = tile:getItems()
    if items then
        for _, item in ipairs(items) do
            if FIELDS[item:getId()] then
                item:remove()
                pos:sendMagicEffect(CONST_ME_POFF)
                return true
            end
        end
    end
    
    creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
    creature:getPosition():sendMagicEffect(CONST_ME_POFF)
    return false
end)

spell:register()
