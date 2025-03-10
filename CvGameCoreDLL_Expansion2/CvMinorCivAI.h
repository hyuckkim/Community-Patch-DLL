/*	-------------------------------------------------------------------------------------------------------
	� 1991-2012 Take-Two Interactive Software and its subsidiaries.  Developed by Firaxis Games.  
	Sid Meier's Civilization V, Civ, Civilization, 2K Games, Firaxis Games, Take-Two Interactive Software 
	and their respective logos are all trademarks of Take-Two interactive Software, Inc.  
	All other marks and trademarks are the property of their respective owners.  
	All rights reserved. 
	------------------------------------------------------------------------------------------------------- */
#pragma once

#ifndef CIV5_MINOR_CIV_AI_H
#define CIV5_MINOR_CIV_AI_H

#include <CvLocalization.h>

#define ENABLE_QUESTS_AT_START false
#define ENABLE_PERMANENT_WAR false
#define MINOR_POWER_COMPARISON_RADIUS (5)

enum CLOSED_ENUM MinorCivStatusTypes
{
    NO_MINOR_CIV_STATUS_TYPE = -1,

    MINOR_CIV_STATUS_NORMAL,
    MINOR_CIV_STATUS_ELEVATED,
    MINOR_CIV_STATUS_CRITICAL,

    NUM_MINOR_CIV_STATUS_TYPES ENUM_META_VALUE,
};
FDataStream& operator<<(FDataStream&, const MinorCivStatusTypes&);
FDataStream& operator>>(FDataStream&, MinorCivStatusTypes&);

enum CLOSED_ENUM MinorCivPersonalityTypes
{
    NO_MINOR_CIV_PERSONALITY_TYPE = -1,

    MINOR_CIV_PERSONALITY_FRIENDLY,
    MINOR_CIV_PERSONALITY_NEUTRAL,
    MINOR_CIV_PERSONALITY_HOSTILE,
    MINOR_CIV_PERSONALITY_IRRATIONAL,

    NUM_MINOR_CIV_PERSONALITY_TYPES ENUM_META_VALUE,
};
FDataStream& operator<<(FDataStream&, const MinorCivPersonalityTypes&);
FDataStream& operator>>(FDataStream&, MinorCivPersonalityTypes&);

enum CLOSED_ENUM MinorCivQuestTypes
{
    NO_MINOR_CIV_QUEST_TYPE = -1,

    MINOR_CIV_QUEST_ROUTE,
    MINOR_CIV_QUEST_KILL_CAMP,
    MINOR_CIV_QUEST_CONNECT_RESOURCE,
    MINOR_CIV_QUEST_CONSTRUCT_WONDER,
    MINOR_CIV_QUEST_GREAT_PERSON,
    MINOR_CIV_QUEST_KILL_CITY_STATE,
    MINOR_CIV_QUEST_FIND_PLAYER,
    MINOR_CIV_QUEST_FIND_NATURAL_WONDER,
    MINOR_CIV_QUEST_GIVE_GOLD,
    MINOR_CIV_QUEST_PLEDGE_TO_PROTECT,
    MINOR_CIV_QUEST_CONTEST_CULTURE,
    MINOR_CIV_QUEST_CONTEST_FAITH,
    MINOR_CIV_QUEST_CONTEST_TECHS,
    MINOR_CIV_QUEST_INVEST,
    MINOR_CIV_QUEST_BULLY_CITY_STATE,
    MINOR_CIV_QUEST_DENOUNCE_MAJOR,
    MINOR_CIV_QUEST_SPREAD_RELIGION,
	MINOR_CIV_QUEST_TRADE_ROUTE,
	MINOR_CIV_QUEST_WAR,
	MINOR_CIV_QUEST_CONSTRUCT_NATIONAL_WONDER,
	MINOR_CIV_QUEST_GIFT_SPECIFIC_UNIT,
	MINOR_CIV_QUEST_FIND_CITY_STATE,
	MINOR_CIV_QUEST_INFLUENCE,
	MINOR_CIV_QUEST_CONTEST_TOURISM,
	MINOR_CIV_QUEST_ARCHAEOLOGY,
	MINOR_CIV_QUEST_CIRCUMNAVIGATION,
	MINOR_CIV_QUEST_LIBERATION,
	MINOR_CIV_QUEST_HORDE,
	MINOR_CIV_QUEST_REBELLION,
	MINOR_CIV_QUEST_DISCOVER_PLOT,
	MINOR_CIV_QUEST_BUILD_X_BUILDINGS,
	MINOR_CIV_QUEST_UNIT_STEAL_FROM,
	MINOR_CIV_QUEST_UNIT_COUP_CITY,
	MINOR_CIV_QUEST_UNIT_GET_CITY,

    NUM_MINOR_CIV_QUEST_TYPES ENUM_META_VALUE,
};
FDataStream& operator<<(FDataStream&, const MinorCivQuestTypes&);
FDataStream& operator>>(FDataStream&, MinorCivQuestTypes&);


typedef vector<PlayerTypes> CivsList;
typedef CvWeightedVector< PlayerTypes> WeightedCivsList;

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  CLASS:      CvMinorCivQuest
//!  \brief		Quest given by a minor civ to a player
//
//!  Author:	Anton Strenger
//
//!  Key Attributes:
//!  - Will be contained inside the CvMinorCivAI of the minor civ that gave the quest
//!  - Plan is to be mostly accessed by CvMinorCivAI class, but perhaps by other gameplay classes as well
//!  - May be extended with functions for checking if quest is complete, etc.
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
class CvMinorCivQuest
{
public:
	// Constants
	static const int NO_QUEST_DATA = -1;
	static const int NO_TURN = -1;

	// Quest data
	CvMinorCivQuest();
	CvMinorCivQuest(PlayerTypes eMinor, PlayerTypes eAssignedPlayer, MinorCivQuestTypes eType);

	~CvMinorCivQuest();

