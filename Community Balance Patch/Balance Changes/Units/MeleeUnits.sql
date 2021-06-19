-- MELEE UNITS
-- LAND

	-- Tech Stuff
	
	UPDATE Units SET PrereqTech = 'TECH_TRAPPING' WHERE Type = 'UNIT_BARBARIAN_ARCHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_MINING' WHERE Type = 'UNIT_CELT_PICTISH_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_IRON_WORKING' WHERE Type = 'UNIT_IROQUOIAN_MOHAWKWARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_IRON_WORKING' WHERE Type = 'UNIT_HUN_BATTERING_RAM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_OPTICS' WHERE Type = 'UNIT_SCOUT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_CHIVALRY' WHERE Type = 'UNIT_POLYNESIAN_MAORI_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_STEEL' WHERE Type = 'UNIT_PIKEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_STEEL' WHERE Type = 'UNIT_GERMAN_LANDSKNECHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_SPANISH_TERCIO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_ZULU_IMPI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_SWEDISH_CAROLEAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_FLIGHT' WHERE Type = 'UNIT_BRAZILIAN_PRACINHA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_FLIGHT' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_BALLISTICS' WHERE Type = 'UNIT_GERMAN_PANZER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
	UPDATE Units SET PrereqTech = 'TECH_COMBINED_ARMS' WHERE Type = 'UNIT_DANISH_SKI_INFANTRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_COMBINED_ARMS' WHERE Type = 'UNIT_INFANTRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ADVANCED_BALLISTICS' WHERE Type = 'UNIT_MOBILE_SAM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_COMPUTERS' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ADVANCED_BALLISTICS' WHERE Type = 'UNIT_MODERN_ARMOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_LASERS' WHERE Type = 'UNIT_XCOM_SQUAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PrereqTech = 'TECH_ROBOTICS' WHERE Type = 'UNIT_MECH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET ObsoleteTech = 'TECH_BRONZE_WORKING' WHERE Type = 'UNIT_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_STEEL' WHERE Type = 'UNIT_AZTEC_JAGUAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_STEEL' WHERE Type = 'UNIT_BARBARIAN_SPEARMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	 
	UPDATE Units SET ObsoleteTech = 'TECH_STEEL' WHERE Type = 'UNIT_SPEARMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_OPTICS' WHERE Type = 'UNIT_SHOSHONE_PATHFINDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMPASS' WHERE Type = 'UNIT_SCOUT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_HUN_BATTERING_RAM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_KRIS_SWORDSMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_PIKEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_CELT_PICTISH_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_GREEK_HOPLITE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_GUNPOWDER' WHERE Type = 'UNIT_PERSIAN_IMMORTAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_RIFLING' WHERE Type = 'UNIT_SPANISH_TERCIO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_RIFLING' WHERE Type = 'UNIT_POLYNESIAN_MAORI_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_RIFLING' WHERE Type = 'UNIT_DANISH_BERSERKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS' WHERE Type = 'UNIT_FRENCH_MUSKETEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS' WHERE Type = 'UNIT_AMERICAN_MINUTEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS'WHERE Type = 'UNIT_SWEDISH_CAROLEAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_FLIGHT' WHERE Type = 'UNIT_ZEPPELIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMBINED_ARMS' WHERE Type = 'UNIT_GREAT_WAR_INFANTRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
	UPDATE Units SET ObsoleteTech = 'TECH_COMBINED_ARMS' WHERE Type = 'UNIT_ETHIOPIAN_MEHAL_SEFARI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
	UPDATE Units SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS' WHERE Type = 'UNIT_ZULU_IMPI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS' WHERE Type = 'UNIT_OTTOMAN_JANISSARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_ADVANCED_BALLISTICS' WHERE Type = 'UNIT_ANTI_AIRCRAFT_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_COMPUTERS' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_ADVANCED_BALLISTICS' WHERE Type = 'UNIT_TANK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = 'TECH_LASERS' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = NULL WHERE Type = 'UNIT_BRAZILIAN_PRACINHA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET ObsoleteTech = NULL WHERE Type = 'UNIT_DANISH_SKI_INFANTRY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Tercio now the Renaissance land unit -- upgrdes into rifleman, medieval melee upgrade into it.
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_RIFLEMAN' WHERE Type = 'UNIT_SPANISH_TERCIO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_RIFLEMAN' WHERE UnitType = 'UNIT_SPANISH_TERCIO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO' WHERE Type = 'UNIT_PIKEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_TERCIO' WHERE UnitType = 'UNIT_PIKEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_TERCIO' WHERE Type = 'UNIT_LONGSWORDSMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_TERCIO' WHERE UnitType = 'UNIT_LONGSWORDSMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Tercio Flavors a little high
	UPDATE Unit_Flavors SET Flavor = '9' WHERE UnitType = 'UNIT_SPANISH_TERCIO';

	-- Recon Unit Classes
	UPDATE Units SET CombatClass = 'UNITCOMBAT_RECON' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_MARINE' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_MARINE' WHERE UnitType = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET CombatClass = 'UNITCOMBAT_RECON' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MARINE', 'PROMOTION_PARADROP' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_XCOM_SQUAD' WHERE UnitType = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units  SET DefaultUnitAI = 'UNITAI_PARADROP'  WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_MARINE', 'UNITAI_PARADROP' FROM Unit_AITypes WHERE (UnitType = 'UNIT_HUN_HORSE_ARCHER');
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_XCOM_SQUAD' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET CombatClass = 'UNITCOMBAT_RECON' WHERE Type = 'UNIT_XCOM_SQUAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET IgnoreBuildingDefense = '1' WHERE Type = 'UNIT_XCOM_SQUAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Recon class base sight +1
	UPDATE Units SET BaseSightRange = '2' WHERE Type = 'UNIT_SHOSHONE_PATHFINDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET BaseSightRange = '3' WHERE Type = 'UNIT_SCOUT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET BaseSightRange = '3' WHERE Type = 'UNIT_EXPLORER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
