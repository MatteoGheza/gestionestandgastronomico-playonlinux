#!/usr/bin/env playonlinux-bash
[ "$PLAYONLINUX" = "" ] && exit 0
source "$PLAYONLINUX/lib/sources"

PREFIX="gestionestandgastronomico"
TITLE="Gestione Stand Gastronomico"
POL_Debug_Init

POL_Debug_Message "Starting window"
POL_SetupWindow_Init
 
POL_SetupWindow_presentation "$TITLE" "Emanuele Gesuato" "http://www.gestionestandgastronomico.it/" "Matteo Gheza" "$PREFIX"
POL_Debug_Message "Started Setup WIZARD."
 
POL_System_TmpCreate $PREFIX
POL_Debug_Message "PREFIX: $PREFIX."
POL_Debug_Message "TITLE: $TITLE."
POL_Debug_Message "TMP DIR: $POL_System_TmpDir."
 
POL_SetupWindow_InstallMethod "LOCAL,DOWNLOAD"
POL_Debug_Message "Install $INSTALL_METHOD."

if [ "$INSTALL_METHOD" = "LOCAL" ]
then
    POL_SetupWindow_browse "Per favore, seleziona il file di installazione o torna indietro."
    INSTALLER="$APP_ANSWER"
    POL_Debug_Message "Installer $INSTALLER."
elif [ "$INSTALL_METHOD" = "DOWNLOAD" ]
then
    cd "$POL_System_TmpDir"
    POL_Download "http://www.gestionestandgastronomico.it/download/Gestione%20Sagra%20(2.2.1).exe"
    INSTALLER="$POL_System_TmpDir/Gestione%20Sagra%20(2.2.1).exe"
    POL_Debug_Message "Installer $INSTALLER."
fi
 
POL_Wine_SelectPrefix $PREFIX
POL_Wine_PrefixCreate
POL_Debug_Message "Prefix created."

#Set_OS "win7"
 
POL_SetupWindow_wait "Installazione librerie..." $TITLE

POL_Debug_Message "Installing additional library"

POL_Call POL_Install_DisableCrashDialog
POL_Call POL_Install_mono28
POL_Call POL_Install_corefonts
POL_Call POL_Install_FontsSmoothBGR
POL_Call POL_Install_FontsSmoothGrayScale
POL_Call POL_Install_FontsSmoothRGB
POL_Call POL_Install_LunaTheme 
POL_Call POL_Install_ATI_Black-Screen_Fix

POL_Wine_reboot
POL_Debug_Message "Wine windows reboot"

POL_SetupWindow_wait "Step finale dell'installazione in corso..." $TITLE
POL_Wine "$INSTALLER" "/S"
POL_Debug_Message "$INSTALLER running"
POL_Wine_WaitExit

POL_System_TmpDelete
POL_Debug_Message "TMP delate"
 
POL_Shortcut "sagra.exe" "$TITLE"
POL_Debug_Message "Shortcut sagra.exe"
 
POL_SetupWindow_Close
POL_Debug_Message "Closing"
exit