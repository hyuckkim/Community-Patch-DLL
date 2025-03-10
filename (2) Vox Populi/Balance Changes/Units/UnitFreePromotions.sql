-- Unit entries follow the historical order. UnitClass names are for reference only and may not reflect the actual UNITCLASS in the database.

DELETE FROM Unit_FreePromotions;
INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES

-- Settlers

('UNIT_PIONEER','PROMOTION_EXTRA_SIGHT_I'),
('UNIT_PIONEER','PROMOTION_DEFENSIVE_EMBARKATION'),

('UNIT_COLONIST','PROMOTION_EXTRA_SIGHT_I'),
('UNIT_COLONIST','PROMOTION_DEFENSIVE_EMBARKATION'),
('UNIT_COLONIST','PROMOTION_OCEAN_MOVEMENT'),

-- Worker&Workboat

('UNIT_WORKBOAT','PROMOTION_OCEAN_IMPASSABLE_UNTIL_ASTRONOMY'),
('UNIT_WORKBOAT','PROMOTION_SIGHT_PENALTY'),

/*
-- CSD
('UNIT_EMISSARY','PROMOTION_SIGHT_PENALTY'),
('UNIT_EMISSARY','PROMOTION_EMISSARY'),
('UNIT_ENVOY','PROMOTION_SIGHT_PENALTY'),
('UNIT_ENVOY','PROMOTION_ENVOY'),
('UNIT_DIPLOMAT','PROMOTION_SIGHT_PENALTY'),
('UNIT_DIPLOMAT','PROMOTION_DIPLOMAT'),
('UNIT_AMBASSADOR','PROMOTION_SIGHT_PENALTY'),
('UNIT_AMBASSADOR','PROMOTION_AMBASSADOR'),
('UNIT_GREAT_DIPLOMAT','PROMOTION_GREAT_DIPLOMAT'),
*/

-- Great People
('UNIT_MUSICIAN','PROMOTION_RIVAL_TERRITORY'),

('UNIT_PROPHET','PROMOTION_RIVAL_TERRITORY'),
('UNIT_PROPHET','PROMOTION_SIGHT_PENALTY'),

('UNIT_GREAT_ADMIRAL','PROMOTION_GREAT_ADMIRAL'),
('UNIT_GREAT_ADMIRAL','PROMOTION_SUPPLY_BOOST'),

('UNIT_GREAT_GENERAL','PROMOTION_GREAT_GENERAL'),
('UNIT_GREAT_GENERAL','PROMOTION_SUPPLY_BOOST'),

('UNIT_VENETIAN_MERCHANT','PROMOTION_TRADE_MISSION_BONUS'),

('UNIT_MONGOLIAN_KHAN','PROMOTION_MEDIC_GENERAL'),
('UNIT_MONGOLIAN_KHAN','PROMOTION_GREAT_GENERAL'),
('UNIT_MONGOLIAN_KHAN','PROMOTION_SUPPLY_BOOST'),

-- Other Civilians
('UNIT_CARAVAN','PROMOTION_SIGHT_PENALTY'),

('UNIT_CARGO_SHIP','PROMOTION_SIGHT_PENALTY'),

('UNIT_MISSIONARY','PROMOTION_RIVAL_TERRITORY'),
('UNIT_MISSIONARY','PROMOTION_SIGHT_PENALTY'),
('UNIT_MISSIONARY','PROMOTION_UNWELCOME_EVANGELIST'),

('UNIT_INQUISITOR','PROMOTION_EXTRA_SIGHT_I'),

('UNIT_SPAIN_INQUISITOR','PROMOTION_EXTRA_SIGHT_I'),

('UNIT_ASSYRIAN_SIEGE_TOWER','PROMOTION_SAPPER'),
('UNIT_ASSYRIAN_SIEGE_TOWER','PROMOTION_EXTRA_SIGHT_I'),
('UNIT_ASSYRIAN_SIEGE_TOWER','PROMOTION_MEDIC'),
('UNIT_ASSYRIAN_SIEGE_TOWER','PROMOTION_MEDIC_II'),

-- Spaceship

---------------------------
-- Combat Units

-- Melee Infantry
-- UNITCLASS_WARRIOR
('UNIT_WARRIOR','PROMOTION_BARBARIAN_BONUS'),

('UNIT_AZTEC_JAGUAR','PROMOTION_JAGUAR'),
('UNIT_AZTEC_JAGUAR','PROMOTION_WOODSMAN'),
('UNIT_AZTEC_JAGUAR','PROMOTION_PARTIAL_HEAL_IF_DESTROY_ENEMY'),
('UNIT_AZTEC_JAGUAR','PROMOTION_BARBARIAN_BONUS'),

('UNIT_BARBARIAN_WARRIOR','PROMOTION_BARBARIAN_BONUS'),

-- UNITCLASS_SPEARMAN
('UNIT_SPEARMAN','PROMOTION_FORMATION_1'),

('UNIT_GREEK_HOPLITE','PROMOTION_FORMATION_1'),
('UNIT_GREEK_HOPLITE','PROMOTION_ADJACENT_BONUS'),
('UNIT_GREEK_HOPLITE','PROMOTION_SPAWN_GENERALS_II'),

('UNIT_PERSIAN_IMMORTAL','PROMOTION_FORMATION_1'),
('UNIT_PERSIAN_IMMORTAL','PROMOTION_FASTER_HEAL'),
('UNIT_PERSIAN_IMMORTAL','PROMOTION_ARMOR_PLATING_1'),

('UNIT_CELT_PICTISH_WARRIOR','PROMOTION_SKI_INFANTRY'),
('UNIT_CELT_PICTISH_WARRIOR','PROMOTION_FREE_PILLAGE_MOVES'),

('UNIT_BARBARIAN_SPEARMAN','PROMOTION_FORMATION_1'),

-- UNITCLASS_PIKEMAN
('UNIT_PIKEMAN','PROMOTION_FORMATION_1'),

('UNIT_DANISH_BERSERKER','PROMOTION_FORMATION_1'),
('UNIT_DANISH_BERSERKER','PROMOTION_AMPHIBIOUS'),
('UNIT_DANISH_BERSERKER','PROMOTION_CHARGE'),

