/*	-------------------------------------------------------------------------------------------------------
	� 1991-2012 Take-Two Interactive Software and its subsidiaries.  Developed by Firaxis Games.  
	Sid Meier's Civilization V, Civ, Civilization, 2K Games, Firaxis Games, Take-Two Interactive Software 
	and their respective logos are all trademarks of Take-Two interactive Software, Inc.  
	All other marks and trademarks are the property of their respective owners.  
	All rights reserved. 
	------------------------------------------------------------------------------------------------------- */
#pragma once

#ifndef CIV5_ESPIONAGE_CLASSES_H
#define CIV5_ESPIONAGE_CLASSES_H

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  CLASS: CvEspionageSpy
//!  \brief All the information about a spy
//
//!  Key Attributes:
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
enum CLOSED_ENUM CvSpyRank
{
    SPY_RANK_RECRUIT,
    SPY_RANK_AGENT,
    SPY_RANK_SPECIAL_AGENT,
    NUM_SPY_RANKS ENUM_META_VALUE
};

enum CLOSED_ENUM CvEspionageType
{
	ESPIONAGE_TYPE_KILL,
	ESPIONAGE_TYPE_IDENTIFY,
	ESPIONAGE_TYPE_DETECT,
	NUM_ESPIONAGE_TYPES ENUM_META_VALUE
};

enum CLOSED_ENUM CvSpyState
{
    SPY_STATE_UNASSIGNED,
    SPY_STATE_TRAVELLING,
    SPY_STATE_SURVEILLANCE,
    SPY_STATE_GATHERING_INTEL,
    SPY_STATE_RIG_ELECTION,
    SPY_STATE_COUNTER_INTEL,
	SPY_STATE_MAKING_INTRODUCTIONS,
	SPY_STATE_SCHMOOZE,
    SPY_STATE_DEAD,
    SPY_STATE_TERMINATED,
	SPY_STATE_BUILDING_NETWORK,
    NUM_SPY_STATES ENUM_META_VALUE
};

enum CLOSED_ENUM CvSpyResult // what was the result of the last spy action
{
    SPY_RESULT_UNDETECTED, // spy was not detected
    SPY_RESULT_DETECTED,   // a spy was detected in the city, but the defensive player can't tell which player
    SPY_RESULT_IDENTIFIED, // a spy was detected and identified in the city
    SPY_RESULT_KILLED,     // a spy was detected, identified, and killed in the city
    SPY_RESULT_ELIMINATED, // a spy was detected, identified, and killed in the city, in such an embarrassing way that another spy won't be recruited!
    NUM_SPY_RESULTS ENUM_META_VALUE
};

enum CLOSED_ENUM CvIntrigueType // What intrigue was uncovered?
{
    INTRIGUE_TYPE_DECEPTION,			    // A civ is lying to another civ
    INTRIGUE_TYPE_BUILDING_ARMY,		    // A civ is amassing an army
    INTRIGUE_TYPE_BUILDING_AMPHIBIOUS_ARMY, // A civ is amassing an army to attack over the water
    INTRIGUE_TYPE_ARMY_SNEAK_ATTACK,	    // A civ is sending an army toward another civ
    INTRIGUE_TYPE_AMPHIBIOUS_SNEAK_ATTACK,  // a civ is sending a land invasion across the water toward another civ
	INTRIGUE_TYPE_CONSTRUCTING_WONDER,		// A civ is constructing a wonder
    NUM_INTRIGUE_TYPES ENUM_META_VALUE
};

class CvEspionageSpy
{
public:
	CvEspionageSpy();

	const char* GetSpyName(CvPlayer* pPlayer);

	void SetSpyState(PlayerTypes eSpyOwner, int iSpyIndex, CvSpyState eSpyState);
	void SetSpyFocus(CityEventChoiceTypes m_eSpyFocus);
	void SetSpySiphon(CityEventChoiceTypes m_eSpyFocus);
	void ResetSpySiphon();
	CvString GetSiphonHistory();
	void ResetSiphonHistory();
	void SetSiphonHistory(const CvString& string);

