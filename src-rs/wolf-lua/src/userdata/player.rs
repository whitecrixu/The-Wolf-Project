//! Player userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use wolf_core::{AccountType, CreatureId, PlayerSex};
use crate::class_registry::create_extensible_class;

use super::creature::LuaCreature;
use super::position::LuaPosition;

/// Player wrapper for Lua - extends Creature.
#[derive(Debug, Clone)]
pub struct LuaPlayer {
    pub creature: LuaCreature,
    pub guid: u32,
    pub account_id: u32,
    pub account_type: AccountType,
    pub sex: PlayerSex,
    pub vocation_id: u16,
    pub level: u32,
    pub experience: u64,
    pub magic_level: u32,
    pub mana_spent: u64,
    pub soul: u8,
    pub stamina: u16,
    pub capacity: u32,
    pub free_capacity: u32,
    pub bank_balance: u64,
    pub premium_days: u16,
    pub guild_id: Option<u32>,
    pub guild_level: u8,
    pub guild_nick: String,
    pub town_id: u32,
}

impl Default for LuaPlayer {
    fn default() -> Self {
        Self {
            creature: LuaCreature::default(),
            guid: 0,
            account_id: 0,
            account_type: AccountType::Normal,
            sex: PlayerSex::Male,
            vocation_id: 0,
            level: 1,
            experience: 0,
            magic_level: 0,
            mana_spent: 0,
            soul: 100,
            stamina: 2520,
            capacity: 40000,
            free_capacity: 40000,
            bank_balance: 0,
            premium_days: 0,
            guild_id: None,
            guild_level: 0,
            guild_nick: String::new(),
            town_id: 1,
        }
    }
}

impl LuaPlayer {
    pub fn new(id: CreatureId) -> Self {
        Self {
            creature: LuaCreature::new(id),
            ..Default::default()
        }
    }
}

impl UserData for LuaPlayer {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        // === Inherited from Creature ===
        methods.add_method("isCreature", |_, _, ()| Ok(true));
        methods.add_method("isPlayer", |_, _, ()| Ok(true));
        methods.add_method("isMonster", |_, _, ()| Ok(false));
        methods.add_method("isNpc", |_, _, ()| Ok(false));
        methods.add_method("isRemoved", |_, _, ()| Ok(false));
        methods.add_method("getId", |_, this, ()| Ok(this.creature.id));
        methods.add_method("getName", |_, this, ()| Ok(this.creature.name.clone()));
        methods.add_method("getPosition", |_, this, ()| Ok(LuaPosition(this.creature.position)));
        methods.add_method("getHealth", |_, this, ()| Ok(this.creature.health));
        methods.add_method("getMaxHealth", |_, this, ()| Ok(this.creature.max_health));
        methods.add_method("getMana", |_, this, ()| Ok(this.creature.mana));
        methods.add_method("getMaxMana", |_, this, ()| Ok(this.creature.max_mana));
        methods.add_method("getSpeed", |_, this, ()| Ok(this.creature.speed));
        methods.add_method("getBaseSpeed", |_, this, ()| Ok(this.creature.base_speed));
        methods.add_method("getDirection", |_, this, ()| Ok(this.creature.direction as u8));
        methods.add_method("getSkull", |_, this, ()| Ok(this.creature.skull as u8));

        // Forward creature methods
        methods.add_method("addHealth", |_, this, value: i32| {
            tracing::debug!("Player:addHealth({})", value);
            Ok(())
        });
        methods.add_method("addMana", |_, this, (value, animate): (i32, Option<bool>)| {
            tracing::debug!("Player:addMana({}, {:?})", value, animate);
            Ok(())
        });
        methods.add_method("say", |_, this, (text, talk_type, ghost, target, position): (String, Option<u8>, Option<bool>, Option<Value>, Option<LuaPosition>)| {
            tracing::debug!("Player:say({})", text);
            Ok(true)
        });
        methods.add_method("teleportTo", |_, this, (pos, push): (LuaPosition, Option<bool>)| {
            tracing::debug!("Player:teleportTo({:?})", pos.0);
            Ok(true)
        });

