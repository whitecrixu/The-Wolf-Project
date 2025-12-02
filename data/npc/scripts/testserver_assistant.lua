local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
 
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                         npcHandler:onThink() end
 
function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
 
--DAWANIE 10 CRYSTAL COINS
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
if msgcontains(msg, "money") then
selfSay("Do you want 10 crystal coins?", cid)
talkState[talkUser] = 1
elseif msgcontains(msg, "yes") and talkState[talkUser] == 1 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 2160, 10)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

elseif msgcontains(msg, "addon doll") then
selfSay("Do you want addon doll?", cid)
talkState[talkUser] = 2
elseif msgcontains(msg, "yes") and talkState[talkUser] == 2 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 9693, 1)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

elseif msgcontains(msg, "jester staff") then
selfSay("Do you want jester staff?", cid)
talkState[talkUser] = 3
elseif msgcontains(msg, "yes") and talkState[talkUser] == 3 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 7958, 1)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

elseif msgcontains(msg, "slingshot") then
selfSay("Do you want slingshot?", cid)
talkState[talkUser] = 4
elseif msgcontains(msg, "yes") and talkState[talkUser] == 4 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 5907, 1)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

elseif msgcontains(msg, "solar axe") then
selfSay("Do you want solar axe?", cid)
talkState[talkUser] = 5
elseif msgcontains(msg, "yes") and talkState[talkUser] == 5 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 8925, 1)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

elseif msgcontains(msg, "flame blade") then
selfSay("Do you want the flame blade?", cid)
talkState[talkUser] = 6
elseif msgcontains(msg, "yes") and talkState[talkUser] == 6 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 8931, 1)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

elseif msgcontains(msg, "stomper") then
selfSay("Do you want the stomper?", cid)
talkState[talkUser] = 7
elseif msgcontains(msg, "yes") and talkState[talkUser] == 7 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 8929, 1)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

elseif msgcontains(msg, "soft") then
selfSay("Do you want soft boots?", cid)
talkState[talkUser] = 8
elseif msgcontains(msg, "yes") and talkState[talkUser] == 8 then
selfSay("Here you are.", cid)
doPlayerAddItem(cid, 6132, 1)
talkState[talkUser] = 0
if(not npcHandler:isFocused(cid)) then
return false
end

end
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())