	// Public data
	int m_iName;
	CvString m_sName;
	int m_iCityX;
	int m_iCityY;
	int m_iExperience;
	CvSpyRank m_eRank;
	int GetSpyRank(PlayerTypes eSpyOwner) const;
	CvSpyState m_eSpyState;
	int m_iReviveCounter; // after killed, counter to reincarnate a spy
	bool m_bIsDiplomat;
	bool m_bEvaluateReassignment; // used by the AI. Flag to indicate if the spy should be evaluated to be reassigned
	bool m_bPassive;
	CityEventChoiceTypes m_eSpyFocus; // focus type for events- events are classified.
	int m_iYieldSiphon;
	YieldTypes m_eSiphonYield;
	CvString m_sSiphonHistory;
};

FDataStream& operator>>(FDataStream&, CvEspionageSpy&);
FDataStream& operator<<(FDataStream&, const CvEspionageSpy&);

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  CLASS:		CvPlayerEspionage
//!  \brief		All the information about espionage relating to this player
//
//!  Key Attributes:
//!  - Core data in this class is a list of CvEspionageSpies
//!  - This object is created inside the CvPlayer object and accessed through CvPlayer
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
struct ScoreCityEntry
{
	CvCity* m_pCity;
	int m_iScore;
	bool m_bDiplomat;
};
struct ScoreCityEntryHighEval
{
	bool operator()(ScoreCityEntry const& a, ScoreCityEntry const& b) const
	{
		return a.m_iScore > b.m_iScore;
	}
};

struct ScoreCityEntryLowEval
{
	bool operator()(ScoreCityEntry const& a, ScoreCityEntry const& b) const
	{
		return a.m_iScore < b.m_iScore;
	}
};
struct SpyNotificationMessage
{
	int m_iCityX;
	int m_iCityY;
	PlayerTypes m_eAttackingPlayer;
	int m_iSpyResult;
	TechTypes m_eStolenTech;
};
struct IntrigueNotificationMessage
{
	PlayerTypes m_eDiscoveringPlayer;
	PlayerTypes m_eSourcePlayer;
	PlayerTypes m_eTargetPlayer;
	BuildingTypes m_eBuilding;
	ProjectTypes m_eProject;
	int m_iIntrigueType;
	int m_iTurnNum;
	int m_iCityX;
	int m_iCityY;
	CvString m_strSpyName;
	int iSpyID;
	bool m_bShared;
};
typedef vector<CvEspionageSpy> SpyList;
typedef vector<TechTypes> TechList;
typedef vector<TechList> PlayerTechList;
typedef vector<int> NumTechsToStealList;
typedef vector<int> NumGWToStealList;
typedef vector<int> NumSpyActionsDone;
typedef vector<int> MaxTechCost;
class CvPlayerEspionage
{
public:
	CvPlayerEspionage(void);
	~CvPlayerEspionage(void);
	void Init(CvPlayer* pPlayer);
	void Uninit(void);
	void Reset(void);

	// Functions invoked each player turn
	void DoTurn(void);

	void CreateSpy(void);
	void ProcessSpy(uint uiSpyIndex);
#if defined(MOD_BALANCE_CORE_SPIES)
	void ProcessSpyFocus();
	void ProcessSpySiphon(CvCity* pCity, int uiSpyIndex);
	void TriggerSpyFocusSetup(CvCity* pCity, int uiSpyIndex);
	void DoSpyFocusEvent(uint uiSpyIndex, int iDebug = -1);
	bool DoStealTechnology(PlayerTypes eTargetPlayer);
	bool DoStealGW(CvCity* pCity, int iGWID);

	CvSpyResult ProcessSpyFocusResult(PlayerTypes ePlayer, CvCity* pCity, int uiSpyIndex, CityEventChoiceTypes eEventChoice, bool bDefer = false);

	void CreateSpyChoiceEvent(CityEventTypes eEvent, CvCity* pCity, int uiSpyIndex);

