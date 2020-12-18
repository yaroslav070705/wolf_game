#define   Name       "Wolf_Game"
#define   Version    "1.4"
#define   Publisher  "Yar by DK"
#define   ExeName    "Wolf_Game.exe"
[Setup]
; Прочая информация, отображаемая при установке
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
; Путь установки по-умолчанию
DefaultDirName={pf}\{#Name}
; Имя группы в меню "Пуск"
DefaultGroupName={#Name}
; Каталог, куда будет записан собранный setup и имя исполняемого файла
OutputDir=C:\Users\serega\Desktop\setup\Wolf_Game-setup
OutputBaseFileName=Wolf_Game-setup
; Файл иконки
SetupIconFile=C:\Users\serega\Desktop\icon.ico
; Параметры сжатия
Compression=lzma
SolidCompression=yes
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; 
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; 
[Tasks]
; Создание иконки на рабочем столе
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
[Files]
; Исполняемый файл
Source: "C:\Users\serega\Desktop\wolf_game\Wolf_Game.exe"; DestDir: "{app}"; Flags: ignoreversion
; Прилагающиеся ресурсы
Source: "C:\Users\serega\Desktop\wolf_game\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]

Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}";IconFilename: "{app}\icon.ico;"

Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}";IconFilename: "{app}\icon.ico"; Tasks: desktopicon;