('UNIT_FCOMPANY','PROMOTION_FORMATION_1'),
('UNIT_FCOMPANY','PROMOTION_DOUBLE_PLUNDER'),
('UNIT_FCOMPANY','PROMOTION_FREE_PILLAGE_MOVES'),

-- UNITCLASS_SWORDSMAN
('UNIT_SWORDSMAN','PROMOTION_FIELD_WORKS_0'),

('UNIT_IROQUOIAN_MOHAWKWARRIOR','PROMOTION_FIELD_WORKS_0'),
('UNIT_IROQUOIAN_MOHAWKWARRIOR','PROMOTION_MOHAWK'),
('UNIT_IROQUOIAN_MOHAWKWARRIOR','PROMOTION_WOODSMAN'),

('UNIT_ROMAN_LEGION','PROMOTION_FIELD_WORKS_0'),
('UNIT_ROMAN_LEGION','PROMOTION_AOE_STRIKE_FORTIFY'),
('UNIT_ROMAN_LEGION','PROMOTION_COVER_1'),

('UNIT_KRIS_SWORDSMAN','PROMOTION_FIELD_WORKS_0'),
('UNIT_KRIS_SWORDSMAN','PROMOTION_MYSTIC_BLADE'),

-- UNITCLASS_LONGSWORDSMAN
('UNIT_LONGSWORDSMAN','PROMOTION_FIELD_WORKS_0'),

('UNIT_JAPANESE_SAMURAI','PROMOTION_FIELD_WORKS_0'),
('UNIT_JAPANESE_SAMURAI','PROMOTION_SPAWN_GENERALS_II'),
('UNIT_JAPANESE_SAMURAI','PROMOTION_GAIN_EXPERIENCE'),

('UNIT_POLYNESIAN_MAORI_WARRIOR','PROMOTION_FIELD_WORKS_0'),
('UNIT_POLYNESIAN_MAORI_WARRIOR','PROMOTION_HAKA_WAR_DANCE'),

-- Gun Infantry
-- UNITCLASS_TERCIO
('UNIT_SPANISH_TERCIO','PROMOTION_FIELD_WORKS_0'),
('UNIT_SPANISH_TERCIO','PROMOTION_FORMATION_1'),

('UNIT_ZULU_IMPI','PROMOTION_FIELD_WORKS_0'),
('UNIT_ZULU_IMPI','PROMOTION_KNOCKOUT_I'),
('UNIT_ZULU_IMPI','PROMOTION_RANGED_SUPPORT_FIRE'),
('UNIT_ZULU_IMPI','PROMOTION_FORMATION_1'),

('UNIT_FRENCH_MUSKETEER','PROMOTION_FIELD_WORKS_0'),
('UNIT_FRENCH_MUSKETEER','PROMOTION_LIGHTNING_WARFARE'),
('UNIT_FRENCH_MUSKETEER','PROMOTION_FORMATION_1'),

('UNIT_GERMAN_LANDSKNECHT','PROMOTION_FIELD_WORKS_0'),
('UNIT_GERMAN_LANDSKNECHT','PROMOTION_DOPPELSOLDNER'),
('UNIT_GERMAN_LANDSKNECHT','PROMOTION_FORMATION_2'),
('UNIT_GERMAN_LANDSKNECHT','PROMOTION_FORMATION_1'),

-- UNITCLASS_FUSILIER
('UNIT_RIFLEMAN','PROMOTION_FORMATION_1'),
('UNIT_RIFLEMAN','PROMOTION_FIELD_WORKS_1'),

('UNIT_SWEDISH_CAROLEAN','PROMOTION_FORMATION_1'),
('UNIT_SWEDISH_CAROLEAN','PROMOTION_FIELD_WORKS_1'),
('UNIT_SWEDISH_CAROLEAN','PROMOTION_MARCH'),
('UNIT_SWEDISH_CAROLEAN','PROMOTION_AOE_STRIKE_ON_KILL'),

('UNIT_ETHIOPIAN_MEHAL_SEFARI','PROMOTION_FORMATION_1'),
('UNIT_ETHIOPIAN_MEHAL_SEFARI','PROMOTION_FIELD_WORKS_1'),
('UNIT_ETHIOPIAN_MEHAL_SEFARI','PROMOTION_COVER_1'),
('UNIT_ETHIOPIAN_MEHAL_SEFARI','PROMOTION_DEFEND_NEAR_CAPITAL'),
('UNIT_ETHIOPIAN_MEHAL_SEFARI','PROMOTION_HOMELAND_GUARDIAN'),

('UNIT_FRENCH_FOREIGNLEGION','PROMOTION_FORMATION_1'),
('UNIT_FRENCH_FOREIGNLEGION','PROMOTION_FIELD_WORKS_1'),
('UNIT_FRENCH_FOREIGNLEGION','PROMOTION_FOREIGN_LANDS'),

('UNIT_DANISH_SKI_INFANTRY','PROMOTION_FORMATION_1'),
('UNIT_DANISH_SKI_INFANTRY','PROMOTION_FIELD_WORKS_1'),
('UNIT_DANISH_SKI_INFANTRY','PROMOTION_SKI_INFANTRY'),

-- UNITCLASS_RIFLEMAN
('UNIT_GREAT_WAR_INFANTRY','PROMOTION_FIELD_WORKS_2'),

-- UNITCLASS_INFANTRY
('UNIT_INFANTRY','PROMOTION_FIELD_WORKS_3'),

('UNIT_BRAZILIAN_PRACINHA','PROMOTION_FIELD_WORKS_3'),
('UNIT_BRAZILIAN_PRACINHA','PROMOTION_MANY_GOLDEN_AGE_POINTS'),
('UNIT_BRAZILIAN_PRACINHA','PROMOTION_SURVIVALISM_1'),

('UNIT_GUERILLA','PROMOTION_FIELD_WORKS_3'),
('UNIT_GUERILLA','PROMOTION_AMPHIBIOUS'),
('UNIT_GUERILLA','PROMOTION_DEFENSIVE_EMBARKATION'),
('UNIT_GUERILLA','PROMOTION_FLANK_ATTACK_BONUS'),

