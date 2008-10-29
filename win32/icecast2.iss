; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Icecast2-KH
AppVerName=Icecast v2.3.2-kh3
AppPublisherURL=http://www.icecast.org
AppSupportURL=http://www.icecast.org
AppUpdatesURL=http://www.icecast.org
DefaultDirName={pf}\Icecast2 Win32 KH
DefaultGroupName=Icecast2 Win32 KH
AllowNoIcons=yes
LicenseFile=..\COPYING
InfoAfterFile=..\README
OutputDir=.
OutputBaseFilename=icecast2_win32_v2.3.2-kh3_setup
WizardImageFile=icecast2logo2.bmp
WizardImageStretch=no
; uncomment the following line if you want your installation to run on NT 3.51 too.
; MinVersion=4,3.51

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; MinVersion: 4,4

[Dirs]
Name: "{app}\web"
Name: "{app}\admin"
Name: "{app}\doc"
Name: "{app}\logs"
Name: "{app}\examples"


[Files]
Source: "win_release\icecast2win.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "console_release\icecast2_console.exe"; DestDir: "{app}"; DestName: "icecast2console.exe"; Flags: ignoreversion
Source: "service_Release\icecastService.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\examples\*"; DestDir: "{app}\examples"; Flags: ignoreversion
Source: "..\doc\*"; DestDir: "{app}\doc"; Flags: ignoreversion
Source: "..\web\*.xsl"; DestDir: "{app}\web"; Flags: ignoreversion
Source: "..\web\*.html"; DestDir: "{app}\web"; Flags: ignoreversion
Source: "..\web\images\*.png"; DestDir: "{app}\web\images"; Flags: ignoreversion
Source: "..\web\images\*.jpg"; DestDir: "{app}\web\images"; Flags: ignoreversion
Source: "..\web\*.css"; DestDir: "{app}\web"; Flags: ignoreversion
Source: "..\admin\*.xsl"; DestDir: "{app}\admin"; Flags: ignoreversion
Source: "c:\xiph\lib\pthreadVSE.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\conf\*.dist"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\examples\icecast_shoutcast_compat.xml"; DestDir: "{app}"; DestName: "icecast.xml"; Flags: ignoreversion
Source: "c:\xiph\lib\iconv.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\xiph\lib\libxslt.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\xiph\lib\libxml2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\xiph\lib\libcurl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\xiph\lib\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\xiph\lib\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "c:\xiph\lib\zlib1.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]

Name: "{group}\Icecast2 Win32"; Filename: "{app}\icecast2win.exe";WorkingDir: "{app}";
Name: "{userdesktop}\Icecast2 Win32"; Filename: "{app}\icecast2win.exe"; MinVersion: 4,4; Tasks: desktopicon;WorkingDir: "{app}";

[Run]
Filename: "{app}\icecastService.exe"; Parameters: "install ""{app}""";Description: "Install Icecast as a windows service.";Flags: postinstall

[UninstallRun]
Filename: "{app}\icecastService.exe"; Parameters: "remove"