	template<typename MinorCivQuest, typename Visitor>
	static void Serialize(MinorCivQuest& minorCivQuest, Visitor& visitor);

	PlayerTypes GetMinor() const;
	PlayerTypes GetPlayerAssignedTo() const;
	MinorCivQuestTypes GetType() const;
	int GetStartTurn() const;
	int GetEndTurn() const;
	int GetTurnsRemaining(int iCurrentTurn) const;
	int GetPrimaryData() const;
	int GetSecondaryData() const;
	int GetTertiaryData() const;

	int GetInfluence() const;
	int GetGold() const;
	int GetScience() const;
	int GetCulture() const;
	int GetFaith() const;
	int GetGoldenAgePoints() const;
	int GetFood() const;
	int GetProduction() const;
	int GetTourism() const;
	int GetHappiness() const;
	int GetGP() const;
	int GetGPGlobal() const;
	int GetGeneralPoints() const;
	int GetAdmiralPoints() const;
	int GetExperience() const;

	void SetInfluence(int iValue);
	void SetGold(int iValue);
	void SetScience(int iValue);
	void SetCulture(int iValue);
	void SetFaith(int iValue);
	void SetGoldenAgePoints(int iValue);
	void SetFood(int iValue);
	void SetProduction(int iValue);
	void SetTourism(int iValue);
	void SetHappiness(int iValue);
	void SetGP(int iValue);
	void SetGPGlobal(int iValue);
	void SetGeneralPoints(int iValue);
	void SetAdmiralPoints(int iValue);
	void SetExperience(int iValue);

	bool IsPartialQuest() const;
	void SetPartialQuest(bool bValue);

	// Handle rewards
	void CalculateRewards(PlayerTypes ePlayer, bool bRecalc = false);
	void DoRewards(PlayerTypes ePlayer);
	CvString GetRewardString(PlayerTypes ePlayer, bool bFinish);

	// Contest helper functions
	int GetContestValueForPlayer(PlayerTypes ePlayer);
	int GetContestValueForLeader();
	CivsList GetContestLeaders();

	// Quest status for assigned player
	bool IsContestLeader(PlayerTypes ePlayer = NO_PLAYER);
	bool IsComplete();
	bool IsRevoked(bool bWar = false);
	bool IsExpired();
	bool IsObsolete(bool bWar = false);
	bool IsHandled();
	void SetHandled(bool bValue);

	// Starting and finishing
	void DoStartQuest(int iStartTurn, PlayerTypes pCallingPlayer = NO_PLAYER);
	void DoStartQuestUsingExistingData(CvMinorCivQuest* pExistingQuest);
	bool DoFinishQuest();
	bool DoCancelQuest();

	// Public data
	PlayerTypes m_eMinor;
	PlayerTypes m_eAssignedPlayer;
	MinorCivQuestTypes m_eType;
	int m_iStartTurn;
	int m_iData1;
	int m_iData2;
	int m_iData3;
	int m_iInfluence;
	int m_iGold;
	int m_iScience;
	int m_iCulture;
	int m_iFaith;
	int m_iGoldenAgePoints;
	int m_iFood;
	int m_iProduction;
	int m_iTourism;
	int m_iHappiness;
	int m_iGP;
	int m_iGPGlobal;
	int m_iGeneralPoints;
	int m_iAdmiralPoints;
	int m_iExperience;
	bool m_bPartialQuest;
	bool m_bHandled;
};
FDataStream& operator>>(FDataStream&, CvMinorCivQuest&);
FDataStream& operator<<(FDataStream&, const CvMinorCivQuest&);

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  CLASS:      CvMinorCivIncomingUnitGift
//!  \brief		Information about an incoming unit gifted to a minor civ.
//
//!  Key Attributes:
//!  - Lightweight representation of a unit.
//!  - Held by CvMinorCivAI as only minor civs can receive this kind of gift.
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
class CvMinorCivIncomingUnitGift
{
public:
	CvMinorCivIncomingUnitGift();
	CvMinorCivIncomingUnitGift(const CvUnit& srcUnit, int iArriveInTurns, PlayerTypes eFromPlayer);

	template<typename MinorCivIncomingUnitGift, typename Visitor>
	static void Serialize(MinorCivIncomingUnitGift& minorCivIncomingUnitGift, Visitor& visitor);

	void init(const CvUnit& srcUnit, int iArriveInTurns, PlayerTypes eFromPlayer);

	int getArrivalCountdown() const;
	UnitTypes getUnitType() const;
	CvPlot* getFromPlot() const;
	PlayerTypes getOriginalOwner() const;
	PlayerTypes getGiftedByPlayer() const;
	int getGameTurnCreated() const;
	bool isHasPromotion(PromotionTypes ePromotion) const;
	int getPromotionDuration(PromotionTypes ePromotion) const;
	int getTurnPromotionGained(PromotionTypes ePromotion) const;
	bool isHasBeenPromotedFromGoody() const;
	int getExperienceTimes100() const;
	int getLevel() const;
	int getOriginCity() const;
	UnitTypes getLeaderUnitType() const;
	int getNumGoodyHutsPopped() const;
	const CvString& getName() const;

private:
	void setArrivalCountdown(int iNewCountdown);

public:
	void changeArrivalCountdown(int iChangeCountdown);
	void setUnitType(UnitTypes eNewUnitType);
	void setFromXY(int iFromX, int iFromY);
	void setOriginalOwner(PlayerTypes eNewOriginalOwner);
	void setGiftedByPlayer(PlayerTypes ePlayer);
	void setGameTurnCreated(int iNewValue);
	void setHasPromotion(PromotionTypes ePromotion, bool bNewValue);
	void setPromotionDuration(PromotionTypes ePromotion, int iNewValue);
	void setTurnPromotionGained(PromotionTypes ePromotion, int iNewValue);
	void setHasBeenPromotedFromGoody(bool bPromotedFromGoody);
	void setExperienceTimes100(int iNewValueTimes100);
	void setLevel(int iNewLevel);
	void setOriginCity(int iNewOriginCity);
	void setLeaderUnitType(UnitTypes eNewLeaderUnitType);
	void setNumGoodyHutsPopped(int iNewNumGoodyHutsPopped);
	void setName(const CvString& strNewName);