	void DoSpyFocusLevelUp(uint uiSpyIndex, int iChance);

	CvString GetEventHelpText(CityEventTypes eEvent, int uiSpyIndex);

	//Tooltips
	CvString GetSpyInfo(uint uiSpyIndex, bool bNoBasic, CvCity* pCity = NULL);
	CvString GetSpyChanceAtCity(CvCity* pCity, uint uiSpyIndex, bool bNoBasic);
	CvString GetCityPotentialInfo(CvCity* pCity, bool bNoBasic);
	CvString GetSiphonInfo(uint uiSpyIndex, bool bPastTense = false);

	int GetDefenseChance(CvEspionageType eEspionage, CvCity* pCity, CityEventChoiceTypes eEventChoice = NO_EVENT_CHOICE_CITY, bool bPreview = false);
	CvSpyResult GetSpyRollResult(CvCity* pCity, CityEventChoiceTypes eEventChoice = NO_EVENT_CHOICE_CITY);
#endif
	void UncoverIntrigue(uint uiSpyIndex);
	void GetRandomIntrigue(CvCity* pCity, uint uiSpyIndex);
	void GetNextSpyName(CvEspionageSpy* pSpy);
	bool IsSpyInCity(uint uiSpyIndex);
	CvCity* GetCityWithSpy(uint uiSpyIndex);
	CvEspionageSpy* GetSpyByID(uint uiSpyIndex);
	int  GetSpyIndexInCity(CvCity* pCity);
	bool CanEverMoveSpyTo(CvCity* pCity);
	bool CanMoveSpyTo(CvCity* pCity, uint uiSpyIndex, bool bAsDiplomat);
	bool MoveSpyTo(CvCity* pCity, uint uiSpyIndex, bool bAsDiplomat);
	bool ExtractSpyFromCity(uint uiSpyIndex);
	void LevelUpSpy(uint uiSpyIndex, int iExperience = 0);

	void SetPassive(uint uiSpyIndex, bool bPassive);
	void SetOutcome(uint uiSpyIndex, uint uiSpyResult, bool bAffectsDiplomacy = true);

	void UpdateSpies();
	void UpdateCity(CvCity* pCity);

	int CalcPerTurn(int iSpyState, CvCity* pCity, int iSpyIndex, bool bGlobalCheck = false, bool bFirstTime = false);
	int CalcRequired(int iSpyState, CvCity* pCity, int iSpyIndex, bool bGlobalCheck = false);

	int GetSpyPower(CvCity* pCity, int iSpyIndex);
	int GetSpyResistance(CvCity* pCity, bool bConsiderPotentialSpy = false);

	const char* GetSpyRankName(int iRank) const;

	bool HasEstablishedSurveillance(uint uiSpyIndex);
	bool HasEstablishedSurveillanceInCity(CvCity* pCity);
	bool IsAnySurveillanceEstablished(PlayerTypes eTargetPlayer);

	bool IsDiplomat (uint uiSpyIndex);
	bool IsSchmoozing (uint uiSpyIndex);
	bool IsAnySchmoozing (CvCity* pCity);

	bool CanStageCoup(uint uiSpyIndex);
	bool CanStageCoup(CvCity* pCity);
	int GetCoupChanceOfSuccess(uint uiSpyIndex);
	int GetTheoreticalChanceOfCoup(CvCity* pCity);
	bool AttemptCoup(uint uiSpyIndex);

	int GetTurnsUntilStateComplete(uint uiSpyIndex);
	int GetPercentOfStateComplete(uint uiSpyIndex);

	int GetNumSpies(void);
	int GetNumAliveSpies(void);
	int GetNumAssignedSpies(void);
	int GetNumUnassignedSpies(void);

	std::vector<int> BuildGWList(CvCity* pCity);

	void BuildStealableTechList(PlayerTypes ePlayer);
	bool IsTechStealable(PlayerTypes ePlayer, TechTypes eTech);

	int GetNumTechsToSteal(PlayerTypes ePlayer);
	int GetNumSpyActionsDone(PlayerTypes ePlayer);

