-- Extended Opcode Event (RevScriptSys)

local function extendedOpcodeCallback(player, opcode, buffer)
	-- Here you can add your own custom handlers using opcode and buffer
	-- Example:
	-- if opcode == 1 then
	--     player:sendExtendedOpcode(1, "response")
	-- end
	return true
end

local extendedOpcode = CreatureEvent("ExtendedOpcode")
extendedOpcode:type("extendedopcode")
extendedOpcode:onExtendedOpcode(extendedOpcodeCallback)
extendedOpcode:register()
