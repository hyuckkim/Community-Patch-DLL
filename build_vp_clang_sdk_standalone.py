import os
import subprocess
import sys
from enum import Enum
import typing
import time
import tempfile
from pathlib import Path
import argparse
from queue import Queue

class Config(Enum):
    Release = 0
    Debug = 1

CORE_DLL = 'CvGameCore_Expansion2'
PROJECT_DIR = Path().resolve()
SDK_VERSION = '7.0'  # Change this to the appropriate SDK version if different, e.g. 7.0A
INCLUDE_PATHS = [
    rf'C:\Program Files (x86)\Microsoft SDKs\Windows\v{SDK_VERSION}\Include',
    rf'C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\include'
]
LIB_PATHS = [
    rf'C:\Program Files (x86)\Microsoft SDKs\Windows\v{SDK_VERSION}\Lib'
]
BUILD_DIR = {
    Config.Release: 'clang-build\\Release',
    Config.Debug: 'clang-build\\Debug',
}
OUT_DIR = {
    Config.Release: 'clang-output\\Release',
    Config.Debug: 'clang-output\\Debug',
}
LIBS = [
    'CvWorldBuilderMap\\lib\\CvWorldBuilderMapWin32.obj',
    'CvGameCoreDLLUtil\\lib\\CvGameCoreDLLUtilWin32.lib',
    'CvLocalization\\lib\\CvLocalizationWin32.lib',
    'CvGameDatabase\\lib\\CvGameDatabaseWin32.lib',
    'FirePlace\\lib\\FireWorksWin32.obj',
    'FirePlace\\lib\\FLuaWin32.lib',
    'ThirdPartyLibs\\Lua51\\lib\\lua51_Win32.lib',
]
DEFAULT_LIBS = [
    'winmm.lib',
    'kernel32.lib',
    'user32.lib',
    'gdi32.lib',
    'winspool.lib',
    'comdlg32.lib',
    'advapi32.lib',
    'shell32.lib',
    'ole32.lib',
    'oleaut32.lib',
    'uuid.lib',
    'odbc32.lib',
    'odbccp32.lib',
    'msvcrt.lib',
]
DEF_FILE = 'CvGameCoreDLL_Expansion2\\CvGameCoreDLL.def'
INCLUDE_DIRS = [
    'CvGameCoreDLL_Expansion2',
    'CvWorldBuilderMap\\include',
    'CvGameCoreDLLUtil\\include',
    'CvLocalization\\include',
    'CvGameDatabase\\include',
    'FirePlace\\include',
    'FirePlace\\include\\FireWorks',
    'ThirdPartyLibs\\Lua51\\include'
]
SHARED_PREDEFS = [
    'FXS_IS_DLL',
    'WIN32',
    '_WINDOWS',
    '_USRDLL',
    'EXTERNAL_PAUSING',
    'CVGAMECOREDLL_EXPORTS',
    'FINAL_RELEASE',
    '_CRT_SECURE_NO_WARNINGS',
    '_WINDLL',
]
RELEASE_PREDEFS = SHARED_PREDEFS + ['STRONG_ASSUMPTIONS', 'NDEBUG', 'VPRELEASE_ERRORMSG']
DEBUG_PREDEFS = SHARED_PREDEFS + ['VPDEBUG']
PREDEFS = {
    Config.Release: RELEASE_PREDEFS,
    Config.Debug: DEBUG_PREDEFS,
}
CL_SUPPRESS = [
    'invalid-offsetof',
    'tautological-constant-out-of-range-compare',
    'comment',
    # 'enum-constexpr-conversion', # TODO: #9786
    'c++11-narrowing',
]
PCH_CPP = 'CvGameCoreDLL_Expansion2\\_precompile.cpp'
PCH_H = 'CvGameCoreDLLPCH.h'
PCH = 'CvGameCoreDLLPCH.pch'
CPP = [
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaArea.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaArgsHandle.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaCity.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaDeal.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaEnums.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaFractal.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaGame.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaGameInfo.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaLeague.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaMap.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaPlayer.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaPlot.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaSupport.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaTeam.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaTeamTech.cpp',
    'CvGameCoreDLL_Expansion2\\Lua\\CvLuaUnit.cpp',
    'CvGameCoreDLL_Expansion2\\CustomMods.cpp',
    'CvGameCoreDLL_Expansion2\\CvAchievementInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvAchievementUnlocker.cpp',
    'CvGameCoreDLL_Expansion2\\CvAdvisorCounsel.cpp',
    'CvGameCoreDLL_Expansion2\\CvAdvisorRecommender.cpp',
    'CvGameCoreDLL_Expansion2\\CvAIOperation.cpp',
    'CvGameCoreDLL_Expansion2\\CvArea.cpp',
    'CvGameCoreDLL_Expansion2\\CvArmyAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvAStar.cpp',
    'CvGameCoreDLL_Expansion2\\CvAStarNode.cpp',
    'CvGameCoreDLL_Expansion2\\CvBarbarians.cpp',
    'CvGameCoreDLL_Expansion2\\CvBeliefClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvBuilderTaskingAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvBuildingClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvBuildingProductionAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvCity.cpp',
    'CvGameCoreDLL_Expansion2\\CvCityAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvCityCitizens.cpp',
    'CvGameCoreDLL_Expansion2\\CvCityConnections.cpp',
    'CvGameCoreDLL_Expansion2\\CvCityManager.cpp',
    'CvGameCoreDLL_Expansion2\\CvCitySpecializationAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvCityStrategyAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvContractClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvCorporationClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvCultureClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvDangerPlots.cpp',
    'CvGameCoreDLL_Expansion2\\CvDatabaseUtility.cpp',
    'CvGameCoreDLL_Expansion2\\CvDealAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvDealClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvDiplomacyAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvDiplomacyRequests.cpp',
    'CvGameCoreDLL_Expansion2\\CvDistanceMap.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllBuildInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllBuildingInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllCity.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllCivilizationInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllColorInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllCombatInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllContext.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllDatabaseUtility.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllDeal.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllDealAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllDiplomacyAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllDlcPackageInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllEraInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllFeatureInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllGame.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllGameAsynch.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllGameDeals.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllGameOptionInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllGameSpeedInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllHandicapInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllImprovementInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllInterfaceModeInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllLeaderheadInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllMap.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllMinorCivInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllMissionData.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllMissionInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllNetInitInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllNetLoadGameInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllNetMessageExt.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllNetMessageHandler.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllNetworkSyncronization.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPathFinderUpdate.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPlayer.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPlayerColorInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPlayerOptionInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPlot.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPolicyInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPreGame.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllPromotionInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllRandom.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllResourceInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllScriptSystemUtility.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllTeam.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllTechInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllTerrainInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllUnit.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllUnitCombatClassInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllUnitInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllVictoryInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllWorldBuilderMapLoader.cpp',
    'CvGameCoreDLL_Expansion2\\CvDllWorldInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvEconomicAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvEmphasisClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvEspionageClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvEventLog.cpp',
    'CvGameCoreDLL_Expansion2\\CvFlavorManager.cpp',
    'CvGameCoreDLL_Expansion2\\CvFractal.cpp',
    'CvGameCoreDLL_Expansion2\\CvGame.cpp',
    'CvGameCoreDLL_Expansion2\\CvGameCoreDLL.cpp',
    'CvGameCoreDLL_Expansion2\\CvGameCoreEnumSerialization.cpp',
    'CvGameCoreDLL_Expansion2\\CvGameCoreStructs.cpp',
    'CvGameCoreDLL_Expansion2\\CvGameCoreUtils.cpp',
    'CvGameCoreDLL_Expansion2\\CvGameQueries.cpp',
    'CvGameCoreDLL_Expansion2\\CvGameTextMgr.cpp',
    'CvGameCoreDLL_Expansion2\\CvGlobals.cpp',
    'CvGameCoreDLL_Expansion2\\CvGoodyHuts.cpp',
    'CvGameCoreDLL_Expansion2\\CvGrandStrategyAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvGreatPersonInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvHomelandAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvImprovementClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvInfos.cpp',
    'CvGameCoreDLL_Expansion2\\CvInfosSerializationHelper.cpp',
    'CvGameCoreDLL_Expansion2\\CvInternalGameCoreUtils.cpp',
    'CvGameCoreDLL_Expansion2\\CvLoggerCSV.cpp',
    'CvGameCoreDLL_Expansion2\\CvMap.cpp',
    'CvGameCoreDLL_Expansion2\\CvMapGenerator.cpp',
    'CvGameCoreDLL_Expansion2\\CvMilitaryAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvMinorCivAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvNotificationClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvNotifications.cpp',
    'CvGameCoreDLL_Expansion2\\CvPlayer.cpp',
    'CvGameCoreDLL_Expansion2\\CvPlayerAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvPlayerManager.cpp',
    'CvGameCoreDLL_Expansion2\\CvPlot.cpp',
    'CvGameCoreDLL_Expansion2\\CvPlotInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvPlotManager.cpp',
    'CvGameCoreDLL_Expansion2\\CvPolicyAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvPolicyClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvPopupInfoSerialization.cpp',
    'CvGameCoreDLL_Expansion2\\CvPreGame.cpp',
    'CvGameCoreDLL_Expansion2\\CvProcessProductionAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvProjectClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvProjectProductionAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvPromotionClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvRandom.cpp',
    'CvGameCoreDLL_Expansion2\\CvReligionClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvReplayInfo.cpp',
    'CvGameCoreDLL_Expansion2\\CvReplayMessage.cpp',
    'CvGameCoreDLL_Expansion2\\CvSerialize.cpp',
    'CvGameCoreDLL_Expansion2\\CvSiteEvaluationClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvStartPositioner.cpp',
    'CvGameCoreDLL_Expansion2\\cvStopWatch.cpp',
    'CvGameCoreDLL_Expansion2\\CvTacticalAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvTacticalAnalysisMap.cpp',
    'CvGameCoreDLL_Expansion2\\CvTargeting.cpp',
    'CvGameCoreDLL_Expansion2\\CvTeam.cpp',
    'CvGameCoreDLL_Expansion2\\CvTechAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvTechClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvTradeClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvTraitClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvTreasury.cpp',
    'CvGameCoreDLL_Expansion2\\CvTypes.cpp',
    'CvGameCoreDLL_Expansion2\\CvUnit.cpp',
    'CvGameCoreDLL_Expansion2\\CvUnitClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvUnitCombat.cpp',
    'CvGameCoreDLL_Expansion2\\CvUnitCycler.cpp',
    'CvGameCoreDLL_Expansion2\\CvUnitMission.cpp',
    'CvGameCoreDLL_Expansion2\\CvUnitMovement.cpp',
    'CvGameCoreDLL_Expansion2\\CvUnitProductionAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvVotingClasses.cpp',
    'CvGameCoreDLL_Expansion2\\CvWonderProductionAI.cpp',
    'CvGameCoreDLL_Expansion2\\CvWorldBuilderMapLoader.cpp',
    'CvGameCoreDLL_Expansion2\\SqliteLogger.cpp',
]