--	UPDATE Units SET BaseSightRange = '3' WHERE Type = 'UNIT_ZEPPELIN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET BaseSightRange = '3' WHERE Type = 'UNIT_COMMANDO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET BaseSightRange = '3' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET BaseSightRange = '3' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET BaseSightRange = '3' WHERE Type = 'UNIT_XCOM_SQUAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Unit_Flavors SET Flavor = '7' WHERE UnitType = 'UNIT_SHOSHONE_PATHFINDER';
	UPDATE Unit_Flavors SET Flavor = '9' WHERE UnitType = 'UNIT_SCOUT';

	DELETE FROM Unit_AITypes WHERE UnitType = 'UNIT_SHOSHONE_PATHFINDER';
	INSERT INTO Unit_AITypes (UnitType, UnitAIType) SELECT 'UNIT_SHOSHONE_PATHFINDER', 'UNITAI_EXPLORE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET DefaultUnitAI = 'UNITAI_EXPLORE' WHERE Type = 'UNIT_SHOSHONE_PATHFINDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Pathfinder -> Scout -> Explorer
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_SCOUT' WHERE Type = 'UNIT_SHOSHONE_PATHFINDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_EXPLORER' WHERE Type = 'UNIT_SCOUT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );	

	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_SCOUT' WHERE UnitType = 'UNIT_SHOSHONE_PATHFINDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_EXPLORER' WHERE UnitType = 'UNIT_SCOUT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_EXPLORER' , 'PROMOTION_OCEAN_CROSSING' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SHOSHONE_PATHFINDER' , 'PROMOTION_BARBARIAN_PENALTY_I' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SCOUT' , 'PROMOTION_BARBARIAN_PENALTY_II' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_EXPLORER' , 'PROMOTION_BARBARIAN_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SCOUT' , 'PROMOTION_SCOUT_GOODY_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_EXPLORER' , 'PROMOTION_SCOUT_GOODY_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