	bool hasIncomingUnit() const;

	void applyToUnit(PlayerTypes eFromPlayer, CvUnit& destUnit) const;
	void reset();

private:
	int m_iArrivalCountdown;
	UnitTypes m_eUnitType;
	int m_iFromX;
	int m_iFromY;
	PlayerTypes m_eOriginalOwner;
	PlayerTypes m_eGiftedByPlayer;
	int m_iGameTurnCreated;
	CvBitfield m_HasPromotions;
	std::map<PromotionTypes, int> m_PromotionDuration;
	std::map<PromotionTypes, int> m_TurnPromotionGained;
	bool m_bPromotedFromGoody;
	int m_iExperienceTimes100;
	int m_iLevel;
	int m_iOriginCity;
	UnitTypes m_eLeaderUnitType;
	int m_iNumGoodyHutsPopped;
	CvString m_strName;
};
FDataStream& operator>>(FDataStream&, CvMinorCivIncomingUnitGift&);
FDataStream& operator<<(FDataStream&, const CvMinorCivIncomingUnitGift&);


class CvPlayer;

typedef vector< CvMinorCivQuest > QuestListForPlayer; // will grow size if needed
typedef vector< QuestListForPlayer > QuestListForAllPlayers;

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  CLASS:      CvMinorCivAI
//!  \brief		Special Information relating to Minor Civs only
//
//!  Author:	Jon Shafer
//
//!  Key Attributes:
//!  - Plan is it will be contained in CvPlayerState object within CvPlayer class
//!  - Should be one instance for each Minor Civ (right now there's one for EVERY Player though)
//!  - Accessed by any class that needs information relating to Minor Civs
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
class CvMinorCivAI
{
public:
	CvMinorCivAI(void);
	~CvMinorCivAI(void);
	void Init(CvPlayer* pPlayer);
	void Uninit();
	void Reset();
	void ResetQuestList();
	template<typename MinorCivAI, typename Visitor>
	static void Serialize(MinorCivAI& minorCivAI, Visitor& visitor);
	void Read(FDataStream& kStream);
	void Write(FDataStream& kStream) const;

	void DoPickInitialItems();

	CvPlayer* GetPlayer();

	MinorCivTypes GetMinorCivType() const;

	MinorCivPersonalityTypes GetPersonality() const;
#if defined(MOD_BALANCE_CORE)
	UnitClassTypes GetBullyUnit() const;
	void SetBullyUnit(UnitClassTypes eUnitClass = NO_UNITCLASS);
#endif
	void SetPersonality(MinorCivPersonalityTypes ePersonality);
	void DoPickPersonality();

	MinorCivTraitTypes GetTrait() const;

	bool IsHasUniqueUnit() const;
	UnitTypes GetUniqueUnit() const;
	void SetUniqueUnit(UnitTypes eUnit);
	void DoPickUniqueUnit();

	// ******************************
	// Main functions
	// ******************************

	void DoTurn();

	void DoChangeAliveStatus(bool bAlive);

	void DoFirstContactWithMajor(TeamTypes eTeam, bool bSuppressMessages);

	void DoTestEndWarsVSMinors(PlayerTypes eOldAlly, PlayerTypes eNewAlly);

	void DoTestEndSkirmishes(PlayerTypes eNewAlly);
	void RecalculateRewards(PlayerTypes ePlayer);

	void DoTurnStatus();
	MinorCivStatusTypes GetStatus() const;

	void DoAddStartingResources(CvPlot* pCityPlot);

	void AddNotification(const CvString& sString, const CvString& sSummaryString, PlayerTypes ePlayer, int iX = -1, int iY = -1);
	void AddQuestNotification(CvString sString, const CvString& sSummaryString, PlayerTypes ePlayer, int iX = -1, int iY = -1, bool bNewQuest = false);

	// ******************************
	// Threatened by Barbarians event
	// ******************************

	bool IsThreateningBarbariansEventActiveForPlayer(PlayerTypes ePlayer);
	int GetNumThreateningBarbarians();
	int GetNumThreateningMajors();
	int GetNumBarbariansInBorders(bool bOnlyAdjacentToCity);

	void DoTestThreatenedAnnouncement();
	int GetTurnsSinceThreatenedAnnouncement() const;
	void SetTurnsSinceThreatenedAnnouncement(int iValue);
	void ChangeTurnsSinceThreatenedAnnouncement(int iChange);
	void DoTestThreatenedAnnouncementForPlayer(PlayerTypes ePlayer);
	bool IsPlayerCloseEnoughForThreatenedAnnouncement(PlayerTypes eMajor);
	
	void DoThreateningBarbKilled(PlayerTypes eKillingPlayer, int iX, int iY);

	// ******************************
	// Proxy War event
	// ******************************

	void DoTestProxyWarAnnouncement();
	void DoTestProxyWarAnnouncementOnFirstContact(PlayerTypes eMajor);

	bool IsProxyWarActiveForMajor(PlayerTypes eMajor, PlayerTypes eOtherMajor);
	bool IsProxyWarActiveForMajor(PlayerTypes eMajor);

	// ******************************
	// ***** Quests *****
	// ******************************

	void DoTurnQuests();

	int GetFirstPossibleTurnForPersonalQuests() const;
	int GetFirstPossibleTurnForGlobalQuests() const;
	int GetMaxActivePersonalQuestsForPlayer() const;
	int GetMaxActiveGlobalQuests() const;

	void DoTestStartGlobalQuest();
	void DoTestStartPersonalQuest(PlayerTypes ePlayer);
#if defined(MOD_BALANCE_CORE)
	void AddQuestForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eType, int iStartTurn, PlayerTypes pCallingPlayer = NO_PLAYER);
#else
	void AddQuestForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eType, int iStartTurn);