def set_environment():
    sdk_path = rf'C:\Program Files (x86)\Microsoft SDKs\Windows\v{SDK_VERSION}'
    vs_path = r'C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC'
    os.environ['INCLUDE'] = f'{sdk_path}\\Include;{vs_path}\\include'
    os.environ['LIB'] = f'{sdk_path}\\Lib;{vs_path}\\lib'
    os.environ['PATH'] = f'{sdk_path}\\Bin;{vs_path}\\bin;' + os.environ['PATH']

def generate_ast(config: Config = Config.Debug):
    print('generating AST...')
    start_time = time.time()
    
    build_dir = PROJECT_DIR / BUILD_DIR[config]
    ast_dir = build_dir / 'ast'
    ast_dir.mkdir(parents=True, exist_ok=True)
    
    cl_args = ' '.join(build_cl_config_args(config))
    
    for cpp in CPP:
        src = PROJECT_DIR / cpp
        ast_file = ast_dir / (Path(cpp).with_suffix('.ast'))

        cmd = f'clang-cl.exe "{src}" {cl_args} -Xclang -ast-dump'
        cp = subprocess.run(cmd, capture_output=True, shell=True)
        
        if cp.returncode != 0:
            print(f'AST dump failed for {src}')
            continue
        
        with open(ast_file, 'wb') as f:
            f.write(cp.stdout)
    
    end_time = time.time()
    print(f'AST generation finished after {end_time - start_time} seconds')
    
if __name__ == '__main__':
    set_environment()
    generate_ast()