-- UNITCLASS_MECHANIZED_INFANTRY
('UNIT_MECHANIZED_INFANTRY','PROMOTION_FIELD_WORKS_3'),

---------------------------

-- Mounted Melee & Armor
-- UNITCLASS_HORSEMAN
('UNIT_HORSEMAN','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_HORSEMAN','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_HORSEMAN','PROMOTION_CITY_PENALTY'),

('UNIT_GREEK_COMPANIONCAVALRY','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_GREEK_COMPANIONCAVALRY','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_GREEK_COMPANIONCAVALRY','PROMOTION_CITY_PENALTY'),
('UNIT_GREEK_COMPANIONCAVALRY','PROMOTION_SPAWN_GENERALS_I'),
('UNIT_GREEK_COMPANIONCAVALRY','PROMOTION_MOVEMENT_TO_GENERAL'),
('UNIT_GREEK_COMPANIONCAVALRY','PROMOTION_GENERAL_STACKING'),

('UNIT_CARTHAGINIAN_FOREST_ELEPHANT','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_CARTHAGINIAN_FOREST_ELEPHANT','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_CARTHAGINIAN_FOREST_ELEPHANT','PROMOTION_CITY_PENALTY'),
('UNIT_CARTHAGINIAN_FOREST_ELEPHANT','PROMOTION_FEARED_ELEPHANT'),

('UNIT_BARBARIAN_HORSEMAN','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_BARBARIAN_HORSEMAN','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_BARBARIAN_HORSEMAN','PROMOTION_CITY_PENALTY'),

-- UNITCLASS_KNIGHT
('UNIT_KNIGHT','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_KNIGHT','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_KNIGHT','PROMOTION_CITY_PENALTY'),

('UNIT_BYZANTINE_CATAPHRACT','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_BYZANTINE_CATAPHRACT','PROMOTION_SMALL_CITY_PENALTY'),
('UNIT_BYZANTINE_CATAPHRACT','PROMOTION_OPEN_TERRAIN'),
('UNIT_BYZANTINE_CATAPHRACT','PROMOTION_COVER_1'),

('UNIT_SONGHAI_MUSLIMCAVALRY','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_SONGHAI_MUSLIMCAVALRY','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_SONGHAI_MUSLIMCAVALRY','PROMOTION_RAIDER'),

('UNIT_SIAMESE_WARELEPHANT','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_SIAMESE_WARELEPHANT','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_SIAMESE_WARELEPHANT','PROMOTION_CITY_PENALTY'),
('UNIT_SIAMESE_WARELEPHANT','PROMOTION_GENERAL_STACKING'),
('UNIT_SIAMESE_WARELEPHANT','PROMOTION_ANTI_MOUNTED_I'),
('UNIT_SIAMESE_WARELEPHANT','PROMOTION_FEARED_ELEPHANT'),

-- UNITCLASS_LANCER
('UNIT_LANCER','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_LANCER','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_LANCER','PROMOTION_CITY_PENALTY'),

('UNIT_OTTOMAN_SIPAHI','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_OTTOMAN_SIPAHI','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_OTTOMAN_SIPAHI','PROMOTION_CITY_PENALTY'),
('UNIT_OTTOMAN_SIPAHI','PROMOTION_FLANK_ATTACK_BONUS_STRONG'),
('UNIT_OTTOMAN_SIPAHI','PROMOTION_SHOCK_4'),

('UNIT_SWEDISH_HAKKAPELIITTA','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_SWEDISH_HAKKAPELIITTA','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_SWEDISH_HAKKAPELIITTA','PROMOTION_CITY_PENALTY'),
('UNIT_SWEDISH_HAKKAPELIITTA','PROMOTION_SCOUT_CAVALRY'),
('UNIT_SWEDISH_HAKKAPELIITTA','PROMOTION_HAKKAA_PAALLE'),

('UNIT_POLISH_WINGED_HUSSAR','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_POLISH_WINGED_HUSSAR','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_POLISH_WINGED_HUSSAR','PROMOTION_CITY_PENALTY'),
('UNIT_POLISH_WINGED_HUSSAR','PROMOTION_HEAVY_CHARGE'),
('UNIT_POLISH_WINGED_HUSSAR','PROMOTION_FORMATION_1'),

-- UNITCLASS_LANDSHIP
('UNIT_WWI_TANK','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_WWI_TANK','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_WWI_TANK','PROMOTION_ARMOR_PLATING_1'),

-- UNITCLASS_TANK
('UNIT_TANK','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_TANK','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_TANK','PROMOTION_ARMOR_PLATING_1'),

('UNIT_GERMAN_PANZER','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_GERMAN_PANZER','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_GERMAN_PANZER','PROMOTION_ARMOR_PLATING_1'),
('UNIT_GERMAN_PANZER','PROMOTION_ARMOR_PLATING_2'),
('UNIT_GERMAN_PANZER','PROMOTION_MOBILITY'),

-- UNITCLASS_MODERN_ARMOR
('UNIT_MODERN_ARMOR','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_MODERN_ARMOR','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_MODERN_ARMOR','PROMOTION_ARMOR_PLATING_1'),

-- UNITCLASS_MECH
('UNIT_MECH','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_MECH','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_MECH','PROMOTION_MECH'),
('UNIT_MECH','PROMOTION_ARMOR_PLATING_1'),
('UNIT_MECH','PROMOTION_AMPHIBIOUS'),

---------------------------

-- Ranged
-- UNITCLASS_SLINGER
('UNIT_VP_SLINGER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_VP_SLINGER','PROMOTION_NAVAL_MISFIRE'),

('UNIT_INCAN_SLINGER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_INCAN_SLINGER','PROMOTION_SLINGER'),
('UNIT_INCAN_SLINGER','PROMOTION_NAVAL_MISFIRE'),

-- UNITCLASS_ARCHER 
('UNIT_ARCHER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_ARCHER','PROMOTION_NAVAL_MISFIRE'),

('UNIT_BARBARIAN_ARCHER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_BARBARIAN_ARCHER','PROMOTION_NAVAL_MISFIRE'),

-- UNITCLASS_COMPOSITE_BOWMAN
('UNIT_COMPOSITE_BOWMAN','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_COMPOSITE_BOWMAN','PROMOTION_NAVAL_MISFIRE'),

