#singleinstance force

#Include fut_lib.ahk
#Include fut_collect.ahk
#Include fut_mission.ahk
#Include fut_tasks.ahk
#Include fut_training.ahk

WriteLog("Script reloaded`n")

hStopIcon := SBAR_ExtractIcon("shell32.dll",220,16,16)
hWaitIcon := SBAR_ExtractIcon("shell32.dll",266,16,16)
hRunIcon := SBAR_ExtractIcon("shell32.dll",177,16,16)

Gui, AutoWoT:  New, +Resize +MinSize300x400, WoT Automaton
Gui, AutoWoT:Default
Gui, Margin, 10
;Gui, Add, GroupBox, x10 r2 Section w300, Wait Timer
Gui, Add, GroupBox, x10 r4 Section w300, Mission Runner
Gui, Add, Button, xs+10 ys+20 r1 gRunMission, Run &Mission
Gui, Add, DropDownList, x+10 r20 vMissionToRun, % GetMissionList()
Gui, Add, Checkbox, vBuyMissionFuel gUpdateFuel Checked0 x+10 yp+5 r1, Auto-buy fuel
Gui, Add, Checkbox, vLoopMission gUpdateLoop Checked0 yp+20 r1, Loop
Gui, Add, Button, xs+10 y+10 r1 gShowMissionBuilder, &Build Mission
Gui, Add, Button, x+10 r1 gClickSpecials, Click &Specials
Gui, Add, Button, gDelayedRun xs+10 ys+45 r1, &Delayed Run
Gui, Add, GroupBox, x10 r2 Section w300, Training
Gui, Add, Button, xs+10 ys+20 r1 gSelectChipsN, Select Chi&ps
Gui, Add, Text,x+10 yp+5 r1, Chips to train:
Gui, Add, Edit, w50 Number vChipsToTrain x+5 yp-5 r1
Gui, Add, UpDown, Range1-120, 12
Gui, Add, GroupBox, x10 r2 Section w300, Cash Clicker
Gui, Add, Button, xs+10 ys+20 r1 gSearchScreen, Start &Clicker
Gui, Add, Button, x+10 r1 gCoverMap, Click All
Gui, Add, Button, gStop x10 r1 Section, &Quit execution
Gui, Add, Button, gRestartApp x+10 r1, &Restart game
Gui, Add, Button, gRestartScript x+10 r1, R&eload script
Gui, Add,StatusBar,hWndhWoTSB
Gui, show,x50 y50,WoT Automaton

SBAR_SetParts(hWoTSB,20,180,30,50,-1)
SBAR_ProgressBar(hWoTSB,"",4,"Show")
StatusIcon(hStopIcon)

GuiControl,,ForceLogin,%ForceLoginCheck%
GuiControl,,LoopMission,%LoopMissionCheck%
GuiControl,,BuyMissionFUel,%BuyMissionFuelCheck%

StatusNumber(0)
StatusTimer(0)
StatusProgress(0)
StatusText("Stopped")

stop := 0

Stop:
^!+q::
WriteLog("Manual stop")
Loop, 10	; Make sure any waiting or sleeping threads are done resolving
{
	StopAll()
	Sleep 200
}
Return


^+!p::
	Pause
Return


^!+w::
	Gui,AutoWoT:show,x50 y50,WoT Automaton
	WinActivate BlueStacks
Return



StartClicker:
^!+c::
	SearchScreen(c)
Return

^+!o::
	Screenshot()
Return

^+!u::
	; MsgBox finding mission status
	Sleep 500
	S := GetMissionStatus()
	ST := MissionStatus.Text
	SC := MissionStatus.Color
	MsgBox, %S% %ST% %SC% 
return

SelectChipsN:
Gui, Submit, NoHide
SelectChips(ChipsToTrain)
Return

ClickSpecials:
^!+s::
while (GetMissionStatus() != 9)
{
	BattleSpecials(0)
}
Return

RunMission:
RunMission()
return

^!+m::
sleep 500
TrainNextChar(84)
Return

RestartScript:
^!+r::
	Reload
Return

^+!x::
sleep 1000
	RewardScreenshot(MissionToRun)
Return

ReloadLoop()
{
	CloseGame()
	OpenGame()
}

AddPizza(p)
{
	WriteLog("Spent " . -p . " pizza")
}