        // === Player-specific ===
        
        // Account & Identity
        methods.add_method("getGuid", |_, this, ()| Ok(this.guid));
        methods.add_method("getIp", |_, this, ()| Ok(0u32)); // Stub
        methods.add_method("getAccountId", |_, this, ()| Ok(this.account_id));
        methods.add_method("getAccountType", |_, this, ()| Ok(this.account_type as u8));
        methods.add_method("setAccountType", |_, this, account_type: u8| {
            tracing::debug!("Player:setAccountType({})", account_type);
            Ok(())
        });
        methods.add_method("getLastLoginSaved", |_, this, ()| Ok(0u64));
        methods.add_method("getLastLogout", |_, this, ()| Ok(0u64));

        // Flags
        methods.add_method("hasFlag", |_, this, flag: u64| {
            tracing::debug!("Player:hasFlag({})", flag);
            Ok(false)
        });

        // Capacity
        methods.add_method("getCapacity", |_, this, ()| Ok(this.capacity));
        methods.add_method("setCapacity", |_, this, cap: u32| {
            tracing::debug!("Player:setCapacity({})", cap);
            Ok(())
        });
        methods.add_method("getFreeCapacity", |_, this, ()| Ok(this.free_capacity));

        // Level & Experience
        methods.add_method("getLevel", |_, this, ()| Ok(this.level));
        methods.add_method("getExperience", |_, this, ()| Ok(this.experience));
        methods.add_method("addExperience", |_, this, (exp, send_text): (u64, Option<bool>)| {
            tracing::debug!("Player:addExperience({}, {:?})", exp, send_text);
            Ok(())
        });
        methods.add_method("removeExperience", |_, this, (exp, send_text): (u64, Option<bool>)| {
            tracing::debug!("Player:removeExperience({}, {:?})", exp, send_text);
            Ok(())
        });

        // Magic Level
        methods.add_method("getMagicLevel", |_, this, ()| Ok(this.magic_level));
        methods.add_method("getBaseMagicLevel", |_, this, ()| Ok(this.magic_level));
        methods.add_method("getManaSpent", |_, this, ()| Ok(this.mana_spent));
        methods.add_method("addManaSpent", |_, this, mana: u64| {
            tracing::debug!("Player:addManaSpent({})", mana);
            Ok(())
        });
        methods.add_method("setMaxMana", |_, this, mana: i32| {
            tracing::debug!("Player:setMaxMana({})", mana);
            Ok(())
        });

        // Skills
        methods.add_method("getSkillLevel", |_, this, skill: u8| {
            tracing::debug!("Player:getSkillLevel({})", skill);
            Ok(10u32) // Stub value
        });
        methods.add_method("getEffectiveSkillLevel", |_, this, skill: u8| {
            tracing::debug!("Player:getEffectiveSkillLevel({})", skill);
            Ok(10u32)
        });
        methods.add_method("getSkillPercent", |_, this, skill: u8| {
            Ok(0u8)
        });
        methods.add_method("getSkillTries", |_, this, skill: u8| {
            Ok(0u64)
        });
        methods.add_method("addSkillTries", |_, this, (skill, tries): (u8, u64)| {
            tracing::debug!("Player:addSkillTries({}, {})", skill, tries);
            Ok(())
        });

        // Offline training
        methods.add_method("getOfflineTrainingTime", |_, this, ()| Ok(0u32));
        methods.add_method("addOfflineTrainingTime", |_, this, time: u32| {
            tracing::debug!("Player:addOfflineTrainingTime({})", time);
            Ok(())
        });
        methods.add_method("removeOfflineTrainingTime", |_, this, time: u32| {
            tracing::debug!("Player:removeOfflineTrainingTime({})", time);
            Ok(())
        });
        methods.add_method("getOfflineTrainingSkill", |_, this, ()| Ok(0i32));
        methods.add_method("setOfflineTrainingSkill", |_, this, skill: i32| {
            tracing::debug!("Player:setOfflineTrainingSkill({})", skill);
            Ok(())
        });
        methods.add_method("addOfflineTrainingTries", |_, this, (skill, tries): (u8, u64)| {
            tracing::debug!("Player:addOfflineTrainingTries({}, {})", skill, tries);
            Ok(())
        });

