#define   Name       "Wolf_Game"
#define   Version    "1.4"
#define   Publisher  "Yar by DK"
#define   ExeName    "Wolf_Game.exe"
[Setup]
; ������ ����������, ������������ ��� ���������
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
; ���� ��������� ��-���������
DefaultDirName={pf}\{#Name}
; ��� ������ � ���� "����"
DefaultGroupName={#Name}
; �������, ���� ����� ������� ��������� setup � ��� ������������ �����
OutputDir=C:\Users\serega\Desktop\setup\Wolf_Game-setup
OutputBaseFileName=Wolf_Game-setup
; ���� ������
SetupIconFile=C:\Users\serega\Desktop\icon.ico
; ��������� ������
Compression=lzma
SolidCompression=yes
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; 
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; 
[Tasks]
; �������� ������ �� ������� �����
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
[Files]
; ����������� ����
Source: "C:\Users\serega\Desktop\wolf_game\Wolf_Game.exe"; DestDir: "{app}"; Flags: ignoreversion
; ������������� �������
Source: "C:\Users\serega\Desktop\wolf_game\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}";IconFilename: "{app}\icon.ico;"

Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}";IconFilename: "{app}\icon.ico"; Tasks: desktopicon;