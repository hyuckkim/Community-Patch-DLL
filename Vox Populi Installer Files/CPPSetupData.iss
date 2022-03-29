; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Vox Populi"
#define MyAppVersion "2.0"
#define MyAppPublisher "Community Patch Project Team"
#define MyAppURL "http://forums.civfanatics.com/showthread.php?t=528034"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{97D14FF1-16B3-4F26-AD9D-DF845F5B7766}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultGroupName={#MyAppName}
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription={#MyAppName}
VersionInfoProductName={#MyAppName}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoCopyright=2022
OutputBaseFilename={#MyAppName} ({#MyAppVersion})
DefaultDirName={userdocs}\My Games\Sid Meier's Civilization 5\MODS\
LicenseFile=License.rtf
InfoBeforeFile=Opener.rtf
SetupIconFile=installer.ico
WizardImageStretch=False
Compression=lzma
SolidCompression=yes
ShowComponentSizes=False
AllowNoIcons=yes
Uninstallable=no
PrivilegesRequired=admin
DirExistsWarning=no
UsedUserAreasWarning=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Messages]
FinishedLabel=Setup has finished installing [name] on your computer. To launch the mod, open Civilization V and enable all installed mods in the MODS menu, and click 'Next.' Have fun!

[Files]
Source: "(1) Community Patch\*"; DestDir: "{app}\(1) Community Patch"; Flags: ignoreversion createallsubdirs recursesubdirs
Source: "(2) Vox Populi\*"; DestDir: "{app}\(2) Vox Populi"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI FullNoEUI Civ43EUI Civ43NoEUI
Source: "(3a) VP - EUI Compatibility Files\*"; DestDir: "{app}\(3a) VP - EUI Compatibility Files"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI Civ43EUI
Source: "(3b) 43 Civs Community Patch\(3b) 43 Civs Community Patch (v 1).modinfo"; DestDir: "{app}\(3b) 43 Civs Community Patch\"; DestName: "(3b) 43 Civs Community Patch (v 1).modinfo"; Flags: ignoreversion; Components: Civ43CPOnly Civ43EUI Civ43NoEUI
Source: "(3b) 43 Civs Community Patch\AdvancedSetup.lua"; DestDir: "{app}\(3b) 43 Civs Community Patch\"; DestName: "AdvancedSetup.lua"; Flags: ignoreversion; Components: Civ43CPOnly Civ43EUI Civ43NoEUI
Source: "(3b) 43 Civs Community Patch\CvGameCore_Expansion2.dll"; DestDir: "{app}\(1) Community Patch\"; DestName: "CvGameCore_Expansion2.dll"; Flags: ignoreversion; Components: Civ43CPOnly Civ43EUI Civ43NoEUI
Source: "(4a) Promotion Icons for VP\*"; DestDir: "{app}\(4a) Promotion Icons for VP"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullNoEUI FullEUI Civ43EUI Civ43NoEUI
Source: "(4b) UI - Promotion Tree for VP\*"; DestDir: "{app}\(4b) UI - Promotion Tree for VP"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullNoEUI FullEUI Civ43EUI Civ43NoEUI
Source: "LUA for (1) CP\LUA\*"; DestDir: "{app}\(1) Community Patch\LUA"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Core Civ43CPOnly     
Source: "LUA for (2) VP\LUA\*"; DestDir: "{app}\(2) Vox Populi\LUA"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullNoEUI Civ43NoEUI
Source: "UI_bc1\*"; DestDir: "{reg:HKCU\SOFTWARE\Firaxis\Civilization5,LastKnownPath|{commonpf}\Steam\steamapps\common\Sid Meier's Civilization V}\Assets\DLC\UI_bc1\"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: FullEUI Civ43EUI

[Components]
Name: "FullEUI"; Description: "Full Version (EUI)"; Types: FullEUI; Flags: exclusive disablenouninstallwarning
Name: "FullNoEUI"; Description: "Full Version (No EUI)"; Types: FullNoEUI; Flags: exclusive disablenouninstallwarning
Name: "Core"; Description: "Core Version (CP Only)"; Types: Core; Flags: exclusive disablenouninstallwarning
Name: "Civ43CPOnly"; Description: "43 Civ Core Version (CP Only)"; Types: 43CivCPOnly; Flags: exclusive disablenouninstallwarning
Name: "Civ43NoEUI"; Description: "43 Civ No EUI Version"; Types: 43CivNoEUI; Flags: exclusive disablenouninstallwarning
Name: "Civ43EUI"; Description: "43 Civ EUI Version"; Types: 43CivEUI; Flags: exclusive disablenouninstallwarning

[Types]
Name: "FullEUI"; Description: "Vox Populi (with EUI)"
Name: "FullNoEUI"; Description: "Vox Populi (no EUI)"
Name: "Core"; Description: "Community Patch only"
Name: "43CivCPOnly"; Description: "43 Civ Community Patch only"
Name: "43CivNoEUI"; Description: "43 Civ Vox Populi (no EUI)"
Name: "43CivEUI"; Description: "43 Civ Vox Populi (with EUI)"

[InstallDelete]
Type: filesandordirs; Name: "{reg:HKCU\SOFTWARE\Firaxis\Civilization5,LastKnownPath|{commonpf}\Steam\steamapps\common\Sid Meier's Civilization V}\Assets\DLC\UI_bc1"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\cache"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(1) Community Patch"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(2) Vox Populi"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(3a) VP - EUI Compatibility Files"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(3b) 43 Civs Community Patch"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(4a) Promotion Icons for VP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(4b) UI - Promotion Tree for VP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(2) Community Balance Overhaul"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(3) CSD for VP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(3) CSD for CBP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(4) Civ IV Diplomatic Features"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(5) More Luxuries"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6a) Vox Populi - Compatibility Files (EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6a) Community Balance Overhaul - Compatibility Files (EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6b) Vox Populi - Compatibility Files (No-EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6b) Community Balance Overhaul - Compatibility Files (No-EUI)"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6c) 43 Civs Community Patch"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(6c) 43 Civs CP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(7a) Promotion Icons for VP"
Type: filesandordirs; Name: "{userdocs}\My Games\Sid Meier's Civilization 5\MODS\(7b) UI - Promotion Tree for VP"