        // Items
        methods.add_method("getItemCount", |_, this, (item_id, sub_type): (u16, Option<i32>)| {
            tracing::debug!("Player:getItemCount({}, {:?})", item_id, sub_type);
            Ok(0u32)
        });
        methods.add_method("getItemById", |_, this, (item_id, deep_search, sub_type): (u16, Option<bool>, Option<i32>)| {
            tracing::debug!("Player:getItemById({}, {:?}, {:?})", item_id, deep_search, sub_type);
            Ok(Value::Nil)
        });

        // Vocation
        methods.add_method("getVocation", |_, this, ()| -> LuaResult<Value> {
            tracing::debug!("Player:getVocation()");
            Ok(Value::Nil)
        });
        methods.add_method("setVocation", |_, this, vocation: Value| {
            tracing::debug!("Player:setVocation()");
            Ok(true)
        });

        // Sex
        methods.add_method("getSex", |_, this, ()| Ok(this.sex as u8));
        methods.add_method("setSex", |_, this, sex: u8| {
            tracing::debug!("Player:setSex({})", sex);
            Ok(())
        });

        // Town
        methods.add_method("getTown", |_, this, ()| -> LuaResult<Value> {
            tracing::debug!("Player:getTown()");
            Ok(Value::Nil)
        });
        methods.add_method("setTown", |_, this, town: Value| {
            tracing::debug!("Player:setTown()");
            Ok(true)
        });