#endif
	void AddQuestCopyForPlayer(PlayerTypes ePlayer, CvMinorCivQuest* pQuest);
	void DoTestQuestsOnFirstContact(PlayerTypes eMajor);

	void DoTestActiveQuests(bool bTestComplete, bool bTestObsolete);
	void DoTestActiveQuestsForPlayer(PlayerTypes ePlayer, bool bTestComplete, bool bTestObsolete, MinorCivQuestTypes eSpecifyQuestType = NO_MINOR_CIV_QUEST_TYPE);
	void DoCompletedQuests();
	WeightedCivsList CalculateFriendshipFromQuests();
	void DoCompletedQuestsForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eSpecifyQuestType = NO_MINOR_CIV_QUEST_TYPE);
	void DoObsoleteQuests();
	void DoObsoleteQuestsForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eSpecifyQuestType = NO_MINOR_CIV_QUEST_TYPE, bool bWar = false);
	void DoQuestsCleanup();
	void DoQuestsCleanupForPlayer(PlayerTypes ePlayer);

#if defined(MOD_BALANCE_CORE)
	bool IsTargetQuest(MinorCivQuestTypes eQuest);
	bool PlayerHasTarget(PlayerTypes ePlayer, MinorCivQuestTypes eQuest);
#endif
	bool IsEnabledQuest(MinorCivQuestTypes eQuest);
	bool IsValidQuestForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eQuest);
	bool IsValidQuestCopyForPlayer(PlayerTypes ePlayer, CvMinorCivQuest* pQuest);
	bool IsGlobalQuest(MinorCivQuestTypes eQuest) const;
	bool IsPersonalQuest(MinorCivQuestTypes eQuest) const;
	int GetMinPlayersNeededForQuest(MinorCivQuestTypes eQuest) const;
	int GetPersonalityQuestBias(MinorCivQuestTypes eQuest);

	int GetNumActiveGlobalQuests() const;
	int GetNumActiveQuestsForAllPlayers() const;
	int GetNumActiveQuestsForPlayer(PlayerTypes ePlayer) const;
	int GetNumActivePersonalQuestsForPlayer(PlayerTypes ePlayer) const;
	bool IsActiveQuestForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eType);
	void EndAllActiveQuestsForPlayer(PlayerTypes ePlayer, bool bWar = false);
#if defined(MOD_BALANCE_CORE)
	void DeleteQuest(PlayerTypes ePlayer, MinorCivQuestTypes eType);
#endif

	int GetNumDisplayedQuestsForPlayer(PlayerTypes ePlayer);
	bool IsDisplayedQuestForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eType);

	void DoTestSeedGlobalQuestCountdown(bool bForceSeed = false);
	int GetGlobalQuestCountdown();
	void SetGlobalQuestCountdown(int iValue);
	void ChangeGlobalQuestCountdown(int iChange);
	void DoTestSeedQuestCountdownForPlayer(PlayerTypes ePlayer, bool bForceSeed = false);
	int GetQuestCountdownForPlayer(PlayerTypes ePlayer);
	void SetQuestCountdownForPlayer(PlayerTypes ePlayer, int iValue);
	void ChangeQuestCountdownForPlayer(PlayerTypes ePlayer, int iChange);

	// For debugging and testing:
	bool AddQuestIfAble(PlayerTypes eMajor, MinorCivQuestTypes eQuest);

	// Specific Details for Quests:

	int GetQuestData1(PlayerTypes ePlayer, MinorCivQuestTypes eType) const;
	int GetQuestData2(PlayerTypes ePlayer, MinorCivQuestTypes eType) const;
#if defined(MOD_BALANCE_CORE)
	CvString GetRewardString(PlayerTypes ePlayer, MinorCivQuestTypes eType);
	CvString GetTargetCityString(PlayerTypes ePlayer, MinorCivQuestTypes eType);
