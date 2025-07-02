#NoEnv
#SingleInstance, Force
#InstallKeybdHook
#InstallMouseHook
#UseHook On
SendMode, Input
SetBatchLines, -1
CoordMode, Mouse, Screen
SetMouseDelay, -1
SetKeyDelay, -1

; Global settings
global g_moveX := 28
global g_moveY := 7
global g_moveCount := 35
global g_sleepInterval := 1
global g_Paused := false
global SettingsGuiVisible := false

; Load settings
LoadSettings() {
    global
    IfExist, settings.ini
    {
        IniRead, g_moveX, settings.ini, Settings, moveX, %g_moveX%
        IniRead, g_moveY, settings.ini, Settings, moveY, %g_moveY%
        IniRead, g_moveCount, settings.ini, Settings, moveCount, %g_moveCount%
        IniRead, g_sleepInterval, settings.ini, Settings, sleepInterval, %g_sleepInterval%
    }
}

; Save settings
SaveSettings() {
    global
    FileDelete, settings.ini
    IniWrite, %g_moveX%, settings.ini, Settings, moveX
    IniWrite, %g_moveY%, settings.ini, Settings, moveY
    IniWrite, %g_moveCount%, settings.ini, Settings, moveCount
    IniWrite, %g_sleepInterval%, settings.ini, Settings, sleepInterval
}

; Load settings on start
LoadSettings()

; Mouse movement function
mouseXY(x, y) {
    DllCall("mouse_event", "UInt", 0x01, "Int", x, "Int", y, "UInt", 0, "Ptr", 0)
}

; Main strafe function
strafe(left) {
    global g_moveX, g_moveY, g_moveCount, g_sleepInterval, g_Paused
    if g_Paused
        return
        
    TimePeriod := 1
    key := left ? "d" : "a"
    hMove := left ? g_moveX : -g_moveX
    vMove := left ? -g_moveY : g_moveY

    DllCall("winmm\timeBeginPeriod", "UInt", TimePeriod)
    Send, {%key% down}
    DllCall("Sleep", "UInt", 5)

    Loop, %g_moveCount% {
        if g_Paused
            break
        mouseXY(hMove, vMove)
        DllCall("Sleep", "UInt", g_sleepInterval)
    }
    
    Send, {%key% up}
    DllCall("winmm\timeEndPeriod", "UInt", TimePeriod)
}

; Jump and release W function
DoJumpAndReleaseW() {
    if GetKeyState("w", "P") {
        SendInput, {w up}
    }
    SendInput, {space}
}

; Hotkeys
$space::
    if g_Paused {
        Send, {Blind}{space}
        return
    }
    
    ; Block original space event
    SetKeyDelay, -1
    DoJumpAndReleaseW()
    
    ; Start strafing
    while GetKeyState("space", "P") {
        if g_Paused
            break
        strafe(true)
        strafe(false)
    }
return

RButton::
    if g_Paused {
        Send, {Blind}{RButton down}
        KeyWait, RButton
        Send, {Blind}{RButton up}
        return
    }
    
    ; If space not pressed - jump and release W
    if !GetKeyState("space", "P") {
        DoJumpAndReleaseW()
    }
    
    ; Pass right mouse button to game
    Send, {Blind}{RButton down}
    KeyWait, RButton
    Send, {Blind}{RButton up}
return

F2:: ToggleSettingsMenu()
Del:: ExitApp

; Toggle settings menu
ToggleSettingsMenu() {
    global SettingsGuiVisible
    if SettingsGuiVisible {
        Gui, SettingsMenu:Hide
        SettingsGuiVisible := false
    } else {
        ShowSettingsMenu()
    }
}

; Show settings menu (English version)
ShowSettingsMenu() {
    global g_moveX, g_moveY, g_moveCount, g_sleepInterval, g_Paused, SettingsGuiVisible
    
    ; Create GUI
    Gui, SettingsMenu:New, +AlwaysOnTop -MinimizeBox, Strafe Settings
    
    ; Horizontal offset
    Gui, Add, Text, Section, Horizontal offset (X):
    Gui, Add, Edit, w60 ys vEditMoveX, %g_moveX%
    
    ; Vertical offset
    Gui, Add, Text, xs Section, Vertical offset (Y):
    Gui, Add, Edit, w60 ys vEditMoveY, %g_moveY%
    
    ; Steps count
    Gui, Add, Text, xs Section, Steps count:
    Gui, Add, Edit, w60 ys vEditMoveCount, %g_moveCount%
    
    ; Speed
    Gui, Add, Text, xs Section, Speed (ms):
    Gui, Add, Edit, w60 ys vEditSleepInterval, %g_sleepInterval%
    
    ; Control buttons
    Gui, Add, Button, xs w100 gApplySettings, Save
    Gui, Add, Button, x+10 w100 gPauseToggle, % g_Paused ? "Resume" : "Pause"
    Gui, Add, Button, x+10 w100 gCloseSettings, Close
    
    Gui, Show
    SettingsGuiVisible := true
}

; Apply settings
ApplySettings:
    Gui, Submit, NoHide
    g_moveX := EditMoveX
    g_moveY := EditMoveY
    g_moveCount := EditMoveCount
    g_sleepInterval := EditSleepInterval
    
    SaveSettings()
    TrayTip, Settings saved, Parameters updated successfully!, 1, 1
return

; Toggle pause
PauseToggle:
    g_Paused := !g_Paused
    GuiControl, SettingsMenu:, PauseToggle, % g_Paused ? "Resume" : "Pause"
    TrayTip, Script status, % g_Paused ? "Script paused" : "Script active", 1, 1
return

; Close menu
CloseSettings:
    Gui, SettingsMenu:Hide
    SettingsGuiVisible := false
return

; Close via X button
SettingsMenuGuiClose:
    Gui, SettingsMenu:Hide
    SettingsGuiVisible := false
return

; Save settings on exit
OnExit("ExitHandler")
ExitHandler() {
    SaveSettings()
    ExitApp
}

; Settings check function (F3)
F3::
    MsgBox, Settings:`nX=%g_moveX%`nY=%g_moveY%`nSteps=%g_moveCount%`nSpeed=%g_sleepInterval%
    if FileExist("settings.ini")
        Run, notepad.exe settings.ini
    else
        MsgBox, Settings file doesn't exist!
return