//! Game enums matching the C++ definitions from enums.h and const.h

use bitflags::bitflags;
use serde::{Deserialize, Serialize};

// ============================================================================
// Creature Types
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum CreatureType {
    #[default]
    Player = 0,
    Monster = 1,
    Npc = 2,
    SummonOwn = 3,
    SummonOthers = 4,
}

// ============================================================================
// Direction
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum Direction {
    #[default]
    North = 0,
    East = 1,
    South = 2,
    West = 3,
    SouthWest = 4,
    SouthEast = 5,
    NorthWest = 6,
    NorthEast = 7,
}

// ============================================================================
// Account Types
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum AccountType {
    #[default]
    Normal = 1,
    Tutor = 2,
    SeniorTutor = 3,
    Gamemaster = 4,
    God = 5,
}

// ============================================================================
// Player Sex
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum PlayerSex {
    #[default]
    Female = 0,
    Male = 1,
}

// ============================================================================
// Skills
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
#[repr(u8)]
pub enum Skill {
    Fist = 0,
    Club = 1,
    Sword = 2,
    Axe = 3,
    Distance = 4,
    Shield = 5,
    Fishing = 6,
    CriticalHitChance = 7,
    CriticalHitDamage = 8,
    LifeLeechChance = 9,
    LifeLeechAmount = 10,
    ManaLeechChance = 11,
    ManaLeechAmount = 12,
    MagicLevel = 13,
    Level = 14,
}

// ============================================================================
// Skull Types
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum Skull {
    #[default]
    None = 0,
    Yellow = 1,
    Green = 2,
    White = 3,
    Red = 4,
    Black = 5,
    Orange = 6,
}

// ============================================================================
// Combat Types (bitflags)
// ============================================================================

bitflags! {
    #[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
    pub struct CombatType: u16 {
        const NONE = 0;
        const PHYSICAL = 1 << 0;
        const ENERGY = 1 << 1;
        const EARTH = 1 << 2;
        const FIRE = 1 << 3;
        const UNDEFINED = 1 << 4;
        const LIFE_DRAIN = 1 << 5;
        const MANA_DRAIN = 1 << 6;
        const HEALING = 1 << 7;
        const DROWN = 1 << 8;
        const ICE = 1 << 9;
        const HOLY = 1 << 10;
        const DEATH = 1 << 11;
    }
}

// ============================================================================
// Condition Types (bitflags)
// ============================================================================

bitflags! {
    #[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
    pub struct ConditionType: u32 {
        const NONE = 0;
        const POISON = 1 << 0;
        const FIRE = 1 << 1;
        const ENERGY = 1 << 2;
        const BLEEDING = 1 << 3;
        const HASTE = 1 << 4;
        const PARALYZE = 1 << 5;
        const OUTFIT = 1 << 6;
        const INVISIBLE = 1 << 7;
        const LIGHT = 1 << 8;
        const MANA_SHIELD = 1 << 9;
        const INFIGHT = 1 << 10;
        const DRUNK = 1 << 11;
        const EXHAUST_WEAPON = 1 << 12;
        const REGENERATION = 1 << 13;
        const SOUL = 1 << 14;
        const DROWN = 1 << 15;
        const MUTED = 1 << 16;
        const CHANNEL_MUTED = 1 << 17;
        const YELL_TICKS = 1 << 18;
        const ATTRIBUTES = 1 << 19;
        const FREEZING = 1 << 20;
        const DAZZLED = 1 << 21;
        const CURSED = 1 << 22;
        const EXHAUST_COMBAT = 1 << 23;
        const EXHAUST_HEAL = 1 << 24;
        const PACIFIED = 1 << 25;
        const SPELL_COOLDOWN = 1 << 26;
        const SPELL_GROUP_COOLDOWN = 1 << 27;
    }
}

// ============================================================================
// Race Types
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum RaceType {
    #[default]
    None = 0,
    Venom = 1,
    Blood = 2,
    Undead = 3,
    Fire = 4,
    Energy = 5,
}

