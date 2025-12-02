set(tfs_SRC
	# Core
	${CMAKE_CURRENT_LIST_DIR}/core/otpch.cpp
	${CMAKE_CURRENT_LIST_DIR}/core/otserv.cpp
	${CMAKE_CURRENT_LIST_DIR}/core/game.cpp
	${CMAKE_CURRENT_LIST_DIR}/core/scheduler.cpp
	${CMAKE_CURRENT_LIST_DIR}/core/tasks.cpp
	${CMAKE_CURRENT_LIST_DIR}/core/signals.cpp
	${CMAKE_CURRENT_LIST_DIR}/core/configmanager.cpp
	${CMAKE_CURRENT_LIST_DIR}/core/scriptmanager.cpp

	# Network
	${CMAKE_CURRENT_LIST_DIR}/network/connection.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/protocol.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/protocolgame.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/protocolgamebase.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/protocollogin.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/protocolold.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/protocolspectator.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/protocolstatus.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/server.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/networkmessage.cpp
	${CMAKE_CURRENT_LIST_DIR}/network/outputmessage.cpp

	# IO
	${CMAKE_CURRENT_LIST_DIR}/io/database.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/databasemanager.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/databasetasks.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/iologindata.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/iomap.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/iomapserialize.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/iomarket.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/ioguild.cpp
	${CMAKE_CURRENT_LIST_DIR}/io/fileloader.cpp

	# Creatures
	${CMAKE_CURRENT_LIST_DIR}/creatures/creature.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/player.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/monster.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/monsters.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/npc.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/party.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/guild.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/groups.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/vocation.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/outfit.cpp
	${CMAKE_CURRENT_LIST_DIR}/creatures/mounts.cpp

	# Items
	${CMAKE_CURRENT_LIST_DIR}/items/item.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/items.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/container.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/cylinder.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/thing.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/depotchest.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/depotlocker.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/inbox.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/mailbox.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/trashholder.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/teleport.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/bed.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/reward.cpp
	${CMAKE_CURRENT_LIST_DIR}/items/rewardchest.cpp

	# Map
	${CMAKE_CURRENT_LIST_DIR}/map/map.cpp
	${CMAKE_CURRENT_LIST_DIR}/map/tile.cpp
	${CMAKE_CURRENT_LIST_DIR}/map/house.cpp
	${CMAKE_CURRENT_LIST_DIR}/map/housetile.cpp
	${CMAKE_CURRENT_LIST_DIR}/map/spawn.cpp
	${CMAKE_CURRENT_LIST_DIR}/map/position.cpp

	# Lua/Scripts
	${CMAKE_CURRENT_LIST_DIR}/lua/luascript.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/actions.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/baseevents.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/events.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/creatureevent.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/globalevent.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/movement.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/spells.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/talkaction.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/weapons.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/modules.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/commands.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/chat.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/quests.cpp
	${CMAKE_CURRENT_LIST_DIR}/lua/raids.cpp

	# Combat
	${CMAKE_CURRENT_LIST_DIR}/combat/combat.cpp
	${CMAKE_CURRENT_LIST_DIR}/combat/condition.cpp

	# Utils
	${CMAKE_CURRENT_LIST_DIR}/utils/tools.cpp
	${CMAKE_CURRENT_LIST_DIR}/utils/rsa.cpp
	${CMAKE_CURRENT_LIST_DIR}/utils/ban.cpp
	${CMAKE_CURRENT_LIST_DIR}/utils/waitlist.cpp
	${CMAKE_CURRENT_LIST_DIR}/utils/wildcardtree.cpp
)
