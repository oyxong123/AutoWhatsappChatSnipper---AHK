;#Requires AutoHotkey v1.1.37.01
 
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force ; Makes it so only one script instance is running at any time and skips prompt.
#WinActivateForce  ; Enable activating windows forcefully.

/* 
Prerequisites:
1. Open whatsapp web and open the chat that you want to snip.
2. Scroll up manually to the part where the snipping should start.
3. Download all undownloaded stickers or media that should be included in the snipped images.
4. Set zoom amount of browser to 50%. (Have only tested on Chrome and on laptop with 1365 x 767 screen size)
5. Make sure the current cursor focus is not on the typing text area. (If on the typing text area, click on the chat history area to deselect it, otherwise the texting cursor will be present in the snipped images)
6. Test save a dummy image in the folder that you want the images to be saved in first, then delete it manually before starting the program. (This is to preserve the memory for what folder the 'save as' dialog will open)

Output:
1. A folder with snipped images that are named based on current date and an index that increments from 1. (eg. 2024_09_11_1)

Remarks:
1. Depending on the computer you are running this script on, you might need to modify the snipping coordinates within the 'Snip()' function.
2. If you want, you can modify how the file names are named to fit your needs.
 */


; #IfWinActive WhatsApp - Google Chrome

; Global Variables
breakLoop := 0

; Hotkeys
PrintScreen & o:: ; Hotkey to start the program.
	CoordMode, Mouse, Screen  ; Sets coordinate mode to base on screen.
	
    ; Prompt confirmation dialog to start the snipping process. 
	MsgBox, 1, Whatsapp Chat Snip Tool, Start?, 
	IfMsgBox, OK
	{
		breakLoop := 0
    	StartProgram()
	}
	Return

~BackSpace:: ; Press to stop snipping process. (Try to avoid pressing it during file name input as that might mess up the file name. But other than that, it has been tested successfully on other moments of the snipping process)
	breakLoop := 1
	Return

; Functions 
StartProgram()
{
	global breakLoop ; Required to access the global variable from a function.
	; Countdown before program start.
	Loop, 5
	{
		SoundBeep,, 500
		Sleep, 500
	}

	; Keep on snipping until user enter keypress to stop it.	
	i := 1
	while (True)
	{
		OpenSnippingTool()
		/* If not WinExist("ahk_exe SnippingTool.exe")
		{
			WinWaitActive, ahk_exe SnippingTool.exe
		}
		 */
		Snip(i)
		Sleep, 1000
		Send, !{Tab} ; Switch window to ws web.
		Sleep, 1000
		ScrollPageDown()
		if (breakLoop = 1) ; Value is modified from other key press.
		{
			Send, !{Tab} ; Switch window to snipping tool.
			Sleep, 1000
			Send, !{F4} ; Close snipping tool.
			Break
		}
		i++
		Sleep, 3500
	}
	MsgBox, % "Completed!"
}

OpenSnippingTool()
{
	Run, snippingtool.exe
	WinWaitActive, ahk_exe SnippingTool.exe
	Return
}

Snip(i)
{
	Send, ^n
	WinWait, ahk_class Microsoft-Windows-SnipperCaptureForm
	Sleep, 1000
	MouseClickDrag, Left, 557, 133, 1080, 718, 0 ; Snip the chat area. (Should be modified based on each specific computer screen case)
	WinWaitActive, ahk_class Microsoft-Windows-SnipperEditor
	Send, ^s
	MouseMove, 825, 400, 0  ; Move back mouse cursor to the center of the chat history area. (Should be modified based on each specific computer screen case)
	Sleep, 1000

	; Go to file name input field.
	Send, !t
	ResetKeyboard()
	Send, !n

	; Type in new file name and save.
	datetimeNow := A_NOW 
	FormatTime, dateToday, datetimeNow, yyyy_MM_dd
	SetInputLanguageToEnglishMalaysia()
	fileName := % dateToday . "_" . i
	Send, % fileName
	Send, {Enter}
}

ScrollPageDown()
{
	Loop, 5 
	{
		Send, {WheelDown}
		Sleep, 200 ; Important to add to ensure consistency in wheel down'ed screen amount.
	}
}

ResetKeyboard()
{
	Send, {LShift}
	Send, {LCtrl}
	Send, {LAlt}
	Send, {RShift}
	Send, {RCtrl}
	Send, {RAlt}
}

SetInputLanguageToEnglishMalaysia()
{
	languageId := "0x4409"
    ControlGetFocus, focusControl
    PostMessage, 0x0050, 0, %languageId%, %focusControl%
}