// ============================================================================
// Weapon Types
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum WeaponType {
    #[default]
    None = 0,
    Sword = 1,
    Club = 2,
    Axe = 3,
    Shield = 4,
    Distance = 5,
    Wand = 6,
    Ammo = 7,
    Quiver = 8,
}

// ============================================================================
// Speak Types (Talk Types)
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum TalkType {
    #[default]
    Say = 1,
    Whisper = 2,
    Yell = 3,
    PrivateFrom = 4,
    PrivateTo = 5,
    ChannelYellow = 7,
    ChannelOrange = 8,
    PrivateNp = 10,
    PrivatePn = 12,
    Broadcast = 13,
    ChannelRed = 14,
    PrivateRedFrom = 15,
    PrivateRedTo = 16,
    MonsterSay = 36,
    MonsterYell = 37,
}

// ============================================================================
// Message Types
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum MessageType {
    #[default]
    StatusDefault = 17,
    StatusWarning = 18,
    EventAdvance = 19,
    StatusSmall = 21,
    InfoDescription = 22,
    DamageDealt = 23,
    DamageReceived = 24,
    Healed = 25,
    Experience = 26,
    DamageOthers = 27,
    HealedOthers = 28,
    ExperienceOthers = 29,
    EventDefault = 30,
    Loot = 31,
    EventOrange = 36,
    StatusConsoleOrange = 37,
    StatusConsoleBlue = 4,
    StatusConsoleRed = 13,
}

// ============================================================================
// Magic Effects
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum MagicEffect {
    #[default]
    None = 0,
    DrawBlood = 1,
    LoseEnergy = 2,
    Poff = 3,
    BlockHit = 4,
    ExplosionArea = 5,
    ExplosionHit = 6,
    FireArea = 7,
    YellowRings = 8,
    GreenRings = 9,
    HitArea = 10,
    Teleport = 11,
    EnergyHit = 12,
    MagicBlue = 13,
    MagicRed = 14,
    MagicGreen = 15,
    HitByFire = 16,
    HitByPoison = 17,
    MortArea = 18,
    SoundGreen = 19,
    SoundRed = 20,
    PoisonArea = 21,
    SoundYellow = 22,
    SoundPurple = 23,
    SoundBlue = 24,
    SoundWhite = 25,
    Bubbles = 26,
    Craps = 27,
    GiftWraps = 28,
    FireworkYellow = 29,
    FireworkRed = 30,
    FireworkBlue = 31,
    Stun = 32,
    Sleep = 33,
    WaterCreature = 34,
    GroundShaker = 35,
    Hearts = 36,
    FireAttack = 37,
    EnergyArea = 38,
    SmallClouds = 39,
    HolyDamage = 40,
    BigClouds = 41,
    IceArea = 42,
    IceTornado = 43,
    IceAttack = 44,
    Stones = 45,
    SmallPlants = 46,
    Carniphila = 47,
    PurpleEnergy = 48,
    YellowEnergy = 49,
    HolyArea = 50,
    BigPlants = 51,
    Cake = 52,
    GiantIce = 53,
    WaterSplash = 54,
    PlantAttack = 55,
    TutorialArrow = 56,
    TutorialSquare = 57,
}

// ============================================================================
// Shoot Types (Projectiles)
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum ShootType {
    #[default]
    None = 0,
    Spear = 1,
    Bolt = 2,
    Arrow = 3,
    Fire = 4,
    Energy = 5,
    PoisonArrow = 6,
    BurstArrow = 7,
    ThrowingStar = 8,
    ThrowingKnife = 9,
    SmallStone = 10,
    Death = 11,
    LargeRock = 12,
    Snowball = 13,
    PowerBolt = 14,
    Poison = 15,
    InfernalBolt = 16,
    HuntingSpear = 17,
    EnchantedSpear = 18,
    RedStar = 19,
    GreenStar = 20,
    RoyalSpear = 21,
    SniperArrow = 22,
    OnyxArrow = 23,
    PiercingBolt = 24,
    WhirlwindSword = 25,
    WhirlwindAxe = 26,
    WhirlwindClub = 27,
    EtherealSpear = 28,
    Ice = 29,
    Earth = 30,
    Holy = 31,
    SuddenDeath = 32,
}

