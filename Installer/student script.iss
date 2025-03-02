; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Cindex"
#define MyAppVersion "4.0"
#define MyAppEdition "Student"
#define MyAppPublisher "CINDEX"
#define MyAppURL "https://www.example.com"
#define MyAppExeName "cindex.exe"
#define FileVersion "4.2.4.0"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId=B7A08DDB-19E4-4BA1-9ACF-7DA80D07D07F
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion} {#MyAppEdition}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName} {#MyAppVersion} {#MyAppEdition}
DefaultGroupName={#MyAppName} {#MyAppVersion} {#MyAppEdition}
AllowNoIcons=yes
OutputBaseFilename=CindexStudentSetup
Compression=lzma
SolidCompression=yes
SignedUninstaller=yes
;UserInfoPage=yes
;UsePreviousUserInfo=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
MinVersion=6.1
SignTool=cindexSignTool $f
VersionInfoVersion={#FileVersion}
SetupIconFile=icon/cindex.ico

;[code]

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "inno\Student\Cindex.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "inno\Standard\readme.rtf"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "inno\$AAP Tagged Text.cstg"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\$HTML Tagged Text.cstg"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\$UCP Tagged Text.cstg"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\$Standard Tags.cxtg"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\Cindex 4 Release Notes.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\Cindex 4 Guide.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\Cindex.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\en_US.aff"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\en_US.dic"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\icudt58.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\icuin58.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\icuio58.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\icuuc58.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\libexpat.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\libhunspell.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\libiconv.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\WinSparkle.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\msvcp140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\notices.rtf"; DestDir: "{app}"; Flags: ignoreversion
Source: "inno\macrex_translations.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName} {#MyAppVersion} {#MyAppEdition}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{#MyAppName} {#MyAppVersion} Release Notes"; Filename: "{app}\Cindex 4 Release Notes.pdf"
Name: "{group}\{#MyAppName} {#MyAppVersion} Guide"; Filename: "{app}\Cindex 4 Guide.pdf"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName} {#MyAppVersion}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: postinstall skipifsilent

[Registry]
Root: HKCR; Subkey: ".ucdx"; ValueType: string; ValueData: "Cindex.Index"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Index"; ValueType: string; ValueData: "Cindex Index"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Index\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},1"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Index\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Index\shell\open\ddeexec"; ValueType: string; ValueData: "[open(%1)]"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Index\shell\open\ddeexec\Application"; ValueType: string; ValueData: "{#MyAppName}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Index\shell\open\ddeexec\Topic"; ValueType: string; ValueData: "system"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".ixml"; ValueType: string; ValueData: "Cindex.XMLRecords"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.XMLRecords"; ValueType: string; ValueData: "Cindex XML Records"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.XMLRecords\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},2"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.XMLRecords\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.XMLRecords\shell\open\ddeexec"; ValueType: string; ValueData: "[open(%1)]"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.XMLRecords\shell\open\ddeexec\Application"; ValueType: string; ValueData: "{#MyAppName}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.XMLRecords\shell\open\ddeexec\Topic"; ValueType: string; ValueData: "system"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".arc"; ValueType: string; ValueData: "Cindex.Archive"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Archive"; ValueType: string; ValueData: "Cindex Archive"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Archive\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},3"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Archive\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Archive\shell\open\ddeexec"; ValueType: string; ValueData: "[open(%1)]"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Archive\shell\open\ddeexec\Application"; ValueType: string; ValueData: "{#MyAppName}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Archive\shell\open\ddeexec\Topic"; ValueType: string; ValueData: "system"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".ucbr"; ValueType: string; ValueData: "Cindex.Abbreviations"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Abbreviations"; ValueType: string; ValueData: "Cindex Abbreviations"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Abbreviations\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},4"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".ustl"; ValueType: string; ValueData: "Cindex.Stylesheet"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Stylesheet"; ValueType: string; ValueData: "Cindex Stylesheet"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Stylesheet\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},5"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".utpl"; ValueType: string; ValueData: "Cindex.Template"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Template"; ValueType: string; ValueData: "Cindex Template"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Template\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},6"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Template\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Template\shell\open\ddeexec"; ValueType: string; ValueData: "[open(%1)]"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Template\shell\open\ddeexec\Application"; ValueType: string; ValueData: "{#MyAppName}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.Template\shell\open\ddeexec\Topic"; ValueType: string; ValueData: "system"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".cdx"; ValueType: string; ValueData: "Cindex.V2Index"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Index"; ValueType: string; ValueData: "Cindex V2 Index"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Index\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},7"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Index\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Index\shell\open\ddeexec"; ValueType: string; ValueData: "[open(%1)]"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Index\shell\open\ddeexec\Application"; ValueType: string; ValueData: "{#MyAppName}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Index\shell\open\ddeexec\Topic"; ValueType: string; ValueData: "system"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".stl"; ValueType: string; ValueData: "Cindex.V2Stylesheet"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Stylesheet"; ValueType: string; ValueData: "Cindex V2 Stylesheet"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Stylesheet\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},8"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".tpl"; ValueType: string; ValueData: "Cindex.V2Template"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Template"; ValueType: string; ValueData: "Cindex V2 Template"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Template\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},9"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".cbr"; ValueType: string; ValueData: "Cindex.V2Abbreviations"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Abbreviations"; ValueType: string; ValueData: "Cindex V2 Abbreviations"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.V2Abbreviations\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},4"; Flags: uninsdeletekey

Root: HKCR; Subkey: ".ndx"; ValueType: string; ValueData: "Cindex.DOSIndex"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.DOSIndex"; ValueType: string; ValueData: "Cindex DOS Index"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Cindex.DOSIndex\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},7"; Flags: uninsdeletekey

Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\Cindex.exe"; ValueType: string; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\Cindex.exe"; ValueType: string; ValueName: "Path"; ValueData: "{app}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{5C74DAC0-05CC-11d1-9141-000000000000}"; ValueType: string; ValueData: "Cindex Records"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{5C74DAC0-05CC-11d1-9141-000000000000}\DataFormats\GetSet\0"; ValueType: string; ValueData: "Cindex Record,1,3,1"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{5C74DAC0-05CC-11d1-9141-000000000000}\DataFormats\GetSet\1"; ValueType: string; ValueData: "Rich Text Format,1,3,1"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{5C74DAC0-05CC-11d1-9141-000000000000}\DataFormats\GetSet\2"; ValueType: string; ValueData: "1,1,3,1"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{5C74DAC0-05CC-11d1-9141-000000000000}\DataFormats\DefaultFile"; ValueType: string; ValueData: "Cindex Record"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Classes\CLSID\{{5C74DAC0-05CC-11d1-9141-000000000000}\LocalServer32"; ValueType: string; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletekey

;Root: HKLM; Subkey: "SOFTWARE\Indexing Research\Cindex\3.0"; ValueType: string; ValueName:"Owner"; ValueData: "Beta User"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "SOFTWARE\Indexing Research\Cindex\3.0"; ValueType: string; ValueName:"Company"; ValueData: "Cindex"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "SOFTWARE\Indexing Research\Cindex\3.0"; ValueType: string; ValueName:"Sernum"; ValueData: "FI117920PI-9793"; Flags: uninsdeletekey

;Root: HKLM; Subkey: "SOFTWARE\Indexing Research\Cindex\3.0"; ValueType: string; ValueName:"Owner"; ValueData: "{userinfoname}"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "SOFTWARE\Indexing Research\Cindex\3.0"; ValueType: string; ValueName:"Company"; ValueData: "{userinfoorg}"; Flags: uninsdeletekey
;Root: HKLM; Subkey: "SOFTWARE\Indexing Research\Cindex\3.0"; ValueType: string; ValueName:"Sernum"; ValueData: "{userinfoserial}"; Flags: uninsdeletekey

