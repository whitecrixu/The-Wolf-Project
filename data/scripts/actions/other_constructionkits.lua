-- Converted from: other/constructionkits.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(3901)
action1:id(3902)
action1:id(3903)
action1:id(3904)
action1:id(3905)
action1:id(3906)
action1:id(3907)
action1:id(3908)
action1:id(3909)
action1:id(3910)
action1:id(3911)
action1:id(3912)
action1:id(3913)
action1:id(3914)
action1:id(3915)
action1:id(3916)
action1:id(3917)
action1:id(3918)
action1:id(3919)
action1:id(3920)
action1:id(3921)
action1:id(3922)
action1:id(3923)
action1:id(3924)
action1:id(3925)
action1:id(3926)
action1:id(3927)
action1:id(3928)
action1:id(3929)
action1:id(3930)
action1:id(3931)
action1:id(3932)
action1:id(3933)
action1:id(3934)
action1:id(3935)
action1:id(3936)
action1:id(3937)
action1:id(3938)

local action2 = Action()
action2:id(5086)
action2:id(5087)
action2:id(5088)

local action3 = Action()
action3:id(6114)

local action4 = Action()
action4:id(6115)

local action5 = Action()
action5:id(6372)

local action6 = Action()
action6:id(6373)

local action7 = Action()
action7:id(8692)

local action8 = Action()
action8:id(9974)

local action9 = Action()
action9:id(11124)

local action10 = Action()
action10:id(11126)

local action11 = Action()
action11:id(11133)

local action12 = Action()
action12:id(11205)

local action13 = Action()
action13:id(14328)

local action14 = Action()
action14:id(14329)

local action15 = Action()
action15:id(16075)

local action16 = Action()
action16:id(16099)

local action17 = Action()
action17:id(20254)

local action18 = Action()
action18:id(20255)

local action19 = Action()
action19:id(20257)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local kit = constructionKits[item.itemid]
	if not kit then
		return false
	end

	if fromPosition.x == CONTAINER_POSITION then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "Put the construction kit on the floor first.")
	elseif not Tile(fromPosition):getHouse() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You may construct this only inside a house.")
	else
		item:transform(kit)
		fromPosition:sendMagicEffect(CONST_ME_POFF)
	end
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()
action3:onUse(onUse)
action3:register()
action4:onUse(onUse)
action4:register()
action5:onUse(onUse)
action5:register()
action6:onUse(onUse)
action6:register()
action7:onUse(onUse)
action7:register()
action8:onUse(onUse)
action8:register()
action9:onUse(onUse)
action9:register()
action10:onUse(onUse)
action10:register()
action11:onUse(onUse)
action11:register()
action12:onUse(onUse)
action12:register()
action13:onUse(onUse)
action13:register()
action14:onUse(onUse)
action14:register()
action15:onUse(onUse)
action15:register()
action16:onUse(onUse)
action16:register()
action17:onUse(onUse)
action17:register()
action18:onUse(onUse)
action18:register()
action19:onUse(onUse)
action19:register()