('UNIT_MAYAN_ATLATLIST','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_MAYAN_ATLATLIST','PROMOTION_ATLATL_ATTACK'),
('UNIT_MAYAN_ATLATLIST','PROMOTION_NAVAL_MISFIRE'),

('UNIT_BABYLONIAN_BOWMAN','PROMOTION_INDIRECT_FIRE'),
('UNIT_BABYLONIAN_BOWMAN','PROMOTION_NAVAL_MISFIRE'),

-- UNITCLASS_CROSSBOWMAN
('UNIT_CROSSBOWMAN','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_CROSSBOWMAN','PROMOTION_NAVAL_MISFIRE'),

('UNIT_CHINESE_CHUKONU','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_CHINESE_CHUKONU','PROMOTION_REPEATER'),
('UNIT_CHINESE_CHUKONU','PROMOTION_NAVAL_MISFIRE'),

('UNIT_ENGLISH_LONGBOWMAN','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_ENGLISH_LONGBOWMAN','PROMOTION_RANGE'),
('UNIT_ENGLISH_LONGBOWMAN','PROMOTION_ASSIZE_OF_ARMS'),
('UNIT_ENGLISH_LONGBOWMAN','PROMOTION_NAVAL_MISFIRE'),

-- UNITCLASS_MUSKETMAN
('UNIT_MUSKETMAN','PROMOTION_NAVAL_MISFIRE'),
('UNIT_MUSKETMAN','PROMOTION_ONLY_DEFENSIVE'),

('UNIT_OTTOMAN_JANISSARY','PROMOTION_MARCH'),
('UNIT_OTTOMAN_JANISSARY','PROMOTION_ATTACK_BONUS'),
('UNIT_OTTOMAN_JANISSARY','PROMOTION_NAVAL_MISFIRE'),
('UNIT_OTTOMAN_JANISSARY','PROMOTION_ONLY_DEFENSIVE'),

('UNIT_AMERICAN_MINUTEMAN','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_AMERICAN_MINUTEMAN','PROMOTION_ACCURACY_1'),
('UNIT_AMERICAN_MINUTEMAN','PROMOTION_GOLDEN_AGE_POINTS'),
('UNIT_AMERICAN_MINUTEMAN','PROMOTION_NAVAL_MISFIRE'),
('UNIT_AMERICAN_MINUTEMAN','PROMOTION_ONLY_DEFENSIVE'),

-- UNITCLASS_GATLINGGUN
('UNIT_GATLINGGUN','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_GATLINGGUN','PROMOTION_NAVAL_MISFIRE'),
('UNIT_GATLINGGUN','PROMOTION_MODERN_RANGED_PENALTY_I'),

-- UNITCLASS_MACHINE_GUN
('UNIT_MACHINE_GUN','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_MACHINE_GUN','PROMOTION_NAVAL_MISFIRE'),
('UNIT_MACHINE_GUN','PROMOTION_MODERN_RANGED_PENALTY_I'),

-- infantry doesn't have a ranged pair

-- UNITCLASS_BAZOOKA
('UNIT_BAZOOKA','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_BAZOOKA','PROMOTION_ANTI_TANK'),
('UNIT_BAZOOKA','PROMOTION_NAVAL_MISFIRE'),
('UNIT_BAZOOKA','PROMOTION_MODERN_RANGED_PENALTY_II'),

---------------------------

-- Skirmishers
-- UNITCLASS_CHARIOT_ARCHER
('UNIT_CHARIOT_ARCHER','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_CHARIOT_ARCHER','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_CHARIOT_ARCHER','PROMOTION_CITY_PENALTY'),
('UNIT_CHARIOT_ARCHER','PROMOTION_NAVAL_MISFIRE'),
('UNIT_CHARIOT_ARCHER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_CHARIOT_ARCHER','PROMOTION_ROUGH_TERRAIN_HALF_TURN'),

('UNIT_EGYPTIAN_WARCHARIOT','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_EGYPTIAN_WARCHARIOT','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_EGYPTIAN_WARCHARIOT','PROMOTION_CITY_PENALTY'),
('UNIT_EGYPTIAN_WARCHARIOT','PROMOTION_NAVAL_MISFIRE'),
('UNIT_EGYPTIAN_WARCHARIOT','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_EGYPTIAN_WARCHARIOT','PROMOTION_ROUGH_TERRAIN_HALF_TURN'),
('UNIT_EGYPTIAN_WARCHARIOT','PROMOTION_ENSLAVEMENT'),

('UNIT_BARBARIAN_AXMAN','PROMOTION_ONLY_DEFENSIVE'),

-- UNITCLASS_SKIRMISHER
('UNIT_MONGOLIAN_KESHIK','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_MONGOLIAN_KESHIK','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_MONGOLIAN_KESHIK','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_MONGOLIAN_KESHIK','PROMOTION_CITY_PENALTY'),
('UNIT_MONGOLIAN_KESHIK','PROMOTION_NAVAL_MISFIRE'),
('UNIT_MONGOLIAN_KESHIK','PROMOTION_ONLY_DEFENSIVE'),

('UNIT_HUN_HORSE_ARCHER','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_HUN_HORSE_ARCHER','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_HUN_HORSE_ARCHER','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_HUN_HORSE_ARCHER','PROMOTION_CITY_PENALTY'),
('UNIT_HUN_HORSE_ARCHER','PROMOTION_NAVAL_MISFIRE'),
('UNIT_HUN_HORSE_ARCHER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_HUN_HORSE_ARCHER','PROMOTION_ACCURACY_1'),

-- UNITCLASS_HEAVY_SKIRMISHER
('UNIT_MOUNTED_BOWMAN','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_MOUNTED_BOWMAN','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_MOUNTED_BOWMAN','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_MOUNTED_BOWMAN','PROMOTION_CITY_PENALTY'),
('UNIT_MOUNTED_BOWMAN','PROMOTION_NAVAL_MISFIRE'),
('UNIT_MOUNTED_BOWMAN','PROMOTION_ONLY_DEFENSIVE'),

