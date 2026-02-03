/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Bank;

class BankFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaBankCredit(lua_State* L);
	static int luaBankDebit(lua_State* L);
	static int luaBankBalance(lua_State* L);
	static int luaBankHasBalance(lua_State* L);
	static int luaBankTransfer(lua_State* L);
	static int luaBankTransferToGuild(lua_State* L);
	static int luaBankWithdraw(lua_State* L);
	static int luaBankDeposit(lua_State* L);

	static std::shared_ptr<Bank> getBank(lua_State* L, int32_t arg, bool isGuild = false);
};