        // Guild
        methods.add_method("getGuild", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        methods.add_method("setGuild", |_, this, guild: Value| {
            tracing::debug!("Player:setGuild()");
            Ok(true)
        });
        methods.add_method("getGuildLevel", |_, this, ()| Ok(this.guild_level));
        methods.add_method("setGuildLevel", |_, this, level: u8| {
            tracing::debug!("Player:setGuildLevel({})", level);
            Ok(())
        });
        methods.add_method("getGuildNick", |_, this, ()| Ok(this.guild_nick.clone()));
        methods.add_method("setGuildNick", |_, this, nick: String| {
            tracing::debug!("Player:setGuildNick({})", nick);
            Ok(())
        });

        // Group
        methods.add_method("getGroup", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        methods.add_method("setGroup", |_, this, group: Value| {
            tracing::debug!("Player:setGroup()");
            Ok(true)
        });

        // Stamina
        methods.add_method("getStamina", |_, this, ()| Ok(this.stamina));
        methods.add_method("setStamina", |_, this, stamina: u16| {
            tracing::debug!("Player:setStamina({})", stamina);
            Ok(())
        });

        // Soul
        methods.add_method("getSoul", |_, this, ()| Ok(this.soul));
        methods.add_method("addSoul", |_, this, soul: i8| {
            tracing::debug!("Player:addSoul({})", soul);
            Ok(())
        });
        methods.add_method("getMaxSoul", |_, this, ()| Ok(200u8));

        // Bank
        methods.add_method("getBankBalance", |_, this, ()| Ok(this.bank_balance));
        methods.add_method("setBankBalance", |_, this, balance: u64| {
            tracing::debug!("Player:setBankBalance({})", balance);
            Ok(())
        });

        // Storage
        methods.add_method("getStorageValue", |_, this, key: i32| {
            tracing::debug!("Player:getStorageValue({})", key);
            Ok(-1i32)
        });
        methods.add_method("setStorageValue", |_, this, (key, value): (i32, i32)| {
            tracing::debug!("Player:setStorageValue({}, {})", key, value);
            Ok(())
        });

        // Inventory
        methods.add_method("addItem", |_, this, (item_id, count, can_drop, sub_type, slot): (u16, Option<u32>, Option<bool>, Option<i32>, Option<u8>)| {
            tracing::debug!("Player:addItem({}, {:?})", item_id, count);
            Ok(Value::Nil)
        });
        methods.add_method("addItemEx", |_, this, (item, can_drop, slot): (Value, Option<bool>, Option<u8>)| {
            tracing::debug!("Player:addItemEx()");
            Ok(0u8) // RETURNVALUE_NOERROR
        });
        methods.add_method("removeItem", |_, this, (item_id, count, sub_type, ignore_equipped): (u16, Option<u32>, Option<i32>, Option<bool>)| {
            tracing::debug!("Player:removeItem({}, {:?})", item_id, count);
            Ok(true)
        });
        methods.add_method("getSlotItem", |_, this, slot: u8| -> LuaResult<Value> {
            tracing::debug!("Player:getSlotItem({})", slot);
            Ok(Value::Nil)
        });

        // Money
        methods.add_method("getMoney", |_, this, ()| {
            tracing::debug!("Player:getMoney()");
            Ok(0u64)
        });
        methods.add_method("addMoney", |_, this, amount: u64| {
            tracing::debug!("Player:addMoney({})", amount);
            Ok(true)
        });
        methods.add_method("removeMoney", |_, this, amount: u64| {
            tracing::debug!("Player:removeMoney({})", amount);
            Ok(true)
        });

        // Text
        methods.add_method("showTextDialog", |_, this, (item, text, can_write, length): (Value, Option<String>, Option<bool>, Option<u32>)| {
            tracing::debug!("Player:showTextDialog()");
            Ok(())
        });
        methods.add_method("sendTextMessage", |_, this, (msg_type, message, position, value, color): (u8, String, Option<LuaPosition>, Option<i32>, Option<u8>)| {
            tracing::debug!("Player:sendTextMessage({}, {})", msg_type, message);
            Ok(())
        });
        methods.add_method("sendChannelMessage", |_, this, (author, message, msg_type, channel_id): (String, String, u8, u16)| {
            tracing::debug!("Player:sendChannelMessage({}, {}, {}, {})", author, message, msg_type, channel_id);
            Ok(())
        });
        methods.add_method("sendPrivateMessage", |_, this, (target, message, msg_type): (Value, String, Option<u8>)| {
            tracing::debug!("Player:sendPrivateMessage({}, {:?})", message, msg_type);
            Ok(())
        });
        methods.add_method("channelSay", |_, this, (target, msg_type, message, channel_id): (Value, u8, String, u16)| {
            tracing::debug!("Player:channelSay({}, {}, {})", msg_type, message, channel_id);
            Ok(true)
        });
        methods.add_method("openChannel", |_, this, channel_id: u16| {
            tracing::debug!("Player:openChannel({})", channel_id);
            Ok(true)
        });

        // Party
        methods.add_method("getParty", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });

        // Outfits
        methods.add_method("addOutfit", |_, this, outfit_id: u16| {
            tracing::debug!("Player:addOutfit({})", outfit_id);
            Ok(true)
        });
        methods.add_method("addOutfitAddon", |_, this, (outfit_id, addon): (u16, u8)| {
            tracing::debug!("Player:addOutfitAddon({}, {})", outfit_id, addon);
            Ok(true)
        });
        methods.add_method("removeOutfit", |_, this, outfit_id: u16| {
            tracing::debug!("Player:removeOutfit({})", outfit_id);
            Ok(true)
        });
        methods.add_method("removeOutfitAddon", |_, this, (outfit_id, addon): (u16, u8)| {
            tracing::debug!("Player:removeOutfitAddon({}, {})", outfit_id, addon);
            Ok(true)
        });
        methods.add_method("hasOutfit", |_, this, (outfit_id, addon): (u16, Option<u8>)| {
            tracing::debug!("Player:hasOutfit({}, {:?})", outfit_id, addon);
            Ok(false)
        });
        methods.add_method("sendOutfitWindow", |_, this, ()| {
            tracing::debug!("Player:sendOutfitWindow()");
            Ok(())
        });

        // Mounts
        methods.add_method("addMount", |_, this, mount_id: u16| {
            tracing::debug!("Player:addMount({})", mount_id);
            Ok(true)
        });
        methods.add_method("removeMount", |_, this, mount_id: u16| {
            tracing::debug!("Player:removeMount({})", mount_id);
            Ok(true)
        });
        methods.add_method("hasMount", |_, this, mount_id: u16| {
            tracing::debug!("Player:hasMount({})", mount_id);
            Ok(false)
        });

        // Premium
        methods.add_method("getPremiumDays", |_, this, ()| Ok(this.premium_days));
        methods.add_method("addPremiumDays", |_, this, days: u16| {
            tracing::debug!("Player:addPremiumDays({})", days);
            Ok(true)
        });
        methods.add_method("removePremiumDays", |_, this, days: u16| {
            tracing::debug!("Player:removePremiumDays({})", days);
            Ok(true)
        });

        // Blessings
        methods.add_method("hasBlessing", |_, this, blessing: u8| {
            tracing::debug!("Player:hasBlessing({})", blessing);
            Ok(false)
        });
        methods.add_method("addBlessing", |_, this, blessing: u8| {
            tracing::debug!("Player:addBlessing({})", blessing);
            Ok(true)
        });
        methods.add_method("removeBlessing", |_, this, blessing: u8| {
            tracing::debug!("Player:removeBlessing({})", blessing);
            Ok(true)
        });

        // Spells
        methods.add_method("canLearnSpell", |_, this, spell_name: String| {
            tracing::debug!("Player:canLearnSpell({})", spell_name);
            Ok(true)
        });
        methods.add_method("learnSpell", |_, this, spell_name: String| {
            tracing::debug!("Player:learnSpell({})", spell_name);
            Ok(true)
        });
        methods.add_method("forgetSpell", |_, this, spell_name: String| {
            tracing::debug!("Player:forgetSpell({})", spell_name);
            Ok(true)
        });
        methods.add_method("hasLearnedSpell", |_, this, spell_name: String| {
            tracing::debug!("Player:hasLearnedSpell({})", spell_name);
            Ok(false)
        });

        // Tutorial
        methods.add_method("sendTutorial", |_, this, tutorial_id: u8| {
            tracing::debug!("Player:sendTutorial({})", tutorial_id);
            Ok(true)
        });
        methods.add_method("addMapMark", |_, this, (pos, mark_type, description): (LuaPosition, u8, Option<String>)| {
            tracing::debug!("Player:addMapMark({:?}, {})", pos.0, mark_type);
            Ok(true)
        });

        // Save
        methods.add_method("save", |_, this, ()| {
            tracing::debug!("Player:save()");
            Ok(true)
        });

        // Misc
        methods.add_method("popupFYI", |_, this, message: String| {
            tracing::debug!("Player:popupFYI({})", message);
            Ok(())
        });
        methods.add_method("isPzLocked", |_, this, ()| Ok(false));

        // Client
        methods.add_method("getClient", |lua, this, ()| {
            let client = lua.create_table()?;
            client.set("os", 0u8)?;
            client.set("version", 1100u32)?;
            Ok(client)
        });

        // House
        methods.add_method("getHouse", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });

