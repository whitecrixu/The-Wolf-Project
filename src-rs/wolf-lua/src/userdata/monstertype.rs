//! MonsterType userdata for Lua.

use std::cell::RefCell;
use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};

use crate::bridge::{MonsterData, notify_monster_registered};
use crate::class_registry::create_extensible_class;

/// Inner mutable state for MonsterType
#[derive(Debug, Clone, Default)]
pub struct MonsterTypeInner {
    pub name: String,
    pub name_description: String,
    pub health: i32,
    pub max_health: i32,
    pub experience: u64,
    pub speed: u32,
    pub race: u8,
    pub skull: u8,
    pub corpse_id: u16,
    pub mana_cost: u32,
    pub base_speed: u32,
    pub light_level: u8,
    pub light_color: u8,
    pub static_attack_chance: u32,
    pub max_summons: u32,
    pub target_distance: i32,
    pub run_away_health: i32,
    pub defense: i32,
    pub armor: i32,
    pub yell_chance: u32,
    pub yell_speed_ticks: u32,
    pub change_target_chance: i32,
    pub change_target_speed: u32,
    // Flags
    pub is_summonable: bool,
    pub is_illusionable: bool,
    pub is_convinceable: bool,
    pub is_attackable: bool,
    pub is_hostile: bool,
    pub is_pushable: bool,
    pub can_push_items: bool,
    pub can_push_creatures: bool,
    pub hidden_health: bool,
    pub is_blockable: bool,
    pub is_passive: bool,
    pub is_reward_boss: bool,
    // Outfit
    pub look_type: u16,
    pub look_type_ex: u16,
    pub look_head: u8,
    pub look_body: u8,
    pub look_legs: u8,
    pub look_feet: u8,
    pub look_addons: u8,
    pub look_mount: u16,
}

impl MonsterTypeInner {
    pub fn to_bridge_data(&self) -> MonsterData {
        MonsterData {
            name: self.name.clone(),
            name_description: self.name_description.clone(),
            health: self.health,
            max_health: self.max_health,
            experience: self.experience,
            speed: self.speed,
            race: self.race,
            skull: self.skull,
            corpse_id: self.corpse_id,
            mana_cost: self.mana_cost,
            base_speed: self.base_speed,
            light_level: self.light_level,
            light_color: self.light_color,
            static_attack_chance: self.static_attack_chance,
            max_summons: self.max_summons,
            target_distance: self.target_distance,
            run_away_health: self.run_away_health,
            defense: self.defense,
            armor: self.armor,
            yell_chance: self.yell_chance,
            yell_speed_ticks: self.yell_speed_ticks,
            change_target_chance: self.change_target_chance,
            change_target_speed: self.change_target_speed,
            is_summonable: self.is_summonable,
            is_illusionable: self.is_illusionable,
            is_convinceable: self.is_convinceable,
            is_attackable: self.is_attackable,
            is_hostile: self.is_hostile,
            is_pushable: self.is_pushable,
            can_push_items: self.can_push_items,
            can_push_creatures: self.can_push_creatures,
            hidden_health: self.hidden_health,
            is_blockable: self.is_blockable,
            is_passive: self.is_passive,
            is_reward_boss: self.is_reward_boss,
            look_type: self.look_type,
            look_type_ex: self.look_type_ex,
            look_head: self.look_head,
            look_body: self.look_body,
            look_legs: self.look_legs,
            look_feet: self.look_feet,
            look_addons: self.look_addons,
            look_mount: self.look_mount,
        }
    }
}

/// Wrapper with interior mutability for Lua chainable API
#[derive(Debug, Clone)]
pub struct LuaMonsterType {
    inner: RefCell<MonsterTypeInner>,
}

impl Default for LuaMonsterType {
    fn default() -> Self {
        Self {
            inner: RefCell::new(MonsterTypeInner::default()),
        }
    }
}