('UNIT_ARABIAN_CAMELARCHER','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_ARABIAN_CAMELARCHER','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_ARABIAN_CAMELARCHER','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_ARABIAN_CAMELARCHER','PROMOTION_CITY_PENALTY'),
('UNIT_ARABIAN_CAMELARCHER','PROMOTION_NAVAL_MISFIRE'),
('UNIT_ARABIAN_CAMELARCHER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_ARABIAN_CAMELARCHER','PROMOTION_WITHDRAW_BEFORE_MELEE'),
('UNIT_ARABIAN_CAMELARCHER','PROMOTION_SPLASH'),

-- UNITCLASS_CUIRASSIER
('UNIT_CUIRASSIER','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_CUIRASSIER','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_CUIRASSIER','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_CUIRASSIER','PROMOTION_CITY_PENALTY'),
('UNIT_CUIRASSIER','PROMOTION_NAVAL_MISFIRE'),
('UNIT_CUIRASSIER','PROMOTION_ONLY_DEFENSIVE'),

('UNIT_AUSTRIAN_HUSSAR','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_AUSTRIAN_HUSSAR','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_AUSTRIAN_HUSSAR','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_AUSTRIAN_HUSSAR','PROMOTION_CITY_PENALTY'),
('UNIT_AUSTRIAN_HUSSAR','PROMOTION_NAVAL_MISFIRE'),
('UNIT_AUSTRIAN_HUSSAR','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_AUSTRIAN_HUSSAR','PROMOTION_EXTRA_SIGHT_I'),
('UNIT_AUSTRIAN_HUSSAR','PROMOTION_LIGHTNING_WARFARE'),

('UNIT_INDIAN_WARELEPHANT','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_INDIAN_WARELEPHANT','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_INDIAN_WARELEPHANT','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_INDIAN_WARELEPHANT','PROMOTION_CITY_PENALTY'),
('UNIT_INDIAN_WARELEPHANT','PROMOTION_NAVAL_MISFIRE'),
('UNIT_INDIAN_WARELEPHANT','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_INDIAN_WARELEPHANT','PROMOTION_FEARED_ELEPHANT'),
('UNIT_INDIAN_WARELEPHANT','PROMOTION_BARRAGE_1'),

-- UNITCLASS_CAVALRY
('UNIT_CAVALRY','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_CAVALRY','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_CAVALRY','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_CAVALRY','PROMOTION_CITY_PENALTY'),
('UNIT_CAVALRY','PROMOTION_NAVAL_MISFIRE'),
('UNIT_CAVALRY','PROMOTION_ONLY_DEFENSIVE'),

('UNIT_BERBER_CAVALRY','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_BERBER_CAVALRY','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_BERBER_CAVALRY','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_BERBER_CAVALRY','PROMOTION_CITY_PENALTY'),
('UNIT_BERBER_CAVALRY','PROMOTION_NAVAL_MISFIRE'),
('UNIT_BERBER_CAVALRY','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_BERBER_CAVALRY','PROMOTION_HOMELAND_GUARDIAN'),
('UNIT_BERBER_CAVALRY','PROMOTION_IGNORE_TERRAIN_COST'),

('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_CITY_PENALTY'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_NAVAL_MISFIRE'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_FREE_PILLAGE_MOVES'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_WITHDRAW_BEFORE_MELEE'),
('UNIT_SHOSHONE_COMANCHE_RIDERS','PROMOTION_MOON_STRIKER'),

('UNIT_RUSSIAN_COSSACK','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_RUSSIAN_COSSACK','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_RUSSIAN_COSSACK','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_RUSSIAN_COSSACK','PROMOTION_CITY_PENALTY'),
('UNIT_RUSSIAN_COSSACK','PROMOTION_NAVAL_MISFIRE'),
('UNIT_RUSSIAN_COSSACK','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_RUSSIAN_COSSACK','PROMOTION_STRONGER_VS_DAMAGED'),
('UNIT_RUSSIAN_COSSACK','PROMOTION_ESPRIT_DE_CORPS'),

-- UNITCLASS_LIGHT_TANK
('UNIT_ANTI_TANK_GUN','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_ANTI_TANK_GUN','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_ANTI_TANK_GUN','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_ANTI_TANK_GUN','PROMOTION_CITY_PENALTY'),
('UNIT_ANTI_TANK_GUN','PROMOTION_NAVAL_MISFIRE'),
('UNIT_ANTI_TANK_GUN','PROMOTION_ONLY_DEFENSIVE'),

-- UNITCLASS_HELICOPTER_GUNSHIP
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_SKIRMISHER_DOCTRINE'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_FLAT_MOVEMENT_COST'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_HOVERING_UNIT'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_HOVER_UNIT'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_ANTI_TANK'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_NAVAL_MISFIRE'),
('UNIT_HELICOPTER_GUNSHIP','PROMOTION_ONLY_DEFENSIVE');

---------------------------
---GOTTA SPLIT 
---------------------------

INSERT INTO Unit_FreePromotions (UnitType, PromotionType) VALUES

-- Siege
-- UNITCLASS_CATAPULT
('UNIT_CATAPULT','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_CATAPULT','PROMOTION_CITY_SIEGE'),
('UNIT_CATAPULT','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_CATAPULT','PROMOTION_MUST_SET_UP'),
('UNIT_CATAPULT','PROMOTION_SIGHT_PENALTY'),
('UNIT_CATAPULT','PROMOTION_SIEGE_INACCURACY'),
('UNIT_CATAPULT','PROMOTION_COVER_1'),

('UNIT_ROMAN_BALLISTA','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_ROMAN_BALLISTA','PROMOTION_CITY_SIEGE'),
('UNIT_ROMAN_BALLISTA','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_ROMAN_BALLISTA','PROMOTION_MUST_SET_UP'),
('UNIT_ROMAN_BALLISTA','PROMOTION_COVER_1'),
('UNIT_ROMAN_BALLISTA','PROMOTION_FIELD_I'),

('UNIT_HUN_BATTERING_RAM','PROMOTION_CITY_ASSAULT'),
('UNIT_HUN_BATTERING_RAM','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_HUN_BATTERING_RAM','PROMOTION_SIEGE'),
('UNIT_HUN_BATTERING_RAM','PROMOTION_SIGHT_PENALTY'),
('UNIT_HUN_BATTERING_RAM','PROMOTION_COVER_1'),
('UNIT_HUN_BATTERING_RAM','PROMOTION_ONLY_ATTACKS_CITIES'),

