#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
F1::
Loop, read, vaultcodes.txt
{
	Loop, parse, A_LoopReadLine, %A_Tab%
	{
		send %A_LoopField% {Enter}
		send ^a{delete}
	}
	Sleep, 500
}
ExitApp