--	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ZEPPELIN' , 'PROMOTION_SCOUT_GOODY_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
--	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ZEPPELIN' , 'PROMOTION_SCOUT_XP_SPOTTING' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
--	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ZEPPELIN', 'PROMOTION_CAN_MOVE_AFTER_ATTACKING' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_PARATROOPER' , 'PROMOTION_IGNORE_TERRAIN_COST' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MARINE' , 'PROMOTION_IGNORE_TERRAIN_COST' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_XCOM_SQUAD' , 'PROMOTION_IGNORE_TERRAIN_COST' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_PARATROOPER' , 'PROMOTION_SCOUT_GOODY_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MARINE' , 'PROMOTION_SCOUT_GOODY_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_XCOM_SQUAD' , 'PROMOTION_SCOUT_GOODY_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_PARATROOPER' , 'PROMOTION_SCOUT_XP_PILLAGE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MARINE' , 'PROMOTION_SCOUT_XP_PILLAGE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_XCOM_SQUAD' , 'PROMOTION_SCOUT_XP_PILLAGE' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_PARATROOPER' , 'PROMOTION_KNOCKOUT_III' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MARINE' , 'PROMOTION_KNOCKOUT_III' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_XCOM_SQUAD' , 'PROMOTION_KNOCKOUT_III' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MARINE' AND PromotionType = 'PROMOTION_DEFENSIVE_EMBARKATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MARINE' AND PromotionType = 'PROMOTION_EMBARKED_SIGHT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Change Appearance of Marine and Paratrooper 
	UPDATE Units SET UnitArtInfo = 'ART_DEF_UNIT_PARATROOPER' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET UnitFlagIconOffset = '59' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET IconAtlas = 'UNIT_ATLAS_2' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PortraitIndex = '14' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET UnitFlagAtlas = 'UNIT_FLAG_ATLAS' WHERE Type = 'UNIT_MARINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET UnitArtInfo = 'ART_DEF_UNIT_MARINE' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET UnitFlagIconOffset = '19' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET IconAtlas = 'EXPANSION_UNIT_ATLAS_1' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET PortraitIndex = '19' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET UnitFlagAtlas = 'EXPANSION_UNIT_FLAG_ATLAS' WHERE Type = 'UNIT_PARATROOPER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_SPEARMAN' WHERE UnitType = 'UNIT_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_SPEARMAN' WHERE UnitType = 'UNIT_BARBARIAN_WARRIOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_TERCIO' WHERE UnitType = 'UNIT_PIKEMAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Make Landship cost Coal, not oil:
	UPDATE Unit_ResourceQuantityRequirements SET ResourceType = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_WWI_TANK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Make Modern Armor cost oil, not aluminum:
	UPDATE Unit_ResourceQuantityRequirements SET ResourceType = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_MODERN_ARMOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Armor
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_WWI_TANK' , 'PROMOTION_ARMOR_PLATING_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_TANK' , 'PROMOTION_ARMOR_PLATING_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MODERN_ARMOR' , 'PROMOTION_ARMOR_PLATING_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GERMAN_PANZER' , 'PROMOTION_ARMOR_PLATING_2' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_ANTI_AIRCRAFT_GUN' AND PromotionType = 'PROMOTION_INTERCEPTION_IV' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_AIRCRAFT_GUN' , 'PROMOTION_INTERCEPTION_I' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ANTI_AIRCRAFT_GUN' , 'PROMOTION_INTERCEPTION_II' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_MOBILE_SAM' AND PromotionType = 'PROMOTION_INTERCEPTION_IV' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MOBILE_SAM' , 'PROMOTION_INTERCEPTION_I' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MOBILE_SAM' , 'PROMOTION_INTERCEPTION_II' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MOBILE_SAM' , 'PROMOTION_INTERCEPTION_III' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET Range = '4' WHERE Type = 'UNIT_MOBILE_SAM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET AirInterceptRange = '4' WHERE Type = 'UNIT_MOBILE_SAM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET Range = '3' WHERE Type = 'UNIT_ANTI_AIRCRAFT_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	UPDATE Units SET AirInterceptRange = '3' WHERE Type = 'UNIT_ANTI_AIRCRAFT_GUN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Warriors Need Love!

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_WARRIOR' , 'PROMOTION_BARBARIAN_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_BARBARIAN_WARRIOR' , 'PROMOTION_BARBARIAN_BONUS' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Fusiliers need to carry on anti-mounted role
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_RIFLEMAN' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ETHIOPIAN_MEHAL_SEFARI' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Spearmen/Pike/Tercioo Change
	DELETE FROM Unit_FreePromotions WHERE PromotionType = 'PROMOTION_ANTI_MOUNTED_I';
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SPEARMAN' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_PIKEMAN' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_BARBARIAN_SPEARMAN' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GREEK_HOPLITE' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_PERSIAN_IMMORTAL' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GERMAN_LANDSKNECHT' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SPANISH_TERCIO' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ZULU_IMPI' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_FRENCH_MUSKETEER' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SWEDISH_CAROLEAN' , 'PROMOTION_FORMATION_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- War Elephant
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SIAMESE_WARELEPHANT' , 'PROMOTION_ANTI_MOUNTED_I' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Swordsmen/Longswordsmen Buff
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_SWORDSMAN', 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_LONGSWORDSMAN', 'PROMOTION_COVER_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	--MECH
	UPDATE Units SET Moves = '8' WHERE Type = 'UNIT_MECH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MECH', 'PROMOTION_MECH' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MECH', 'PROMOTION_ARMOR_PLATING_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Gunpowder Melee promotion buffs
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_RIFLEMAN', 'PROMOTION_FIELD_WORKS_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_ETHIOPIAN_MEHAL_SEFARI', 'PROMOTION_FIELD_WORKS_1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_FRENCH_FOREIGNLEGION', 'PROMOTION_FIELD_WORKS_2' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GREAT_WAR_INFANTRY', 'PROMOTION_FIELD_WORKS_2' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_BRAZILIAN_PRACINHA', 'PROMOTION_FIELD_WORKS_2' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_DANISH_SKI_INFANTRY', 'PROMOTION_FIELD_WORKS_3' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_GUERILLA', 'PROMOTION_FIELD_WORKS_3' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_INFANTRY', 'PROMOTION_FIELD_WORKS_3' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	INSERT INTO Unit_FreePromotions (UnitType, PromotionType) SELECT 'UNIT_MECHANIZED_INFANTRY', 'PROMOTION_FIELD_WORKS_3' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	