-- UNITCLASS_TREBUCHET
('UNIT_TREBUCHET','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_TREBUCHET','PROMOTION_CITY_SIEGE'),
('UNIT_TREBUCHET','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_TREBUCHET','PROMOTION_MUST_SET_UP'),
('UNIT_TREBUCHET','PROMOTION_SIGHT_PENALTY'),
('UNIT_TREBUCHET','PROMOTION_SIEGE_INACCURACY'),
('UNIT_TREBUCHET','PROMOTION_COVER_1'),

('UNIT_KOREAN_HWACHA','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_KOREAN_HWACHA','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_KOREAN_HWACHA','PROMOTION_MUST_SET_UP'),
('UNIT_KOREAN_HWACHA','PROMOTION_COVER_1'),
('UNIT_KOREAN_HWACHA','PROMOTION_LOGISTICS'),

-- UNITCLASS_CANNON
('UNIT_CANNON','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_CANNON','PROMOTION_CITY_SIEGE'),
('UNIT_CANNON','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_CANNON','PROMOTION_MUST_SET_UP'),
('UNIT_CANNON','PROMOTION_SIGHT_PENALTY'),
('UNIT_CANNON','PROMOTION_SIEGE_INACCURACY'),
('UNIT_CANNON','PROMOTION_COVER_1'),

-- UNITCLASS_FIELD_GUN
('UNIT_FIELD_GUN','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_FIELD_GUN','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_FIELD_GUN','PROMOTION_CITY_SIEGE'),
('UNIT_FIELD_GUN','PROMOTION_MUST_SET_UP'),
('UNIT_FIELD_GUN','PROMOTION_SIGHT_PENALTY'),
('UNIT_FIELD_GUN','PROMOTION_COVER_1'),
('UNIT_FIELD_GUN','PROMOTION_SIEGE_INACCURACY'),
('UNIT_FIELD_GUN','PROMOTION_INDIRECT_FIRE'),

-- UNITCLASS_ARTILLERY
('UNIT_ARTILLERY','PROMOTION_INDIRECT_FIRE'),
('UNIT_ARTILLERY','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_ARTILLERY','PROMOTION_CITY_SIEGE'),
('UNIT_ARTILLERY','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_ARTILLERY','PROMOTION_MUST_SET_UP'),
('UNIT_ARTILLERY','PROMOTION_SIGHT_PENALTY'),
('UNIT_ARTILLERY','PROMOTION_SIEGE_INACCURACY'),
('UNIT_ARTILLERY','PROMOTION_COVER_1'),

-- UNITCLASS_ROCKET_ARTILLERY
('UNIT_ROCKET_ARTILLERY','PROMOTION_INDIRECT_FIRE'),
('UNIT_ROCKET_ARTILLERY','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_ROCKET_ARTILLERY','PROMOTION_CITY_SIEGE'),
('UNIT_ROCKET_ARTILLERY','PROMOTION_NO_DEFENSIVE_BONUSES'),
('UNIT_ROCKET_ARTILLERY','PROMOTION_SIGHT_PENALTY'),
('UNIT_ROCKET_ARTILLERY','PROMOTION_ANTI_TANK'),
('UNIT_ROCKET_ARTILLERY','PROMOTION_SIEGE_INACCURACY'),
('UNIT_ROCKET_ARTILLERY','PROMOTION_COVER_1'),

---------------------------

-- Recon
-- UNITCLASS_PATHFINDER
('UNIT_SHOSHONE_PATHFINDER','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_SHOSHONE_PATHFINDER','PROMOTION_BARBARIAN_PENALTY_I'),
('UNIT_SHOSHONE_PATHFINDER','PROMOTION_RECON_EXPERIENCE'),

-- UNITCLASS_SCOUT
('UNIT_SCOUT','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_SCOUT','PROMOTION_BARBARIAN_PENALTY_II'),
('UNIT_SCOUT','PROMOTION_SCOUT_GOODY_BONUS'),
('UNIT_SCOUT','PROMOTION_RECON_EXPERIENCE'),

-- UNITCLASS_EXPLORER
('UNIT_EXPLORER','PROMOTION_DEFENSIVE_EMBARKATION'),
('UNIT_EXPLORER','PROMOTION_EMBARKED_SIGHT'),
('UNIT_EXPLORER','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_EXPLORER','PROMOTION_RECON_EXPERIENCE'),
('UNIT_EXPLORER','PROMOTION_OCEAN_CROSSING'),
('UNIT_EXPLORER','PROMOTION_BARBARIAN_BONUS'),
('UNIT_EXPLORER','PROMOTION_SCOUT_GOODY_BONUS'),

('UNIT_BANDEIRANTES','PROMOTION_SCOUT_GOODY_BONUS'),
('UNIT_BANDEIRANTES','PROMOTION_OCEAN_CROSSING'),
('UNIT_BANDEIRANTES','PROMOTION_RECON_EXPERIENCE'),
('UNIT_BANDEIRANTES','PROMOTION_RECON_BANDEIRANTES'),
('UNIT_BANDEIRANTES','PROMOTION_BARBARIAN_BONUS'),
('UNIT_BANDEIRANTES','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_BANDEIRANTES','PROMOTION_SURVIVALISM_3'),
('UNIT_BANDEIRANTES','PROMOTION_EMBARKED_SIGHT'),

('UNIT_SPANISH_CONQUISTADOR','PROMOTION_DEFENSIVE_EMBARKATION'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_EMBARKED_SIGHT'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_RECON_EXPERIENCE'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_OCEAN_CROSSING'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_BARBARIAN_BONUS'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_SCOUT_GOODY_BONUS'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_COASTAL_TERROR'),
('UNIT_SPANISH_CONQUISTADOR','PROMOTION_SHOCK_4'),