impl LuaMonsterType {
    pub fn new(name: String) -> Self {
        let mut inner = MonsterTypeInner::default();
        inner.name = name.clone();
        inner.name_description = format!("a {}", name);
        inner.health = 100;
        inner.max_health = 100;
        inner.base_speed = 200;
        inner.speed = 200;
        inner.is_attackable = true;
        inner.is_hostile = true;
        inner.is_pushable = true;
        inner.static_attack_chance = 95;
        inner.target_distance = 1;
        Self {
            inner: RefCell::new(inner),
        }
    }
}

fn parse_race(race: &str) -> u8 {
    match race.to_lowercase().as_str() {
        "blood" => 0,
        "venom" => 1,
        "undead" => 2,
        "fire" => 3,
        "energy" => 4,
        _ => 0,
    }
}

impl UserData for LuaMonsterType {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        // Getters - read from inner
        methods.add_method("isAttackable", |_, this, ()| Ok(this.inner.borrow().is_attackable));
        methods.add_method("isConvinceable", |_, this, ()| Ok(this.inner.borrow().is_convinceable));
        methods.add_method("isSummonable", |_, this, ()| Ok(this.inner.borrow().is_summonable));
        methods.add_method("isIllusionable", |_, this, ()| Ok(this.inner.borrow().is_illusionable));
        methods.add_method("isHostile", |_, this, ()| Ok(this.inner.borrow().is_hostile));
        methods.add_method("isPushable", |_, this, ()| Ok(this.inner.borrow().is_pushable));
        methods.add_method("isHealthShown", |_, this, ()| Ok(!this.inner.borrow().hidden_health));
        methods.add_method("isRewardBoss", |_, this, ()| Ok(this.inner.borrow().is_reward_boss));
        methods.add_method("canPushItems", |_, this, ()| Ok(this.inner.borrow().can_push_items));
        methods.add_method("canPushCreatures", |_, this, ()| Ok(this.inner.borrow().can_push_creatures));
        methods.add_method("getName", |_, this, ()| Ok(this.inner.borrow().name.clone()));
        methods.add_method("getNameDescription", |_, this, ()| Ok(this.inner.borrow().name_description.clone()));
        methods.add_method("getHealth", |_, this, ()| Ok(this.inner.borrow().health));
        methods.add_method("getMaxHealth", |_, this, ()| Ok(this.inner.borrow().max_health));
        methods.add_method("getRunHealth", |_, this, ()| Ok(this.inner.borrow().run_away_health));
        methods.add_method("getExperience", |_, this, ()| Ok(this.inner.borrow().experience));
        methods.add_method("getCombatImmunities", |_, _, ()| Ok(0u32));
        methods.add_method("getConditionImmunities", |_, _, ()| Ok(0u32));
        methods.add_method("getAttackList", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getDefenseList", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getElementList", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getVoices", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getLoot", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getCreatureEvents", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getSummonList", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getMaxSummons", |_, this, ()| Ok(this.inner.borrow().max_summons));
        methods.add_method("getArmor", |_, this, ()| Ok(this.inner.borrow().armor));
        methods.add_method("getDefense", |_, this, ()| Ok(this.inner.borrow().defense));
        methods.add_method("getOutfit", |lua, this, ()| {
            let inner = this.inner.borrow();
            let t = lua.create_table()?;
            t.set("lookType", inner.look_type)?;
            t.set("lookTypeEx", inner.look_type_ex)?;
            t.set("lookHead", inner.look_head)?;
            t.set("lookBody", inner.look_body)?;
            t.set("lookLegs", inner.look_legs)?;
            t.set("lookFeet", inner.look_feet)?;
            t.set("lookAddons", inner.look_addons)?;
            t.set("lookMount", inner.look_mount)?;
            Ok(t)
        });
        methods.add_method("getRace", |_, this, ()| Ok(this.inner.borrow().race));
        methods.add_method("getCorpseId", |_, this, ()| Ok(this.inner.borrow().corpse_id));
        methods.add_method("getManaCost", |_, this, ()| Ok(this.inner.borrow().mana_cost));
        methods.add_method("getBaseSpeed", |_, this, ()| Ok(this.inner.borrow().base_speed));
        methods.add_method("getLight", |lua, this, ()| {
            let inner = this.inner.borrow();
            let t = lua.create_table()?;
            t.set("level", inner.light_level)?;
            t.set("color", inner.light_color)?;
            Ok(t)
        });
        methods.add_method("getStaticAttackChance", |_, this, ()| Ok(this.inner.borrow().static_attack_chance));
        methods.add_method("getTargetDistance", |_, this, ()| Ok(this.inner.borrow().target_distance));
        methods.add_method("getYellChance", |_, this, ()| Ok(this.inner.borrow().yell_chance));
        methods.add_method("getYellSpeedTicks", |_, this, ()| Ok(this.inner.borrow().yell_speed_ticks));
        methods.add_method("getChangeTargetChance", |_, this, ()| Ok(this.inner.borrow().change_target_chance));
        methods.add_method("getChangeTargetSpeed", |_, this, ()| Ok(this.inner.borrow().change_target_speed));
        
        // Setters - modify inner and return self for chaining
        methods.add_method("name", |_, this, name: String| {
            this.inner.borrow_mut().name = name;
            Ok(this.clone())
        });
        methods.add_method("nameDescription", |_, this, desc: String| {
            this.inner.borrow_mut().name_description = desc;
            Ok(this.clone())
        });
        methods.add_method("health", |_, this, hp: i32| {
            this.inner.borrow_mut().health = hp;
            Ok(this.clone())
        });
        methods.add_method("maxHealth", |_, this, hp: i32| {
            this.inner.borrow_mut().max_health = hp;
            Ok(this.clone())
        });
        methods.add_method("experience", |_, this, exp: u64| {
            this.inner.borrow_mut().experience = exp;
            Ok(this.clone())
        });
        methods.add_method("speed", |_, this, speed: u32| {
            this.inner.borrow_mut().speed = speed;
            this.inner.borrow_mut().base_speed = speed;
            Ok(this.clone())
        });
        methods.add_method("outfit", |_, this, outfit: mlua::Table| {
            let mut inner = this.inner.borrow_mut();
            inner.look_type = outfit.get("lookType").unwrap_or(0);
            inner.look_type_ex = outfit.get("lookTypeEx").unwrap_or(0);
            inner.look_head = outfit.get("lookHead").unwrap_or(0);
            inner.look_body = outfit.get("lookBody").unwrap_or(0);
            inner.look_legs = outfit.get("lookLegs").unwrap_or(0);
            inner.look_feet = outfit.get("lookFeet").unwrap_or(0);
            inner.look_addons = outfit.get("lookAddons").unwrap_or(0);
            inner.look_mount = outfit.get("lookMount").unwrap_or(0);
            drop(inner);
            Ok(this.clone())
        });
        methods.add_method("race", |_, this, race: Value| {
            let race_val = match race {
                Value::Integer(n) => n as u8,
                Value::Number(n) => n as u8,
                Value::String(s) => parse_race(&s.to_string_lossy()),
                _ => 0,
            };
            this.inner.borrow_mut().race = race_val;
            Ok(this.clone())
        });
        methods.add_method("corpseId", |_, this, id: u16| {
            this.inner.borrow_mut().corpse_id = id;
            Ok(this.clone())
        });
        methods.add_method("manaCost", |_, this, mana: u32| {
            this.inner.borrow_mut().mana_cost = mana;
            Ok(this.clone())
        });
        methods.add_method("light", |_, this, (level, color): (u8, u8)| {
            let mut inner = this.inner.borrow_mut();
            inner.light_level = level;
            inner.light_color = color;
            drop(inner);
            Ok(this.clone())
        });
        methods.add_method("armor", |_, this, armor: i32| {
            this.inner.borrow_mut().armor = armor;
            Ok(this.clone())
        });
        methods.add_method("defense", |_, this, defense: i32| {
            this.inner.borrow_mut().defense = defense;
            Ok(this.clone())
        });
        methods.add_method("targetDistance", |_, this, dist: i32| {
            this.inner.borrow_mut().target_distance = dist;
            Ok(this.clone())
        });
        methods.add_method("staticAttackChance", |_, this, chance: u32| {
            this.inner.borrow_mut().static_attack_chance = chance;
            Ok(this.clone())
        });
        methods.add_method("maxSummons", |_, this, count: u32| {
            this.inner.borrow_mut().max_summons = count;
            Ok(this.clone())
        });
        methods.add_method("runHealth", |_, this, hp: i32| {
            this.inner.borrow_mut().run_away_health = hp;
            Ok(this.clone())
        });
        methods.add_method("changeTargetChance", |_, this, chance: i32| {
            this.inner.borrow_mut().change_target_chance = chance;
            Ok(this.clone())
        });
        methods.add_method("changeTargetSpeed", |_, this, speed: u32| {
            this.inner.borrow_mut().change_target_speed = speed;
            Ok(this.clone())
        });
        
        // Boolean setters
        methods.add_method("attackable", |_, this, v: bool| {
            this.inner.borrow_mut().is_attackable = v;
            Ok(this.clone())
        });
        methods.add_method("convinceable", |_, this, v: bool| {
            this.inner.borrow_mut().is_convinceable = v;
            Ok(this.clone())
        });
        methods.add_method("summonable", |_, this, v: bool| {
            this.inner.borrow_mut().is_summonable = v;
            Ok(this.clone())
        });
        methods.add_method("illusionable", |_, this, v: bool| {
            this.inner.borrow_mut().is_illusionable = v;
            Ok(this.clone())
        });
        methods.add_method("hostile", |_, this, v: bool| {
            this.inner.borrow_mut().is_hostile = v;
            Ok(this.clone())
        });
        methods.add_method("pushable", |_, this, v: bool| {
            this.inner.borrow_mut().is_pushable = v;
            Ok(this.clone())
        });
        methods.add_method("canPushItems", |_, this, v: bool| {
            this.inner.borrow_mut().can_push_items = v;
            Ok(this.clone())
        });
        methods.add_method("canPushCreatures", |_, this, v: bool| {
            this.inner.borrow_mut().can_push_creatures = v;
            Ok(this.clone())
        });
        methods.add_method("hiddenHealth", |_, this, v: bool| {
            this.inner.borrow_mut().hidden_health = v;
            Ok(this.clone())
        });
        methods.add_method("rewardBoss", |_, this, v: bool| {
            this.inner.borrow_mut().is_reward_boss = v;
            Ok(this.clone())
        });
        
        // Complex setters (tables) - ignored for now, TODO: implement
        methods.add_method("combatImmunities", |_, this, _immunities: mlua::Table| Ok(this.clone()));
        methods.add_method("conditionImmunities", |_, this, _immunities: mlua::Table| Ok(this.clone()));
        methods.add_method("immunities", |_, this, _immunities: mlua::Table| Ok(this.clone()));
        methods.add_method("elements", |_, this, _elements: mlua::Table| Ok(this.clone()));
        methods.add_method("voices", |_, this, _voices: mlua::Table| Ok(this.clone()));
        methods.add_method("loot", |_, this, _loot: mlua::Table| Ok(this.clone()));
        methods.add_method("summons", |_, this, _summons: mlua::Table| Ok(this.clone()));
        methods.add_method("attacks", |_, this, _attacks: mlua::Table| Ok(this.clone()));
        methods.add_method("defenses", |_, this, _defenses: mlua::Table| Ok(this.clone()));
        methods.add_method("events", |_, this, _events: mlua::Table| Ok(this.clone()));
        
        // Register - calls the C++ callback to register this monster type
        methods.add_method("register", |_, this, ()| {
            let inner = this.inner.borrow();
            let data = inner.to_bridge_data();
            notify_monster_registered(&data);
            Ok(true)
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let monstertype_ctor = lua.create_function(|_, name: String| {
        Ok(LuaMonsterType::new(name))
    })?;
    create_extensible_class(lua, "MonsterType", monstertype_ctor)?;
    Ok(())
}