	bool IsMyDiplomatVisitingThem(PlayerTypes ePlayer, bool bIncludeTravelling = false);
	bool IsOtherDiplomatVisitingMe(PlayerTypes ePlayer);

	void AddSpyMessage(int iCityX, int iCityY, PlayerTypes ePlayer, int iSpyResult, TechTypes eStolenTech, int iGreatWorkIndex = -1);
	void ProcessSpyMessages(void);

	void AddIntrigueMessage(PlayerTypes eDiscoveringPlayer, PlayerTypes eSourcePlayer, PlayerTypes eTargetPlayer, BuildingTypes eBuilding, ProjectTypes eProject, CvIntrigueType eIntrigueType, uint uiSpyIndex, CvCity* pCity, bool bShowNotification);
	Localization::String GetIntrigueMessage(uint uiIndex);
	bool HasRecentIntrigueAbout(PlayerTypes eTargetPlayer);
	IntrigueNotificationMessage* GetRecentIntrigueInfo(PlayerTypes eTargetPlayer);
	bool HasSharedIntrigue(PlayerTypes eTargetPlayer, PlayerTypes eSourcePlayer, CvIntrigueType eIntrigueType);
	bool HasSharedIntrigue(PlayerTypes eTargetPlayer, PlayerTypes eSourcePlayer);
	int MarkRecentIntrigueAsShared(PlayerTypes eTargetPlayer, PlayerTypes eSourcePlayer, CvIntrigueType eIntrigueType);
	bool HasSharedIntrigueAboutMe(PlayerTypes eFromPlayer);

	CvString GetLogFileName(void) const;
	void LogEspionageMsg(CvString& strMsg);

	SpyList m_aSpyList;
	std::vector<int> m_aiSpyListNameOrder;
	int m_iSpyListNameOrderIndex;

	PlayerTechList m_aaPlayerStealableTechList;
	NumTechsToStealList m_aiNumTechsToStealList;
	std::vector<SpyNotificationMessage> m_aSpyNotificationMessages; // cleared every turn after displayed for the player
	std::vector<IntrigueNotificationMessage> m_aIntrigueNotificationMessages; // cleared only between games
	NumSpyActionsDone m_aiNumSpyActionsDone;

private:
	CvPlayer* m_pPlayer;
};

FDataStream& operator>>(FDataStream&, CvPlayerEspionage&);
FDataStream& operator<<(FDataStream&, const CvPlayerEspionage&);


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  CLASS:		CvCityEspionage
//!  \brief		All the information about espionage relating to this player
//
//!  Key Attributes:
//!  - Core data in this class is the progress various civs have made on doing
//!     espionage in the city
//!  - This object is created inside the CvCity object and accessed through CvCity
//!  - This may be deprecated!
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> SpyAssignmentList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> SpyAmountProgressList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> SpyRateProgressList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> SpyGoalProgressList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> LastProgressList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> SpyResultList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> LastPotentialList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> NumTimesCityRobbedList;
typedef Firaxis::Array<int, MAX_MAJOR_CIVS> CityPendingEventsList;

class CvCityEspionage
{
public:
	CvCityEspionage(void);
	~CvCityEspionage(void);
	void Init(CvCity* pCity);
	void Uninit(void);
	void Reset(void);

	void SetActivity(PlayerTypes ePlayer, int iAmount, int iRate, int iGoal);
	void Process(PlayerTypes ePlayer);
	bool HasReachedGoal(PlayerTypes ePlayer);
	void ResetProgress(PlayerTypes ePlayer);
	void SetLastProgress(PlayerTypes ePlayer, int iProgress);
	void SetLastPotential(PlayerTypes ePlayer, int iPotential);
	void SetLastBasePotential(PlayerTypes ePlayer, int iPotential);
#if defined(MOD_EVENTS_ESPIONAGE)
	void SetSpyResult(PlayerTypes eSpyOwner, int iSpyIndex, int iResult);
#else
	void SetSpyResult(PlayerTypes ePlayer, int iResult);
#endif
	int GetSpyResult(PlayerTypes ePlayer);