-- UNITCLASS_COMMANDO
('UNIT_COMMANDO','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_COMMANDO','PROMOTION_BARBARIAN_BONUS'),
('UNIT_COMMANDO','PROMOTION_SCOUT_GOODY_BONUS'),
('UNIT_COMMANDO','PROMOTION_RECON_EXPERIENCE'),
('UNIT_COMMANDO','PROMOTION_SCOUT_XP_PILLAGE'),
('UNIT_COMMANDO','PROMOTION_WITHDRAW_BEFORE_MELEE_I'),
('UNIT_COMMANDO','PROMOTION_KNOCKOUT_III'),

-- UNITCLASS_PARATROOPER
('UNIT_PARATROOPER','PROMOTION_PARADROP'),
('UNIT_PARATROOPER','PROMOTION_FREE_PILLAGE_MOVES'),
('UNIT_PARATROOPER','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_PARATROOPER','PROMOTION_SCOUT_GOODY_BONUS'),
('UNIT_PARATROOPER','PROMOTION_SCOUT_XP_PILLAGE'),
('UNIT_PARATROOPER','PROMOTION_KNOCKOUT_III'),

-- UNITCLASS_SPECIAL_FORCES
('UNIT_MARINE','PROMOTION_AMPHIBIOUS'),
('UNIT_MARINE','PROMOTION_PARADROP'),
('UNIT_MARINE','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_MARINE','PROMOTION_SCOUT_GOODY_BONUS'),
('UNIT_MARINE','PROMOTION_SCOUT_XP_PILLAGE'),
('UNIT_MARINE','PROMOTION_KNOCKOUT_III'),

-- UNITCLASS_XCOM_SQUAD
('UNIT_XCOM_SQUAD','PROMOTION_EXTENDED_PARADROP'),
('UNIT_XCOM_SQUAD','PROMOTION_IGNORE_TERRAIN_COST'),
('UNIT_XCOM_SQUAD','PROMOTION_SCOUT_GOODY_BONUS'),
('UNIT_XCOM_SQUAD','PROMOTION_SCOUT_XP_PILLAGE'),
('UNIT_XCOM_SQUAD','PROMOTION_KNOCKOUT_III'),
('UNIT_XCOM_SQUAD','PROMOTION_AMPHIBIOUS'),

---------------------------

-- Naval Melee
('UNIT_GALLEY','PROMOTION_OCEAN_HALF_MOVES'),
('UNIT_GALLEY','PROMOTION_OCEAN_IMPASSABLE'),
-- UNITCLASS_TRIREME
('UNIT_TRIREME','PROMOTION_OCEAN_HALF_MOVES'),
('UNIT_TRIREME','PROMOTION_OCEAN_IMPASSABLE'),

('UNIT_CARTHAGINIAN_QUINQUEREME','PROMOTION_OCEAN_HALF_MOVES'),
('UNIT_CARTHAGINIAN_QUINQUEREME','PROMOTION_OCEAN_IMPASSABLE'),
('UNIT_CARTHAGINIAN_QUINQUEREME','PROMOTION_RECON_EXPERIENCE'),
('UNIT_CARTHAGINIAN_QUINQUEREME','PROMOTION_HEAVY_SHIP'),

-- UNITCLASS_CARAVEL

('UNIT_PORTUGUESE_NAU','PROMOTION_SELL_EXOTIC_GOODS'),
('UNIT_PORTUGUESE_NAU','PROMOTION_EXTRA_SIGHT_I'),
('UNIT_PORTUGUESE_NAU','PROMOTION_WITHDRAW_BEFORE_MELEE'),

('UNIT_KOREAN_TURTLE_SHIP','PROMOTION_OCEAN_HALF_MOVES'),
('UNIT_KOREAN_TURTLE_SHIP','PROMOTION_TARGETING_4'),

-- UNITCLASS_CORVETTE

('UNIT_DUTCH_SEA_BEGGAR','PROMOTION_PRIZE_SHIPS'),
('UNIT_DUTCH_SEA_BEGGAR','PROMOTION_SUPPLY'),
('UNIT_DUTCH_SEA_BEGGAR','PROMOTION_COASTAL_TERROR'),

-- UNITCLASS_IRONCLAD
('UNIT_IRONCLAD','PROMOTION_FIRE_SUPPORT'),

-- UNITCLASS_DESTROYER
('UNIT_DESTROYER','PROMOTION_WITHDRAW_BEFORE_MELEE'),
('UNIT_DESTROYER','PROMOTION_INTERCEPTION_I'),
('UNIT_DESTROYER','PROMOTION_FIRE_SUPPORT'),

-- UNITCLASS_MISSILE_CRUISER
('UNIT_MISSILE_CRUISER','PROMOTION_CARGO_III'),
('UNIT_MISSILE_CRUISER','PROMOTION_INTERCEPTION_I'),
('UNIT_MISSILE_CRUISER','PROMOTION_FIRE_SUPPORT'),

---------------------------

-- Naval Ranged
-- UNITCLASS_DROMON
('UNIT_BYZANTINE_DROMON','PROMOTION_OCEAN_HALF_MOVES'),
('UNIT_BYZANTINE_DROMON','PROMOTION_OCEAN_IMPASSABLE'),
('UNIT_BYZANTINE_DROMON','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_BYZANTINE_DROMON','PROMOTION_NAVAL_INACCURACY'),
('UNIT_BYZANTINE_DROMON','PROMOTION_CAN_MOVE_AFTER_ATTACKING_NAVAL'),

-- UNITCLASS_GALLEASS
('UNIT_GALLEASS','PROMOTION_OCEAN_HALF_MOVES'),
('UNIT_GALLEASS','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_GALLEASS','PROMOTION_NAVAL_INACCURACY'),
('UNIT_GALLEASS','PROMOTION_CAN_MOVE_AFTER_ATTACKING_NAVAL'),

('UNIT_VENETIAN_GALLEASS','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_VENETIAN_GALLEASS','PROMOTION_OCEAN_HALF_MOVES'),
('UNIT_VENETIAN_GALLEASS','PROMOTION_NAVAL_INACCURACY'),
('UNIT_VENETIAN_GALLEASS','PROMOTION_CAN_MOVE_AFTER_ATTACKING_NAVAL'),
('UNIT_VENETIAN_GALLEASS','PROMOTION_BOMBARDMENT_1'),

