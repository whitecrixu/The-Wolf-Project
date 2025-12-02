local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
 
function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)                       npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)                  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                                      npcHandler:onThink() end
 
function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

    local travels = {
    ["karmia"] = {talk=1, cost=0, level=0, destination={x=452, y=480, z=6}},
    ["inferno"] = {talk=2, cost=0, level=0, destination={x=935, y=233, z=6}},
    ["desert city"] = {talk=3, cost=0, level=0, destination={x=399, y=482, z=6}},
	["ice city"] = {talk=4, cost=0, level=0, destination={x=214, y=808, z=6}},
    ["benore"] = {talk=5, cost=0, level=0, destination={x=432, y=421, z=6}},
	["premy island"] = {talk=6, cost=0, level=0, destination={x=409, y=628, z=6}},
	["zajland"] = {talk=7, cost=0, level=0, destination={x=650, y=941, z=6}},
	["tiquanda"] = {talk=8, cost=0, level=0, destination={x=532, y=445, z=6}}
    }
 
    for k, v in pairs(travels) do
        if (msgcontains(msg:lower(), k)) then
			if v.cost == 0 then
				selfSay('Do you want to travel to '..k..' for free?', cid)
                    talkState[talkUser] = v.talk     
				else
                    selfSay('Do you want to travel to '..k..' for '..v.cost..' gold coins?', cid)
                    talkState[talkUser] = v.talk        
				end
                elseif(msgcontains(msg:lower(), 'yes') and talkState[talkUser] == v.talk) then
                                if getPlayerLevel(cid) >= v.level then
                                        if(doPlayerRemoveMoney(cid, v.cost) == TRUE) then
                                                doTeleportThing(cid, v.destination, FALSE)
                                                selfSay('Traveled to '..k..'.', cid)
												doSendMagicEffect(v.destination, CONST_ME_TELEPORT)
                                        else
                                        selfSay('Sorry, you don\'t have enough gold coins.', cid)
                                        end
                                else
                                selfSay('Sorry, you don\'t have enough level.', cid)
                                end    
                talkState[talkUser] = 0
                elseif(msgcontains(msg:lower(), 'no') and isInArray({v.talk}, talkState[talkUser]) == TRUE) then
                        talkState[talkUser] = 0
                        selfSay('Ok then.', cid)
                end
        end    
 
        return true
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())