        // Ghost mode
        methods.add_method("setGhostMode", |_, this, ghost: bool| {
            tracing::debug!("Player:setGhostMode({})", ghost);
            Ok(true)
        });

        // Containers
        methods.add_method("getContainerId", |_, this, container: Value| {
            tracing::debug!("Player:getContainerId()");
            Ok(0u8)
        });
        methods.add_method("getContainerById", |_, this, id: u8| -> LuaResult<Value> {
            tracing::debug!("Player:getContainerById({})", id);
            Ok(Value::Nil)
        });
        methods.add_method("getContainerIndex", |_, this, id: u8| {
            tracing::debug!("Player:getContainerIndex({})", id);
            Ok(0u16)
        });

        // Live cast
        methods.add_method("startLiveCast", |_, this, password: Option<String>| {
            tracing::debug!("Player:startLiveCast({:?})", password);
            Ok(true)
        });
        methods.add_method("stopLiveCast", |_, this, ()| {
            tracing::debug!("Player:stopLiveCast()");
            Ok(true)
        });
        methods.add_method("isLiveCaster", |_, this, ()| Ok(false));
        methods.add_method("getSpectators", |lua, this, ()| {
            Ok(lua.create_table()?)
        });

        // Secure mode
        methods.add_method("hasSecureMode", |_, this, ()| Ok(true));