#endif
	int GetQuestTurnsRemaining(PlayerTypes ePlayer, MinorCivQuestTypes eType, int iGameTurn) const;
	bool IsContestLeader(PlayerTypes ePlayer, MinorCivQuestTypes eType);
	int GetContestValueForLeader(MinorCivQuestTypes eType);
	int GetContestValueForPlayer(PlayerTypes ePlayer, MinorCivQuestTypes eType);

	bool IsRouteConnectionEstablished(PlayerTypes eMajor) const;
	void SetRouteConnectionEstablished(PlayerTypes eMajor, bool bValue);
	CvPlot* GetBestNearbyCampToKill();

	CvPlot* GetBestNearbyDig();
	//Tests
	PlayerTypes SpawnHorde();
	PlayerTypes SpawnRebels();
	//Ends
	bool IsRebellion();
	void SetRebellion(bool bValue);
	//Countdown
	void ChangeTurnsSinceRebellion(int iChange);
	int GetTurnsSinceRebellion() const;
	void SetTurnsSinceRebellion(int iValue);
	//Primers
	void DoRebellion();
	bool IsValidRebellion();
	void SetRebellionActive(bool bValue);
	bool IsRebellionActive();
	void SetHordeActive(bool bValue);
	bool IsHordeActive();
	//Cooldown
	void ChangeCooldownSpawn(int iChange);
	int GetCooldownSpawn() const;
	void SetCooldownSpawn(int iValue);

	ResourceTypes GetNearbyResourceForQuest(PlayerTypes ePlayer);
	BuildingTypes GetBestWonderForQuest(PlayerTypes ePlayer);
	BuildingTypes GetBestNationalWonderForQuest(PlayerTypes ePlayer);
	UnitTypes GetBestGreatPersonForQuest(PlayerTypes ePlayer);
	PlayerTypes GetBestCityStateTarget(PlayerTypes eForPlayer, bool bNoRandom = false);
	PlayerTypes GetBestCityStateLiberate(PlayerTypes eForPlayer);
	PlayerTypes GetBestCityStateMeetTarget(PlayerTypes eForPlayer);

	CvCity* GetBestCityForQuest(PlayerTypes ePlayer);
	CvPlot* GetTargetPlot(PlayerTypes ePlayer);
	int GetExplorePercent(PlayerTypes ePlayer, MinorCivQuestTypes eQuest);
	BuildingTypes GetBestBuildingForQuest(PlayerTypes ePlayer);
	CvCity* GetBestSpyTarget(PlayerTypes ePlayer, bool bMinor);
	UnitTypes GetBestUnitGiftFromPlayer(PlayerTypes ePlayer);
	bool GetHasSentUnitForQuest(PlayerTypes ePlayer);
	void SetHasSentUnitForQuest(PlayerTypes ePlayer, bool bValue);
	void SetCoupAttempted(PlayerTypes ePlayer, bool bValue);
	bool IsCoupAttempted(PlayerTypes ePlayer);
	void SetTargetedAreaID(PlayerTypes ePlayer, int iValue);
	int GetTargetedAreaID(PlayerTypes ePlayer);
	void SetTargetedCityX(PlayerTypes ePlayer, int iValue);
	void SetTargetedCityY(PlayerTypes ePlayer, int iValue);
	int GetTargetedCityX(PlayerTypes ePlayer);
	int GetTargetedCityY(PlayerTypes ePlayer);
	void SetNumTurnsSincePtPWarning(PlayerTypes ePlayer, int iValue);
	int GetNumTurnsSincePtPWarning(PlayerTypes ePlayer);
	void ChangeNumTurnsSincePtPWarning(PlayerTypes ePlayer, int iValue);

	PlayerTypes GetMostRecentBullyForQuest() const;
	bool IsWantsMinorDead(PlayerTypes eMinor);
	PlayerTypes GetBestPlayerToFind(PlayerTypes ePlayer);
	bool IsGoodTimeForNaturalWonderQuest(PlayerTypes ePlayer);
	bool IsGoodTimeForGiveGoldQuest();
	bool IsGoodTimeForPledgeToProtectQuest();
	bool IsGoodTimeForDenounceMajorQuest();
	bool IsGoodTimeForWarMajorQuest();

	// ******************************
	// ***** Friendship *****
	// ******************************

	void DoFriendship();

	int GetFriendshipChangePerTurnTimes100(PlayerTypes ePlayer);

	int GetEffectiveFriendshipWithMajorTimes100(PlayerTypes ePlayer, bool bIgnoreWar = false);
	int GetBaseFriendshipWithMajorTimes100(PlayerTypes ePlayer) const;
	void SetFriendshipWithMajorTimes100(PlayerTypes ePlayer, int iNum, bool bFromQuest = false, bool bFromCoup = false, bool bFromWar = false);
	void ChangeFriendshipWithMajorTimes100(PlayerTypes ePlayer, int iChange, bool bFromQuest = false);

	int GetEffectiveFriendshipWithMajor(PlayerTypes ePlayer);
	int GetBaseFriendshipWithMajor(PlayerTypes ePlayer) const;
	void SetFriendshipWithMajor(PlayerTypes ePlayer, int iNum, bool bFromQuest = false, bool bFromWar = false);
	void ChangeFriendshipWithMajor(PlayerTypes ePlayer, int iChange, bool bFromQuest = false);

	int GetFriendshipAnchorWithMajor(PlayerTypes ePlayer);
	
	void ResetFriendshipWithMajor(PlayerTypes ePlayer);

	void DoUpdateAlliesResourceBonus(PlayerTypes eNewAlly, PlayerTypes eOldAlly);

	int GetMostFriendshipWithAnyMajor(PlayerTypes& eBestPlayer);
	PlayerTypes GetAlly() const;
	void SetAlly(PlayerTypes eNewAlly);
	int GetAlliedTurns() const;

	bool IsAllies(PlayerTypes ePlayer) const;
	bool IsFriends(PlayerTypes ePlayer);

	bool IsEverFriends(PlayerTypes ePlayer);
	void SetEverFriends(PlayerTypes ePlayer, bool bValue);

	void SetFriends(PlayerTypes ePlayer, bool bValue);

	bool IsCloseToNotBeingAllies(PlayerTypes ePlayer);
	bool IsCloseToNotBeingFriends(PlayerTypes ePlayer);

	int GetFriendshipLevelWithMajor(PlayerTypes ePlayer);
	int GetFriendshipNeededForNextLevel(PlayerTypes ePlayer);

	void DoFriendshipChangeEffects(PlayerTypes ePlayer, int iOldFriendship, int iNewFriendship, bool bFromQuest = false, bool bIgnoreMinorDeath = false);

	bool IsFriendshipAboveFriendsThreshold(PlayerTypes ePlayer, int iFriendship) const;
	int GetFriendsThreshold(PlayerTypes ePlayer) const;
	bool IsFriendshipAboveAlliesThreshold(PlayerTypes ePlayer, int iFriendship) const;
	int GetAlliesThreshold(PlayerTypes ePlayer) const;

	void DoSetBonus(PlayerTypes ePlayer, bool bAdd, bool bFriends, bool bAllies, bool bSuppressNotifications = false, bool bPassedBySomeone = false, PlayerTypes eNewAlly = NO_PLAYER);

	void DoIntrusion();

	void SetReadyForTakeOver();
	bool IsReadyForTakeOver() const;
	void DoDefection();

	bool IsPlayerHasOpenBorders(PlayerTypes ePlayer);
	bool IsPlayerHasOpenBordersAutomatically(PlayerTypes ePlayer);

	void DoLiberationByMajor(PlayerTypes eLiberator, TeamTypes eConquerorTeam);
#if defined(MOD_BALANCE_CORE)
	void SetTurnLiberated(int iValue);
	int GetTurnLiberated();
	void TestChangeProtectionFromMajor(PlayerTypes eMajor);
	CvString GetPledgeProtectionInvalidReason(PlayerTypes eMajor);