-- UNITCLASS_FRIGATE
('UNIT_FRIGATE','PROMOTION_ONLY_DEFENSIVE'),

('UNIT_ENGLISH_SHIPOFTHELINE','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_ENGLISH_SHIPOFTHELINE','PROMOTION_EXTRA_SIGHT_I'),
('UNIT_ENGLISH_SHIPOFTHELINE','PROMOTION_SPLASH'),
('UNIT_ENGLISH_SHIPOFTHELINE','PROMOTION_SPLASH_II'),

-- UNITCLASS_CRUISER
('UNIT_CRUISER','PROMOTION_ONLY_DEFENSIVE'),

-- UNITCLASS_BATTLESHIP
('UNIT_BATTLESHIP','PROMOTION_INDIRECT_FIRE'),
('UNIT_BATTLESHIP','PROMOTION_ONLY_DEFENSIVE'),

---------------------------

-- Submarines & Carrier
-- UNITCLASS_SUBMARINE
('UNIT_SUBMARINE','PROMOTION_INVISIBLE_SUBMARINE'),
('UNIT_SUBMARINE','PROMOTION_SEE_INVISIBLE_SUBMARINE'),
('UNIT_SUBMARINE','PROMOTION_CAN_MOVE_IMPASSABLE'),
('UNIT_SUBMARINE','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_SUBMARINE','PROMOTION_SILENT_HUNTER'),
('UNIT_SUBMARINE','PROMOTION_BIG_CITY_PENALTY'),
('UNIT_SUBMARINE','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),

-- UNITCLASS_NUCLEAR_SUBMARINE
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_INVISIBLE_SUBMARINE'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_SEE_INVISIBLE_SUBMARINE'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_CARGO_II'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_CAN_MOVE_IMPASSABLE'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_SILENT_HUNTER'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_EXTRA_SIGHT_I'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_BIG_CITY_PENALTY'),
('UNIT_NUCLEAR_SUBMARINE','PROMOTION_CAN_MOVE_AFTER_ATTACKING'),

-- UNITCLASS_CARRIER
('UNIT_CARRIER','PROMOTION_CARGO_II'),
('UNIT_CARRIER','PROMOTION_ONLY_DEFENSIVE'),
('UNIT_CARRIER','PROMOTION_INTERCEPTION_I'),
('UNIT_CARRIER','PROMOTION_ANTI_AIR'),

---------------------------
-- AntiAir
-- UNITCLASS_ANTI_AIRCRAFT_GUN
('UNIT_ANTI_AIRCRAFT_GUN','PROMOTION_ANTI_AIR'),
('UNIT_ANTI_AIRCRAFT_GUN','PROMOTION_INTERCEPTION_I'),
('UNIT_ANTI_AIRCRAFT_GUN','PROMOTION_INTERCEPTION_II'),

-- UNITCLASS_MOBILE_SAM
('UNIT_MOBILE_SAM','PROMOTION_ANTI_AIR'),
('UNIT_MOBILE_SAM','PROMOTION_INTERCEPTION_I'),
('UNIT_MOBILE_SAM','PROMOTION_INTERCEPTION_II'),
('UNIT_MOBILE_SAM','PROMOTION_INTERCEPTION_III'),

---------------------------

-- Bombers
-- UNITCLASS_BOMBER

-- UNITCLASS_HEAVY_BOMBER

('UNIT_AMERICAN_B17','PROMOTION_EVASION'),
('UNIT_AMERICAN_B17','PROMOTION_AIR_SIEGE_1'),

-- UNITCLASS_STEALTH_BOMBER
('UNIT_STEALTH_BOMBER','PROMOTION_AIR_RECON'),
('UNIT_STEALTH_BOMBER','PROMOTION_EVASION_III'),

---------------------------

-- Fighters
-- UNITCLASS_TRIPLANE
('UNIT_TRIPLANE','PROMOTION_AIR_SWEEP'),
('UNIT_TRIPLANE','PROMOTION_AIR_RECON'),
('UNIT_TRIPLANE','PROMOTION_INTERCEPTION_1'),
('UNIT_TRIPLANE','PROMOTION_ANTI_AIR'),
('UNIT_TRIPLANE','PROMOTION_AIR_MISFIRE'),

-- UNITCLASS_FIGHTER
('UNIT_FIGHTER','PROMOTION_AIR_SWEEP'),
('UNIT_FIGHTER','PROMOTION_AIR_RECON'),
('UNIT_FIGHTER','PROMOTION_INTERCEPTION_1'),
('UNIT_FIGHTER','PROMOTION_ANTI_AIR'),
('UNIT_FIGHTER','PROMOTION_AIR_MISFIRE'),

('UNIT_JAPANESE_ZERO','PROMOTION_ANTI_FIGHTER'),
('UNIT_JAPANESE_ZERO','PROMOTION_AIR_SWEEP'),
('UNIT_JAPANESE_ZERO','PROMOTION_AIR_RECON'),
('UNIT_JAPANESE_ZERO','PROMOTION_INTERCEPTION_1'),
('UNIT_JAPANESE_ZERO','PROMOTION_INTERCEPTION_2'),
('UNIT_JAPANESE_ZERO','PROMOTION_ANTI_AIR'),
('UNIT_JAPANESE_ZERO','PROMOTION_AIR_MISFIRE'),

-- UNITCLASS_JET_FIGHTER
('UNIT_JET_FIGHTER','PROMOTION_AIR_SWEEP'),
('UNIT_JET_FIGHTER','PROMOTION_AIR_RECON'),
('UNIT_JET_FIGHTER','PROMOTION_INTERCEPTION_1'),
('UNIT_JET_FIGHTER','PROMOTION_ANTI_AIR'),
('UNIT_JET_FIGHTER','PROMOTION_AIR_MISFIRE'),
('UNIT_JET_FIGHTER','PROMOTION_ANTI_HELICOPTER'),

---------------------------

-- Guided Missile & Nukes
-- UNITCLASS_GUIDED_MISSILE

-- UNITCLASS_ATOMIC_BOMB

-- UNITCLASS_NUCLEAR_MISSILE
('UNIT_NUCLEAR_MISSILE','PROMOTION_NUCLEAR_SILO');

---------------------------