	bool HasPendingEvents(PlayerTypes ePlayer) const;

	bool HasCounterSpy();

	CvCity* m_pCity;
	SpyAssignmentList m_aiSpyAssignment;
	SpyAmountProgressList m_aiAmount; // how much has been collected so far
	SpyRateProgressList m_aiRate; // how much per turn
	SpyGoalProgressList m_aiGoal; // how many we need
	LastProgressList m_aiLastProgress; // the last progress we got from this city. This is recalculated when transitioning between surveillance and stealing a tech and while stealing techs
	LastPotentialList m_aiLastPotential; // the last potential we calculated from this city taking into account the spy stealing
	LastPotentialList m_aiLastBasePotential; // the last potential we calculated from this city without taking into account the spy
	SpyResultList m_aiResult; // what was the spy result this turn
	NumTimesCityRobbedList m_aiNumTimesCityRobbed; // how many times has this city had a tech stolen from it?
	CityPendingEventsList m_aiPendingEventsForPlayer;
};

FDataStream& operator>>(FDataStream&, CvCityEspionage&);
FDataStream& operator<<(FDataStream&, const CvCityEspionage&);

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  CLASS:		CvEspionageAI
//!  \brief		The player-level AI for espionage
//
//!  Key Attributes:
//!  - Object is in the player class
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
typedef vector<int> EspionageAIOutOfTechTurnList;
typedef vector<int> EspionageAILastTurns;
typedef vector<int> EspionageAICount;
typedef vector<CvCity*> EspionageCityList;

class CvEspionageAI
{
public:
	// check to see if the countdown clock is started
	enum CLOSED_ENUM {
		PLAN_DEFEND_CS_FOR_WIN,
		PLAN_ATTACK_CS_TO_PREVENT_DEFEAT,
		PLAN_COLLECT_VOTES,
		PLAN_PLAY_NORMAL
	};

	CvEspionageAI(void);
	~CvEspionageAI(void);
	void Init(CvPlayer* pPlayer);
	void Uninit(void);
	void Reset(void);

	void DoTurn(void);
	void StealTechnology(void);
	void UpdateCivOutOfTechTurn(void);
	void AttemptCoups(void);

	std::vector<ScoreCityEntry> BuildDiplomatCityList();
	std::vector<ScoreCityEntry> BuildOffenseCityList();
	std::vector<ScoreCityEntry> BuildDefenseCityList();
	std::vector<ScoreCityEntry> BuildMinorCityList();

	int GetNumValidSpyMissionsInCityValue(CvCity* pCity);

	int GetCityStatePlan(PlayerTypes* peThreatPlayer = NULL);

	void EvaluateSpiesAssignedToTargetPlayer(PlayerTypes ePlayer);
	void EvaluateUnassignedSpies(void);
	void EvaluateDefensiveSpies(void);
	void EvaluateDiplomatSpies(void);

	CvPlayer* m_pPlayer;
	EspionageAIOutOfTechTurnList m_aiCivOutOfTechTurn; // when a civ has run out of techs to steal relative to us

	EspionageAICount m_aiNumSpiesCaught; // how many spies we caught
	EspionageAICount m_aiNumSpiesKilled;   // how many spies we killed
	EspionageAICount m_aiNumSpiesDied;     // how many spies we controlled that were killed

	EspionageAILastTurns m_aiTurnLastSpyCaught; // last turn we caught a spy
	EspionageAILastTurns m_aiTurnLastSpyKilled; // last turn we killed a spy
	EspionageAILastTurns m_aiTurnLastSpyDied;   // last turn one of our spies was killed

	bool m_bUNCountdownStarted; // has the UN countdown started
	int m_iTurnEspionageStarted; // what turn espionage started
};

FDataStream& operator>>(FDataStream&, CvEspionageAI&);
FDataStream& operator<<(FDataStream&, const CvEspionageAI&);

#endif //CIV5_ESPIONAGE_CLASSES_H