#endif
	// Protection
	void DoChangeProtectionFromMajor(PlayerTypes eMajor, bool bProtect, bool bPledgeNowBroken = false);
	bool CanMajorProtect(PlayerTypes eMajor);
	bool CanMajorStartProtection(PlayerTypes eMajor);
	bool CanMajorWithdrawProtection(PlayerTypes eMajor);
	bool IsProtectedByMajor(PlayerTypes eMajor) const;
	bool IsProtectedByAnyMajor() const;
	
	int GetTurnLastPledgedProtectionByMajor(PlayerTypes eMajor) const;
	void SetTurnLastPledgedProtectionByMajor(PlayerTypes eMajor, int iTurn);
	int GetTurnLastPledgeBrokenByMajor(PlayerTypes eMajor) const;
	void SetTurnLastPledgeBrokenByMajor(PlayerTypes eMajor, int iTurn);

	// ************************************
	// ***** Friendship - with Benefits ***** - slewis: woah
	// ************************************

	bool DoMajorCivEraChange(PlayerTypes ePlayer, EraTypes eNewEra);

	int GetScienceFriendshipBonus();
	int GetScienceFriendshipBonusTimes100();
	int GetCurrentScienceFriendshipBonusTimes100(PlayerTypes ePlayer);

	// Culture bonuses
	int GetCultureFlatFriendshipBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetCultureFlatAlliesBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetCurrentCultureFlatBonus(PlayerTypes ePlayer);
	int GetCulturePerBuildingFriendshipBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetCulturePerBuildingAlliesBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetCurrentCulturePerBuildingBonus(PlayerTypes ePlayer);
	int GetCurrentCultureBonus(PlayerTypes ePlayer);

	// Happiness bonuses
	int GetHappinessFlatFriendshipBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetHappinessFlatAlliesBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetCurrentHappinessFlatBonus(PlayerTypes ePlayer);
	int GetHappinessPerLuxuryFriendshipBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetHappinessPerLuxuryAlliesBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetCurrentHappinessPerLuxuryBonus(PlayerTypes ePlayer);
	int GetCurrentHappinessBonus(PlayerTypes ePlayer);

	// Faith bonuses
	int GetFaithFlatFriendshipBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA) const;
	int GetFaithFlatAlliesBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA) const;
	int GetCurrentFaithFlatBonus(PlayerTypes ePlayer);
	int GetCurrentFaithBonus(PlayerTypes ePlayer);

#if defined(MOD_BALANCE_CORE)
	//Gold bonuses
	int GetGoldFlatFriendshipBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA) const;
	int GetGoldFlatAlliesBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA) const;
	int GetCurrentGoldFlatBonus(PlayerTypes ePlayer);
	int GetCurrentGoldBonus(PlayerTypes ePlayer);

	//Science bonuses
	int GetScienceFlatFriendshipBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA) const;
	int GetScienceFlatAlliesBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA) const;
	int GetCurrentScienceFlatBonus(PlayerTypes ePlayer);
	int GetCurrentScienceBonus(PlayerTypes ePlayer);
#endif

	// Food bonuses
	int GetFriendsCapitalFoodBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetFriendsOtherCityFoodBonus(PlayerTypes ePlayer, EraTypes eAssumeEra = NO_ERA);
	int GetAlliesCapitalFoodBonus(PlayerTypes ePlayer);
	int GetAlliesOtherCityFoodBonus(PlayerTypes ePlayer);
	int GetCurrentCapitalFoodBonus(PlayerTypes ePlayer);
	int GetCurrentOtherCityFoodBonus(PlayerTypes ePlayer);

	// Unit bonuses
	void DoSeedUnitSpawnCounter(PlayerTypes ePlayer, bool bBias = false);
	int GetUnitSpawnCounter(PlayerTypes ePlayer);
	void SetUnitSpawnCounter(PlayerTypes ePlayer, int iValue);
	void ChangeUnitSpawnCounter(PlayerTypes ePlayer, int iChange);
	bool IsUnitSpawningAllowed(PlayerTypes ePlayer);
	bool IsUnitSpawningDisabled(PlayerTypes ePlayer) const;
	void SetUnitSpawningDisabled(PlayerTypes ePlayer, bool bValue);
	CvUnit* DoSpawnUnit(PlayerTypes eMajor, bool bLocal = false, bool bExplore = false);
	void DoUnitSpawnTurn();
	int GetSpawnBaseTurns(PlayerTypes ePlayer);
	int GetCurrentSpawnEstimate(PlayerTypes ePlayer);

	// Austria UA Stuff
	bool IsMarried(PlayerTypes eMajor) const;
	void SetMajorMarried(PlayerTypes eMajor, bool bValue);
	PlayerTypes GetMajorBoughtOutBy() const;
	void SetMajorBoughtOutBy(PlayerTypes eMajor);
	bool IsBoughtOut() const;

	bool CanMajorDiploMarriage(PlayerTypes eMajor);
	bool CanMajorBuyout(PlayerTypes eMajor);

	int GetMarriageCost(PlayerTypes eMajor);
	int GetBuyoutCost(PlayerTypes eMajor);

	void DoBuyout(PlayerTypes eMajor);
	int TransferUnitsAndCitiesToMajor(PlayerTypes eMajor); // also used by Merchant of Venice

	// ************************************
	// ***** Bullying *****
	// ************************************

	const ReachablePlots& GetBullyRelevantPlots();
	int GetBullyGoldAmount(PlayerTypes eBullyPlayer, bool bIgnoreScaling = false);

	int CalculateBullyScore(PlayerTypes eBullyPlayer, bool bForUnit, CvString* sTooltipSink = NULL);

	bool CanMajorBullyGold(PlayerTypes ePlayer);
	bool CanMajorBullyGold(PlayerTypes ePlayer, int iSpecifiedBullyMetric);
	CvString GetMajorBullyGoldDetails(PlayerTypes ePlayer);

	bool CanMajorBullyUnit(PlayerTypes ePlayer);
	bool CanMajorBullyUnit(PlayerTypes ePlayer, int iSpecifiedBullyMetric);
	CvString GetMajorBullyUnitDetails(PlayerTypes ePlayer);

	void DoMajorBullyGold(PlayerTypes eBully, int iGold);
	void DoMajorBullyUnit(PlayerTypes eBully, UnitTypes eUnitType);

