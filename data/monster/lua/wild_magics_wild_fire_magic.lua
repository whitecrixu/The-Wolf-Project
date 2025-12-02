-- Wild Fire Magic
-- Auto-converted from XML

local monster = Game.createMonsterType("Wild Fire Magic")
if not monster then return end

monster:name("Wild Fire Magic")
monster:nameDescription("a wild fire magic")
monster:health(1)
monster:maxHealth(1)
monster:experience(0)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:defense(0)
monster:armor(0)
monster:runHealth(1)

-- Flags
monster:attackable(false)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(90)

-- Defense spells (for reference, implement with spell system)
--[[
-- name=physical, interval=100, chance=100, radius=1, areaeffect=yellowfirework
--]]

monster:register()
