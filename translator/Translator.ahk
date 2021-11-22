#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Ctrl + Shift + Z translate english to polish
^+z::

Clipboard =
Send ^c
Clipwait, 1
Myvariable := clipboard
Run microsoft-edge:https://translate.google.pl/?hl=pl&tab=TT&sl=en&tl=pl&op=translate
pageLoaded := False
while(pageLoaded = False)
{
    sleep 100
    ImageSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, loaded.png
    if ErrorLevel = 0
    {
        pageLoaded := True
    }
}

Send ^v
Return


; Ctrl + Shift + X translate polish to english

^+x::

Clipboard =
Send ^c
Clipwait, 1
Myvariable := clipboard
Run microsoft-edge:https://translate.google.pl/?hl=pl&tab=TT&sl=pl&tl=en&op=translate
pageLoaded := False
while(pageLoaded = False)
{
    sleep 100
    ImageSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, loaded.png
    if ErrorLevel = 0
    {
        pageLoaded := True
    }
}

Send ^v
Return


