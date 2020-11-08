#!/usr/bin/env playonlinux-bash
# Date : (2020-07-23 18-30)
# Last revision : (2020-07-25 11-18)
# Wine version used : 3.0.3
# Distribution used to test : Lubuntu 20.04 LTS
# Author : Matteo Gheza
# PlayOnLinux : 4.3.4
# Script licence : GPL3
# Program licence : CC BY-ND 3.0 IT

[ "$PLAYONLINUX" = "" ] && exit 0
source "$PLAYONLINUX/lib/sources"

PREFIX="gestionestandgastronomico"
TITLE="Gestione Stand Gastronomico"
AUTHOR="Emanuele Gesuato"
AUTHOR_WEBSITE="http://www.gestionestandgastronomico.it/"
SCRIPT_AUTHOR="Matteo Gheza"
SOFTWARE_CATEGORIES="Office;Database;Finance;"

POL_Debug_Init
POL_SetupWindow_Init
POL_Debug_Message "Starting SetupWindow"
 
POL_SetupWindow_presentation "$TITLE" "$AUTHOR" "$AUTHOR_WEBSITE" "$SCRIPT_AUTHOR" "$PREFIX"
POL_Debug_Message "Started Setup WIZARD."
 
POL_System_TmpCreate $PREFIX
POL_Debug_Message "PREFIX: $PREFIX."
POL_Debug_Message "TITLE: $TITLE."
POL_Debug_Message "TMP DIR: $POL_System_TmpDir."
 
POL_SetupWindow_InstallMethod "LOCAL,DOWNLOAD" "$TITLE"
POL_Debug_Message "Installation method $INSTALL_METHOD."

if [ "$INSTALL_METHOD" = "LOCAL" ]; then
    POL_SetupWindow_browse "Seleziona il file di installazione o torna indietro" "$TITLE"
    #POL_SetupWindow_message "$(eval_gettext 'Select the installer file or go back')" "$TITLE"
    INSTALLER="$APP_ANSWER"
    POL_Debug_Message "Installer $INSTALLER."
elif [ "$INSTALL_METHOD" = "DOWNLOAD" ]; then
    cd "$POL_System_TmpDir" || exit 1
    POL_Download "http://www.gestionestandgastronomico.it/download/Gestione%20Sagra%20(2.2.1).exe"
    INSTALLER="$POL_System_TmpDir/Gestione%20Sagra%20(2.2.1).exe"
    POL_Debug_Message "Installer $INSTALLER."
fi
 
POL_Wine_SelectPrefix $PREFIX
POL_Wine_PrefixCreate
POL_Debug_Message "Prefix created."

Set_OS "win7"
 
POL_SetupWindow_wait "Installazione librerie aggiuntive..." "$TITLE"
#POL_SetupWindow_wait "$(eval_gettext 'Installing additional libraries...')" "$TITLE"

POL_Debug_Message "Installing additional libraries"

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

POL_SetupWindow_wait "Step finale dell'installazione in corso..." "$TITLE"
POL_Wine "$INSTALLER" "/S"
POL_Debug_Message "$INSTALLER running"
POL_Wine_WaitExit

POL_System_TmpDelete
POL_Debug_Message "TMP delete"

POL_Shortcut "sagra.exe" "$TITLE" "" "" "$SOFTWARE_CATEGORIES"
POL_Debug_Message "Shortcut sagra.exe"
 
POL_SetupWindow_Close
POL_Debug_Message "Closing"

exit 0