#if defined(MOD_BALANCE_CORE)
	int GetYieldTheftAmount(PlayerTypes eBully, YieldTypes eYield, bool bIgnoreScaling = false);
#endif
	
	void DoBulliedByMajorReaction(PlayerTypes eBully, int iInfluenceChangeTimes100);

	bool IsEverBulliedByAnyMajor() const;
	bool IsEverBulliedByMajor(PlayerTypes ePlayer) const;
	bool IsRecentlyBulliedByAnyMajor() const; //antonjs: consider: replace with a new fn, GetTurnLastBulliedByAnyMajor
	bool IsRecentlyBulliedByMajor(PlayerTypes ePlayer) const; //antonjs: consider: replace with GetTurnLastBulliedByMajor
	int GetTurnLastBulliedByMajor(PlayerTypes ePlayer) const;
	void SetTurnLastBulliedByMajor(PlayerTypes ePlayer, int iTurn);

	// ****************
	// *** Election ***
	// ****************
	void DoElection();

	// ***********************************
	// ***** General Minor Civ Stuff *****
	// ***********************************

	int GetNumUnitsGifted(PlayerTypes ePlayer);
	void SetNumUnitsGifted(PlayerTypes ePlayer, int iValue);
	void ChangeNumUnitsGifted(PlayerTypes ePlayer, int iChange);

	void DoUnitGiftFromMajor(PlayerTypes eFromPlayer, CvUnit*& pGiftUnit, bool bDistanceGift);
	int GetFriendshipFromUnitGift(PlayerTypes eFromPlayer, bool bGreatPerson, bool bDistanceGift);

	int GetNumGoldGifted(PlayerTypes ePlayer) const;
	void SetNumGoldGifted(PlayerTypes ePlayer, int iValue);
	void ChangeNumGoldGifted(PlayerTypes ePlayer, int iChange);

	void DoGoldGiftFromMajor(PlayerTypes ePlayer, int iGold);
	int GetFriendshipFromGoldGift(PlayerTypes eMajor, int iGold);

	bool CanMajorGiftTileImprovement(PlayerTypes eMajor);
	CvPlot* GetMajorGiftTileImprovement(PlayerTypes eMajor);
	bool IsLackingGiftableTileImprovementAtPlot(PlayerTypes eMajor, int iPlotX, int iPlotY);
	bool CanMajorGiftTileImprovementAtPlot(PlayerTypes eMajor, int iPlotX, int iPlotY);
	int GetGiftTileImprovementCost(PlayerTypes eMajor);
	void DoTileImprovementGiftFromMajor(PlayerTypes eMajor, int iPlotX, int iPlotY);

	void DoNowAtWarWithTeam(TeamTypes eTeam);
	void DoNowPeaceWithTeam(TeamTypes eTeam);

	bool IsPeaceBlocked(TeamTypes eTeam) const;

	void DoTeamDeclaredWarOnMe(TeamTypes eEnemyTeam);
	bool IsPermanentWar(TeamTypes eTeam) const;
	void SetPermanentWar(TeamTypes eTeam, bool bValue);

	bool IsWaryOfTeam(TeamTypes eTeam) const;
	void SetWaryOfTeam(TeamTypes eTeam, bool bValue);

#if defined(MOD_BALANCE_CORE_MINORS)
	int GetTurnLastAttacked(TeamTypes eTeam) const;
	void SetTurnLastAttacked(TeamTypes eTeam, int iTurn);
	int GetJerkTurnsRemaining(TeamTypes eTeam) const;

	bool IsIgnoreJerk(TeamTypes eTeam) const;
	void SetIgnoreJerk(TeamTypes eTeam, bool bValue);

	PlayerTypes GetPermanentAlly() const;
	void SetPermanentAlly(PlayerTypes ePlayer);

	bool IsNoAlly() const;
	void SetNoAlly(bool bValue);

	int GetCoupCooldown() const;
	void SetCoupCooldown(int iValue);
	void ChangeCoupCooldown(int iValue);

	bool IsSiphoned(PlayerTypes ePlayer) const;
	void SetSiphoned(PlayerTypes ePlayer, bool bValue);
#endif

	const CvMinorCivIncomingUnitGift& getIncomingUnitGift(PlayerTypes eMajor) const;
	CvMinorCivIncomingUnitGift& getIncomingUnitGift(PlayerTypes eMajor);

	void doIncomingUnitGifts();
	void returnIncomingUnitGift(PlayerTypes eMajor);

	// ******************************
	// ***** Misc Helper Functions *****
	// ******************************

	bool IsHasMetPlayer(PlayerTypes ePlayer);
	bool IsAtWarWithPlayersTeam(PlayerTypes ePlayer);

	int GetNumResourcesMajorLacks(PlayerTypes eMajor);

	TechTypes GetGoodTechPlayerDoesntHave(PlayerTypes ePlayer, int iRoughTechValue) const;

	bool IsSameReligionAsMajor(PlayerTypes eMajor);

	CvString GetStatusChangeDetails(PlayerTypes ePlayer, bool bAdd, bool bFriends, bool bAllies);
	pair<CvString, CvString> GetStatusChangeNotificationStrings(PlayerTypes ePlayer, bool bAdd, bool bFriends, bool bAllies, PlayerTypes eOldAlly, PlayerTypes eNewAlly);
	CvString GetNamesListAsString(CivsList veNames);

	bool IsDisableNotifications() const;
	void SetDisableNotifications(bool bDisableNotifications);

	QuestListForAllPlayers m_QuestsGiven;
private:
	CvPlayer* m_pPlayer;
	MinorCivTypes m_minorCivType;
	MinorCivPersonalityTypes m_ePersonality;
