local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
 
function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)          npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                  npcHandler:onThink()                    end
 
function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
 
    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
 
    if(msgcontains(msg, 'soft')) then
        selfSay('Do you want to repair your worn soft boots for 10000 gold coins?', cid)
        talkState[talkUser] = 1
    elseif(msgcontains(msg, 'firewalker')) then
        selfSay('Do you want to repair your worn firewalker boots for 20000 gold coins?', cid)
        talkState[talkUser] = 2
    elseif(msgcontains(msg, 'yes') and talkState[talkUser] ~= 0) then
        local s = talkState[talkUser] == 1
        if(getPlayerItemCount(cid, s and 10021 or 10022) > 0) then
            if(doPlayerRemoveMoney(cid, s and 10000 or 20000)) then
                local item = getPlayerItemById(cid, true, s and 10021 or 10022)
                doTransformItem(item.uid, s and 6132 or 9933)
                selfSay('Here you are.', cid)
            else
                selfSay('Sorry, you don\'t have enough gold.', cid)
            end
        else
            selfSay('Sorry, you don\'t have the item.', cid)
        end
        talkState[talkUser] = 0
    elseif(msgcontains(msg, 'no') and isInArray({1, 2}, talkState[talkUser])) then
        talkState[talkUser] = 0
        selfSay('Ok then.', cid)
    end
 
    return true
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())