        // Depot/Inbox
        methods.add_method("getDepotChest", |_, this, (depot_id, auto_create): (u8, Option<bool>)| -> LuaResult<Value> {
            tracing::debug!("Player:getDepotChest({}, {:?})", depot_id, auto_create);
            Ok(Value::Nil)
        });
        methods.add_method("getInbox", |_, this, ()| -> LuaResult<Value> {
            tracing::debug!("Player:getInbox()");
            Ok(Value::Nil)
        });

        // Kills
        methods.add_method("getKills", |_, this, ()| {
            Ok(0u32)
        });
        methods.add_method("setKills", |_, this, kills: u32| {
            tracing::debug!("Player:setKills({})", kills);
            Ok(())
        });

        // Skull time
        methods.add_method("getSkullTime", |_, this, ()| Ok(0i64));
        methods.add_method("setSkullTime", |_, this, time: i64| {
            tracing::debug!("Player:setSkullTime({})", time);
            Ok(())
        });

        // Death penalty
        methods.add_method("getDeathPenalty", |_, this, ()| {
            Ok(10.0f64) // 10% base
        });

        // Reward
        methods.add_method("getReward", |_, this, (reward_id, auto_create): (u32, Option<bool>)| -> LuaResult<Value> {
            tracing::debug!("Player:getReward({}, {:?})", reward_id, auto_create);
            Ok(Value::Nil)
        });
        methods.add_method("removeReward", |_, this, reward_id: u32| {
            tracing::debug!("Player:removeReward({})", reward_id);
            Ok(true)
        });
        methods.add_method("getRewardList", |lua, this, ()| {
            Ok(lua.create_table()?)
        });

        // Base stats
        methods.add_method("getBaseMaxHealth", |_, this, ()| Ok(this.creature.max_health));
        methods.add_method("getBaseMaxMana", |_, this, ()| Ok(this.creature.max_mana));
    }
}

/// Register the Player class.
pub fn register(lua: &Lua) -> LuaResult<()> {
    let player_ctor = lua.create_function(|_, id_or_name: Value| {
        match id_or_name {
            Value::Integer(id) => Ok(LuaPlayer::new(id as u32)),
            Value::String(name) => {
                tracing::debug!("Player lookup by name: {}", name.to_str()?);
                Ok(LuaPlayer::new(0))
            }
            _ => Ok(LuaPlayer::new(0)),
        }
    })?;
    
    create_extensible_class(lua, "Player", player_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::userdata::position;

    #[test]
    fn test_player_basic() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        lua.load(r#"
            local p = Player(12345)
            assert(p:getId() == 12345)
            assert(p:isPlayer() == true)
            assert(p:isCreature() == true)
            assert(p:isMonster() == false)
        "#).exec().unwrap();
    }

    #[test]
    fn test_player_stats() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        let level: u32 = lua.load(r#"
            local p = Player(1)
            return p:getLevel()
        "#).eval().unwrap();
        
        assert_eq!(level, 1);
    }

    #[test]
    fn test_player_storage() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        lua.load(r#"
            local p = Player(1)
            p:setStorageValue(1000, 42)
            -- Note: stub returns -1 always, real impl would return 42
        "#).exec().unwrap();
    }
}