#if defined(MOD_BALANCE_CORE)
	UnitClassTypes m_eBullyUnit;
#endif
	MinorCivStatusTypes m_eStatus;
	UnitTypes m_eUniqueUnit;

	int m_iTurnsSinceThreatenedByBarbarians;
	int m_iGlobalQuestCountdown;

	bool m_abRouteConnectionEstablished[MAX_MAJOR_CIVS];

	bool m_bIsRebellion;
	int m_iTurnsSinceRebellion;
	bool m_bIsRebellionActive;
	bool m_bIsHordeActive;
	int m_iCooldownSpawn;
	int m_iTakeoverTurn; //not serialized

#if defined(MOD_BALANCE_CORE)
	int m_iTurnLiberated;
#endif

#if defined(MOD_BALANCE_CORE_MINORS)
	int m_aiTurnLastAttacked[MAX_CIV_TEAMS];
	bool m_abIgnoreJerk[MAX_CIV_TEAMS];
	bool m_abIsMarried[MAX_MAJOR_CIVS];
	PlayerTypes m_ePermanentAlly;
	bool m_bNoAlly;
	int m_iCoup;
	bool m_abSiphoned[MAX_MAJOR_CIVS];
	bool m_abCoupAttempted[MAX_MAJOR_CIVS];
	bool m_abSentUnitForQuest[MAX_MAJOR_CIVS];
	int m_aiAssignedPlotAreaID[MAX_MAJOR_CIVS];
	int m_aiTurnsSincePtPWarning[MAX_MAJOR_CIVS];
	int m_aiTargetedCityX[MAX_MAJOR_CIVS];
	int m_aiTargetedCityY[MAX_MAJOR_CIVS];
#endif

	PlayerTypes m_eAlly;
	int m_iTurnAllied;
	PlayerTypes m_eMajorBoughtOutBy;
	int m_iNumThreateningBarbarians;
	bool m_bAllowMajorsToIntrude;

	int m_aiFriendshipWithMajorTimes100[MAX_MAJOR_CIVS];
	int m_aiQuestCountdown[MAX_MAJOR_CIVS];
	int m_aiUnitSpawnCounter[MAX_MAJOR_CIVS];
	int m_aiNumUnitsGifted[MAX_MAJOR_CIVS];
	int m_aiNumGoldGifted[MAX_MAJOR_CIVS];
	int m_aiTurnLastBullied[MAX_MAJOR_CIVS];
	int m_aiTurnLastPledged[MAX_MAJOR_CIVS];
	int m_aiTurnLastBrokePledge[MAX_MAJOR_CIVS];
	bool m_abUnitSpawningDisabled[MAX_MAJOR_CIVS];
	bool m_abEverFriends[MAX_MAJOR_CIVS];
	bool m_abFriends[MAX_MAJOR_CIVS];
	bool m_abPledgeToProtect[MAX_MAJOR_CIVS];
	bool m_abPermanentWar[MAX_CIV_TEAMS];
	bool m_abWaryOfTeam[MAX_CIV_TEAMS];

	bool m_bDisableNotifications;

	CvMinorCivIncomingUnitGift m_IncomingUnitGifts[MAX_MAJOR_CIVS];

	//not serialized, generated and cached on demand
	int m_iBullyPlotsBuilt;
	ReachablePlots m_bullyRelevantPlots;
};

FDataStream& operator>>(FDataStream&, CvMinorCivAI&);
FDataStream& operator<<(FDataStream&, const CvMinorCivAI&);

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//  class :	CvMinorCivInfo
//
//  DESC:		Similar class to CvCivilizationInfo.
//				Stores Minor Civ-specific information, since Minors are not
//				detailed in CvCivilizationInfo
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
class CvMinorCivInfo : public CvBaseInfo
{
public:
	CvMinorCivInfo();
	virtual ~CvMinorCivInfo();

	int getDefaultPlayerColor() const;
	int getArtStyleType() const;
	int getNumCityNames() const;
	const char* getArtStylePrefix() const;
	const char* getArtStyleSuffix() const;

	const char* getShortDescription() const;
	const char* getShortDescriptionKey() const;
	void setShortDescriptionKey(const char* szVal);

	const char* getAdjective() const;
	const char* getAdjectiveKey() const;
	void setAdjectiveKey(const char* szVal);

	const char* getFlagTexture() const;
	const char* getArtDefineTag() const;
	void setArtDefineTag(const char* szVal);
	void setArtStylePrefix(const char* szVal);
	void setArtStyleSuffix(const char* szVal);

	int GetMinorCivTrait() const;
#if defined(MOD_BALANCE_CORE)
	int GetBullyUnit() const;
#endif

	// Deprecated Members
	const char* getAdjectiveKeyWide() const;
	const char* getShortDescriptionKeyWide() const;

	// Arrays
	int getFlavorValue(int i) const;
	const std::string& getCityNames(int i) const;

	virtual bool CacheResults(Database::Results& kResults, CvDatabaseUtility& kUtility);

protected:
	int m_iDefaultPlayerColor;
	int m_iArtStyleType;
	int m_iNumLeaders;				 // the number of leaders the Civ has, this is needed so that random leaders can be generated easily
	int m_iMinorCivTrait;
#if defined(MOD_BALANCE_CORE)
	int m_iBullyUnit;
#endif

	bool m_bAIPlayable;
	bool m_bPlayable;

	CvString m_strArtDefineTag;
	CvString m_strArtStylePrefix;
	CvString m_strArtStyleSuffix;

	CvString m_strShortDescriptionKey;
	CvString m_wstrShortDescription;

	CvString m_strAdjectiveKey;
	CvString m_wstrAdjective;

	//Deprecated members (please remove these once the char mess is organized)
	CvString m_wstrAdjectiveKey;
	CvString m_wstrShortDescriptionKey;

	// Arrays
	int* m_piFlavorValue;
	std::vector<CvString> m_vCityNames;
};

#endif //CIV5_MINOR_CIV_AI_H
