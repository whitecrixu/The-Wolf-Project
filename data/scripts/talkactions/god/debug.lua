local talk = TalkAction("/debugitem")

function talk.onSay(player, words, param)
local id = tonumber(param)
if not id then
	player:sendCancelMessage("Wpisz ID. Przykład: /debugitem 52349")
	return false
	end

	local itemType = ItemType(id)

	-- 1. Czy ID w ogóle istnieje w OTB?
	if not itemType or itemType:getId() == 0 then
		player:popupFYI("KRYTYCZNY BLAD:\nSilnik nie widzi ID " .. id .. " w pliku items.otb.\nZrestartuj serwer lub sprawdz czy zapisales OTB w dobrym folderze.")
		return false
		end

		-- 2. Sprawdzamy flagi fizyczne
		local info = "RAPORT OTB dla ID: " .. id .. "\n"
		info = info .. "Nazwa (XML): " .. itemType:getName() .. "\n"
		info = info .. "Client ID: " .. itemType:getClientId() .. "\n"
		info = info .. "--------------------------\n"

		-- TO JEST NAJWAZNIEJSZE:
		local isPickupable = itemType:isPickupable()
		info = info .. "PICKUPABLE (Do podnoszenia): " .. tostring(isPickupable) .. "\n"

		if isPickupable then
			info = info .. "STATUS: OK! Powinienes moc stworzyc ten item."
			else
				info = info .. "STATUS: BLAD! \nMusisz wrocic do Lapis Editora i zaznaczyc flage 'Pickupable'."
				end

				player:popupFYI(info)
				return false
				end

				talk:separator(" ")
				talk:groupType("god") -- NAPRAWA: Wymagane w nowym The Wolf Project
				talk:register()
