;!include nsDialogs.nsh
;!include LogicLib.nsh


; example1.nsi
;
; This script is perhaps one of the simplest NSIs you can make. All of the
; optional settings are left to their default settings. The installer simply 
; prompts the user asking them where to install, and drops a copy of example1.nsi
; there. 

XPStyle on
SilentInstall silent

;--------------------------------

; The name of the installer
Name "Janison System Integration Testing Environment 3"

; The file to write
OutFile "Janison System Integration Testing Environment 3 portable.exe"

; The default installation directory
InstallDir "C:\Janison System Integration Testing Environment 3"

; Request application privileges for Windows Vista
RequestExecutionLevel user

;--------------------------------


; Pages

;Page directory
;Page instfiles


;--------------------------------


; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath $TEMP
  
  ; Put file there
  File "Janison System Integration Testing Environment 3.exe"
  File "curl.exe"
  File *.dll

  Exec "$TEMP\Janison System Integration Testing Environment 3.exe"

SectionEnd ; end the section