// ============================================================================
// Game State
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum GameState {
    #[default]
    Startup = 0,
    Init = 1,
    Normal = 2,
    Closed = 3,
    Shutdown = 4,
    Closing = 5,
    Maintain = 6,
}

// ============================================================================
// World Type
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum WorldType {
    #[default]
    PvP = 0,
    NoPvP = 1,
    PvPEnforced = 2,
}

// ============================================================================
// Spell Types
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum SpellType {
    #[default]
    Undefined = 0,
    Instant = 1,
    Rune = 2,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum SpellGroup {
    #[default]
    None = 0,
    Attack = 1,
    Healing = 2,
    Support = 3,
    Special = 4,
}

// ============================================================================
// Return Values
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum ReturnValue {
    #[default]
    NoError = 0,
    NotPossible = 1,
    NotEnoughRoom = 2,
    PlayerIsPzLocked = 3,
    PlayerIsNotInvited = 4,
    CannotThrow = 5,
    ThereIsNoWay = 6,
    DestinationOutOfReach = 7,
    CreatureBlock = 8,
    NotMoveable = 9,
    DropTwoHandedItem = 10,
    BothHandsNeedToBeFree = 11,
    CanOnlyUseOneWeapon = 12,
    NeedExchange = 13,
    CannotBeDressed = 14,
    PutThisObjectInYourHand = 15,
    PutThisObjectInBothHands = 16,
    TooFarAway = 17,
    FirstGoDownstairs = 18,
    FirstGoUpstairs = 19,
    ContainerNotEnoughRoom = 20,
    NotEnoughCapacity = 21,
    CannotPickup = 22,
    ThisIsImpossible = 23,
    DepotIsFull = 24,
    CreatureDoesNotExist = 25,
    CannotUseThisObject = 26,
    PlayerWithThisNameIsNotOnline = 27,
    NotRequiredLevelToUseRune = 28,
    YouAreAlreadyTrading = 29,
    ThisPlayerIsAlreadyTrading = 30,
    YouMayNotLogoutDuringAFight = 31,
    DirectPlayerShoot = 32,
    NotEnoughLevel = 33,
    NotEnoughMagicLevel = 34,
    NotEnoughMana = 35,
    NotEnoughSoul = 36,
    YouAreExhausted = 37,
    PlayerIsNotReachable = 38,
    CanOnlyUseThisRuneOnCreatures = 39,
    ActionNotPermittedInProtectionZone = 40,
    YouMayNotAttackThisPlayer = 41,
    YouMayNotAttackAPersonInProtectionZone = 42,
    YouMayNotAttackAPersonWhileInProtectionZone = 43,
    YouMayNotAttackThisCreature = 44,
    YouCanOnlyUseItOnCreatures = 45,
    CreatureIsNotReachable = 46,
    TurnSecureModeToAttackUnmarkedPlayers = 47,
    YouNeedPremiumAccount = 48,
    YouNeedToLearnThisSpell = 49,
    YourVocationCannotUseThisSpell = 50,
    YouNeedAWeaponToUseThisSpell = 51,
    PlayerIsPzLockedLeavePvpZone = 52,
    PlayerIsPzLockedEnterPvpZone = 53,
    ActionNotPermittedInAnoPvpZone = 54,
    YouCannotLogoutHere = 55,
    YouNeedAMagicItemToCastSpell = 56,
    CannotConjureItemHere = 57,
    YouNeedToSplitYourSpears = 58,
    NameIsTooAmbiguous = 59,
    CanOnlyUseOneShield = 60,
    NoPartyMembersInRange = 61,
    YouAreNotTheOwner = 62,
}

// ============================================================================
// Combat Origin
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum CombatOrigin {
    #[default]
    None = 0,
    Condition = 1,
    Spell = 2,
    Melee = 3,
    Ranged = 4,
}

// ============================================================================
// Item Slots
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
#[repr(u8)]
pub enum Slot {
    Head = 1,
    Necklace = 2,
    Backpack = 3,
    Armor = 4,
    Right = 5,
    Left = 6,
    Legs = 7,
    Feet = 8,
    Ring = 9,
    Ammo = 10,
}

// ============================================================================
// Player Flags (bitflags)
// ============================================================================

bitflags! {
    #[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
    pub struct PlayerFlags: u64 {
        const CANNOT_USE_COMBAT = 1 << 0;
        const CANNOT_ATTACK_PLAYER = 1 << 1;
        const CANNOT_ATTACK_MONSTER = 1 << 2;
        const CANNOT_BE_ATTACKED = 1 << 3;
        const CAN_CONVINCE_ALL = 1 << 4;
        const CAN_SUMMON_ALL = 1 << 5;
        const CAN_ILLUSION_ALL = 1 << 6;
        const CAN_SENSE_INVISIBILITY = 1 << 7;
        const IGNORED_BY_MONSTERS = 1 << 8;
        const NOT_GAIN_IN_FIGHT = 1 << 9;
        const HAS_INFINITE_MANA = 1 << 10;
        const HAS_INFINITE_SOUL = 1 << 11;
        const HAS_NO_EXHAUSTION = 1 << 12;
        const CANNOT_USE_SPELLS = 1 << 13;
        const CANNOT_PICKUP_ITEM = 1 << 14;
        const CAN_ALWAYS_LOGIN = 1 << 15;
        const CAN_BROADCAST = 1 << 16;
        const CAN_EDIT_HOUSES = 1 << 17;
        const CANNOT_BE_BANNED = 1 << 18;
        const CANNOT_BE_PUSHED = 1 << 19;
        const HAS_INFINITE_CAPACITY = 1 << 20;
        const CAN_PUSH_ALL_CREATURES = 1 << 21;
        const CAN_TALK_RED_PRIVATE = 1 << 22;
        const CAN_TALK_RED_CHANNEL = 1 << 23;
        const TALK_ORANGE_HELP_CHANNEL = 1 << 24;
        const NOT_GAIN_EXPERIENCE = 1 << 25;
        const NOT_GAIN_MANA = 1 << 26;
        const NOT_GAIN_HEALTH = 1 << 27;
        const NOT_GAIN_SKILL = 1 << 28;
        const SET_MAX_SPEED = 1 << 29;
        const SPECIAL_VIP = 1 << 30;
        const NOT_GENERATE_LOOT = 1 << 31;
        const CAN_TALK_RED_CHANNEL_ANONYMOUS = 1 << 32;
        const IGNORE_PROTECTION_ZONE = 1 << 33;
        const IGNORE_SPELL_CHECK = 1 << 34;
        const IGNORE_WEAPON_CHECK = 1 << 35;
        const CANNOT_BE_MUTED = 1 << 36;
        const IS_ALWAYS_PREMIUM = 1 << 37;
    }
}

// ============================================================================
// Item Attributes (bitflags)
// ============================================================================

bitflags! {
    #[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
    pub struct ItemAttribute: u32 {
        const NONE = 0;
        const ACTION_ID = 1 << 0;
        const UNIQUE_ID = 1 << 1;
        const DESCRIPTION = 1 << 2;
        const TEXT = 1 << 3;
        const DATE = 1 << 4;
        const WRITER = 1 << 5;
        const NAME = 1 << 6;
        const ARTICLE = 1 << 7;
        const PLURAL_NAME = 1 << 8;
        const WEIGHT = 1 << 9;
        const ATTACK = 1 << 10;
        const DEFENSE = 1 << 11;
        const EXTRA_DEFENSE = 1 << 12;
        const ARMOR = 1 << 13;
        const HIT_CHANCE = 1 << 14;
        const SHOOT_RANGE = 1 << 15;
        const OWNER = 1 << 16;
        const DURATION = 1 << 17;
        const DECAY_STATE = 1 << 18;
        const CORPSE_OWNER = 1 << 19;
        const CHARGES = 1 << 20;
        const FLUID_TYPE = 1 << 21;
        const DOOR_ID = 1 << 22;
    }
}

// ============================================================================
// Condition Parameters
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
#[repr(u8)]
pub enum ConditionParam {
    Owner = 1,
    Ticks = 2,
    HealthGain = 4,
    HealthTicks = 5,
    ManaGain = 6,
    ManaTicks = 7,
    Delayed = 8,
    Speed = 9,
    LightLevel = 10,
    LightColor = 11,
    SoulGain = 12,
    SoulTicks = 13,
    MinValue = 14,
    MaxValue = 15,
    StartValue = 16,
    TickInterval = 17,
    ForceUpdate = 18,
    SkillMelee = 19,
    SkillFist = 20,
    SkillClub = 21,
    SkillSword = 22,
    SkillAxe = 23,
    SkillDistance = 24,
    SkillShield = 25,
    SkillFishing = 26,
    StatMaxHitpoints = 27,
    StatMaxManapoints = 28,
    StatMagicpoints = 30,
    StatMaxHitpointsPercent = 31,
    StatMaxManapointsPercent = 32,
    StatMagicpointsPercent = 34,
    PeriodicDamage = 35,
    SkillMeleePercent = 36,
    SkillFistPercent = 37,
    SkillClubPercent = 38,
    SkillSwordPercent = 39,
    SkillAxePercent = 40,
    SkillDistancePercent = 41,
    SkillShieldPercent = 42,
    SkillFishingPercent = 43,
    BuffSpell = 44,
    SubId = 45,
    Field = 46,
}

// ============================================================================
// Combat Parameters
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
#[repr(u8)]
pub enum CombatParam {
    Type = 0,
    Effect = 1,
    DistanceEffect = 2,
    BlockShield = 3,
    BlockArmor = 4,
    TargetCasterOrTopmost = 5,
    CreateItem = 6,
    Aggressive = 7,
    Dispel = 8,
    UseCharges = 9,
}

// ============================================================================
// Speech Bubble
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum SpeechBubble {
    #[default]
    None = 0,
    Normal = 1,
    Trade = 2,
    Quest = 3,
    QuestTrader = 4,
}

// ============================================================================
// Map Mark
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
#[repr(u8)]
pub enum MapMark {
    #[default]
    Tick = 0,
    Question = 1,
    Exclamation = 2,
    Star = 3,
    Cross = 4,
    Temple = 5,
    Kiss = 6,
    Shovel = 7,
    Sword = 8,
    Flag = 9,
    Lock = 10,
    Bag = 11,
    Skull = 12,
    Dollar = 13,
    RedNorth = 14,
    RedSouth = 15,
    RedEast = 16,
    RedWest = 17,
    GreenNorth = 18,
    GreenSouth = 19,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_combat_type_flags() {
        let damage = CombatType::PHYSICAL | CombatType::FIRE;
        assert!(damage.contains(CombatType::PHYSICAL));
        assert!(damage.contains(CombatType::FIRE));
        assert!(!damage.contains(CombatType::ICE));
    }

    #[test]
    fn test_condition_type_flags() {
        let conditions = ConditionType::POISON | ConditionType::HASTE;
        assert!(conditions.contains(ConditionType::POISON));
        assert!(conditions.contains(ConditionType::HASTE));
        assert!(!conditions.contains(ConditionType::FIRE));
    }

    #[test]
    fn test_player_flags() {
        let flags = PlayerFlags::CAN_BROADCAST | PlayerFlags::IS_ALWAYS_PREMIUM;
        assert!(flags.contains(PlayerFlags::CAN_BROADCAST));
        assert!(flags.contains(PlayerFlags::IS_ALWAYS_PREMIUM));
        assert!(!flags.contains(PlayerFlags::CAN_EDIT_HOUSES));
    }

    #[test]
    fn test_enum_repr() {
        assert_eq!(CreatureType::Player as u8, 0);
        assert_eq!(CreatureType::Monster as u8, 1);
        assert_eq!(Skull::Red as u8, 4);
        assert_eq!(Direction::South as u8, 2);
    }
}
