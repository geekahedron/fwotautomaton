#Include fut_lib.ahk
#Include fut_findbase.ahk

MissionStatus := {}


Gui, FWoTM:New, +Resize +MinSize300x400, WoT Mission Builder
Gui, FWoTM:Margin, 10
Gui, FWoTM:Add, GroupBox, x10 r10 Section w300, Mission Builder
Gui, FWoTM:Add, Button, xs+10 ys+20 r1 gBuildMission, &Build Mission
Gui, FWoTM:Add, Text, xs+10 y+10 r1, Mission Name:
Gui, FWoTM:Add, Edit, x+10 r1 w200 vMissionName, 
Gui, FWoTM:Add, Text, xs+10 y+10 r1, Planet:
Gui, FWoTM:Add, DropDownList, x+10 r10 vMissionPlanet, % GetPlanetList()
Gui, FWoTM:Add, Text, x+10 r1, #:
Gui, FWoTM:Add, Edit, x+10 r1 w20 vMissionNum Number, 
Gui, FWoTM:Add, Button, xs+10 y+10 r1 gNodesComplete, Nodes &Complete

ShowMissionBuilder()
{
	Gui, FWoTM:show,y50,WoT Mission Builder
}

BuildMission()
{
	global coords, missioncoords, savedmissions
	global stop, MissionName, MissionPlanet, MissionNum
	Gui, FWotM:Submit,NoHide
	SplashTextOn, 250,70, MissionRun, Building Mission: %MissionName%`nWaiting for main screen

	stop := 0

	missioncount := 1
	for key, value in savedmissions
		missioncount++
	savedmissions[%missioncount%] := %MissionName%
	str = savedmissions[%missioncount%] := "%MissionName%"`n
	FileAppend, %str%, fut_missioncoords.ahk
	str = missioncoords["%MissionName%"] := {}`n
	FileAppend, %str%, fut_missioncoords.ahk

	savedmissions[%planetname%] := %MissionPlanet%
	str = missioncoords["%MissionName%"]["planetname"] := "%MissionPlanet%"`n
	FileAppend, %str%, fut_missioncoords.ahk

	savedmissions[%missionnum%] := %MissionNum%
	str = missioncoords["%MissionName%"]["missionnum"] := %MissionNum%`n
	FileAppend, %str%, fut_missioncoords.ahk

	; get to main screen
	WaitMissionStatus(1)
	
	; click to mission screen
	ClickCoords(coords["mission_launchicon"])
	
	ControlSetText, Static1, Building Mission: %MissionName%`nLoading planet selection screen, MissionRun
	
	; get to planet select
	while (GetMissionStatus() != 2)
		Sleep 500

	ControlSetText, Static1, Building Mission: %MissionName%`nSelecting Planet, MissionRun
	while (FindPlanet(MissionPlanet))
		Sleep 100

	
	ControlSetText, Static1, Building Mission: %MissionName%`nLoading mission selection, MissionRun
	; get to mission select
	while (GetMissionStatus() != 4)
		Sleep 500

	ControlSetText, Static1, Building Mission: %MissionName%`nSelecting mission, MissionRun
	; click mission select
	ClickMission(MissionNum)
	Sleep 100

	; click "Next" button
	Click 750 480
	Sleep 100

	ControlSetText, Static1, Building Mission: %MissionName%`nLoading party selection, MissionRun
	; get to party select
	while (GetMissionStatus() != 5)
		Sleep 500
	
	ControlSetText, Static1, Building Mission: %MissionName%`nChoosing party, MissionRun
	; Select top 5 party members
	Loop 5
	{
		ClickCoords(coords["party_select"][A_Index])
		Sleep 100
	}

	; click "Start Mission" button
	ClickCoords(coords["mission_missionstart"])
	Sleep 100

	ControlSetText, Static1, Building Mission: %MissionName%`nClick next battle, MissionRun
	; click through map and battles	
	n := 1
	while (!stop)
	{
		GetNode(n++)
	}

	ControlSetText, Static1, Building Mission`nMission complete, MissionRun
	; get to mission complete screen
	while (GetMissionStatus() != 10)
		Sleep 500

	Sleep 5000
	; TODO:: Wait for "Return button"
		
	; click "Return" button
	ClickCoords(coords["mission_return"])

	SplashTextOff
}

MissionScroll()
{
	BlockInput, On
	WinActivate BlueStacks
	Sleep 200
	MouseMove, 100, 475, 1
	Sleep 100
	MouseClickDrag, L, 100, 480, 100, 310, 30
	BlockInput, Off
	Sleep 500
}

ClickMission(num)
{
	global findbase
	global coords
	
	mgroup := num[1]
	msel := num[2]
	
	Debug("Finding mission group " . mgroup)
	scrollcount := 0
	if (mgroup == 1)
	{
		Debug("No need to look for group 1")
	} else {
		ClickCoord("mission_group1")
		Sleep 500
		while (!(mg := FindPatternInArea("missiongroup_area",0.1,0.1,findbase["mission"]["selectgroup"][mgroup])) && scrollcount < 30)
		{
			Debug("Not found on screen, scrolling")
			MissionScroll()
			scrollcount++
		}
	}

	if (mgroup == 1 || mg)
	{
		if (mg)
		{
			x := mg["x"]
			y := mg["y"]
			Debug("Found pattern " . mgroup . ":" . x . "," . y)
			ClickCoords([x,y])
			Screenshot(, , , , , "missionselect", "-g" . mgroup)
		}
		
		; Debug("Looking for mission " . msel . ", scrolling " . scrollcount . " times")
		; Loop %scrollcount%
		; {
			; Debug("Scrolling")
			; MissionScroll()
		; }
		Sleep 500
		
		st := 2
		while (!(ms :=  FindPatternInArea("mission_area",0.1,0.1,findbase["mission"]["select"][msel])) && st-- > 0)
		{
			MissionScroll()
		}
		if (ms)
		{
			x := ms["x"]
			y := ms["y"]
			Debug("Found pattern " . msel . ":" . x . "," . y)
			ClickCoords([x,y])
			Sleep 200
			Screenshot(, , , , , "missionselect", "-s" . msel)
		} else {
			Debug("Selection not found")
			Screenshot(, , , , , "missionselect", "nf-s" . msel)
			; ReloadLoop()
			; MsgBox %msel% not found
		}
	} else {
		Debug("Group not found, scrolled too many times")
		Screenshot(, , , , , "missionselect", "nf-g" . mgroup)
		; ReloadLoop()
		; MsgBox %mgroup% not found
	}

	
	
	; ml := num
	; while (!(mn := FindPatternInArea("mission_area",0.1,0.1,findbase["mission"]["select"][num])) && ml > 5 )
	; {
		; Debug("Not found on screen, scrolling")
		; MissionScroll()
		; ml-=2
	; }


	; if (mn)
	; {
		; x := mn["x"]
		; y := mn["y"]
		; Debug("Found pattern " . num . ":" . x . "," . y)
		; Click %x% %y%
		; Screenshot(, , , , , "missionselect", "-" . num)
	; } else {
		; x := coords["mission_select"]["x"]
		; o := coords["mission_select"]["height"] * (ml-0.5)
		; y := coords["mission_select"]["y"] + o
		; Debug("Pattern not found, clicking coords " x . "," . y " . for mission " . num . "(" . ml . ")")
		; Click, %x%, %y%
		; Screenshot(, , , , , "missionselect", "nf-" . num)
	; }
	StartTimer(1)
}

GetPlanet()
{
	global MissionName
	KeyWait, LButton, D
	MouseGetPos, mX, mY
	PixelGetColor, c, mX, mY
	str = missioncoords["%MissionName%"]["planetcolor"] := %c%`n
	FileAppend, %str%, fut_missioncoords.ahk
}

GetNode(n)
{
	global MissionName
	c := 1
	str = missioncoords["%MissionName%"][%n%] := {}`n
	FileAppend, %str%, fut_missioncoords.ahk
	while (GetMissionStatus() != 7)
	{
		KeyWait, LButton, D
		MouseGetPos, mX, mY
		str = missioncoords["%MissionName%"][%n%][%c%] := [%mX%,%mY%]`n
		FileAppend, %str%, fut_missioncoords.ahk
	}
	DoBattle()
}

NodesComplete()
{
	global stop
	stop := 1
}

AddMissionCoords(name, node, x, y)
{
	global missioncoords
	missioncoords[name][node] := [x, y]

	str = missioncoords["%name%"][%node%] := [%x%,%y%]`n
	FileAppend, %str%, fut_missioncoords.ahk
}

ForfeitMission()
{
	WaitMissionStatus(6)
	
	Sleep 300
	ClickCoord("mission_close")

	Sleep 300
	ClickCoord("mission_forfeit")
	
	Sleep 300
	ClickCoord("mission_forfeitconfirm")
}

GetMissionStatus()
{
	global coords
	global stop
	global MissionStatus
	global BuyMissionFuel
	global nextcoords
	global findbase
	global restartMission, restartCheck, restartCount

	; Debug("GetMissionStatus()")
	; if (restartMission)
	; {
		; Debug("GetMissionStatus() return: restart mission")
		; return
	; }
;	WinActivate BlueStacks

	Gui, AutoWoT:Submit, NoHide

	PixelColorCoords(color1, coords["mission_launchicon"])
	PixelColorCoords(color2, coords["mission_battlestart"])
	PixelColorCoords(color3, coords["mission_exitpause"])
	PixelColorCoords(color3b, coords["mission_exitpause2"])
	PixelColorCoords(colorm, coords["mission_progress"])
	PixelColorCoords(color4, coords["mission_victory"])
	PixelColorCoords(color5, coords["mission_revive"])
	PixelColorCoords(color6, coords["mission_complete"])
	PixelColorCoords(colorf1, coords["mission_fuelrefill"])
	PixelColorCoords(colorf2, coords["mission_fuelpizza"])
	PixelColorCoords(colorf3, coords["mission_fuelpizzaconfirm"])
	MissionStatus.Color := color3 

	; Debug("Colors found")
	if (FindPatternInArea("mission_healparty",0.1,0.1,findbase["mission"]["healyourparty"],false))
	{
		MissionStatus.Text := "Heal party"
		MissionStatus.Value := 14
		; if (loc := FindPatternInArea("mission_healparty",0,0,findbase["mission"]["closebutton"],false))
		; {
			; Debug("Status found, closing heal window")
			; ClickCoords([loc["x"],loc["y"]])
		; }
	}
	else if (FindPatternInArea("mission_fail",0,0,findbase["mission"]["failed"],false))
	{
		MissionStatus.Text := "Battle failed"
		MissionStatus.Value := 15
		Debug("Status found, failed battle, realoding")
		ReloadLoop()
	; TODO:: forfeit and continue
	}
	else if (FindPatternInArea("choosecharacter",0,0,findbase["mission"]["choosecharacter"],false))
	{
		MissionStatus.Text := "Choose character"
		MissionStatus.Value := 11
	}
	else if (color1 == 0x6f3720 || MainScreenIcons())
	{
		MissionStatus.Color := color1
		MissionStatus.Text := "Game with HUD"
		MissionStatus.Value := 1
	}
	else if (color1 == 0x5f5e00)
	{
		MissionStatus.Color := color1
		MissionStatus.Text := "Idle game"
		MissionStatus.Value := 0
	}
	else if (color5 == 0xf4fff1)
	{
		MissionStatus.Color := color5
		MissionStatus.Text := "Mission Revive"
		ClickCoords(coords["mission_revive"])
		MissionStatus.Value := 6
	}
	else if (color3 == 0x576505 || color3 == 0x596704 || color3 == 0x566305) 
	{
		MissionStatus.Color := color3
		MissionStatus.Text := "Planets"
		MissionStatus.Value := 2
	}
	else if (color3 == 0x3a2818 || color3 == 0x4b4710 || color3 == 0x3b2a18)
	{
		MissionStatus.Color := color3
		MissionStatus.Text := "Mission select"
		MissionStatus.Value := 4
	}
	; else if (colorm == 0x01dffe)
	; {
		; MissionStatus.Color := colorm
		; MissionStatus.Text := "Mission select"
		; MissionStatus.Value := 4
	; }
	else if (color3 == 0x382a1d)
	{
		MissionStatus.Color := color3
		MissionStatus.Text := "Party select"
		MissionStatus.Value := 5
	}
	else if (colorf2 == 0x313f52)
	{
		MissionStatus.Color := colorf2
		MissionStatus.Text := "Fuel Refill Pizza"
		MissionStatus.Value := 15
		; if (BuyMissionFuel)
		; {
			; BuyFuel()
		; }
	}
	else if (colorf3 == 0x2BE5FF)
	{
		MissionStatus.Color := colorf3
		MissionStatus.Text := "Fuel Refill Pizza Confirm"
		MissionStatus.Value := 16
		; if (BuyMissionFuel)
		; {
			; BuyFuel()
		; }
	}
	else if (colorf1 == 0xae5440)
	{
		MissionStatus.Color := colorf1
		MissionStatus.Text := "Fuel Refill"
		MissionStatus.Value := 17
		; if (BuyMissionFuel)
		; {
			; WriteLog("Using fuel to continue mission")
			; ClickCoords(coords["mission_fuelpizza"])
		; }
	}
	else if (color2 == 0xafed45)
	{
		MissionStatus.Color := color2
		MissionStatus.Text := "Battle start"
		MissionStatus.Value := 7
	}
	else if (color3 == 0x586704 || color3 == 0x596805 || color3 == 0x596806 || color3 == 0x737e09 || color3b == 0x523506)
	{
		MissionStatus.Color := color3
		MissionStatus.Text := "Mission map"
		MissionStatus.Value := 6
	}
	else if (color4 == 0xafed45)
	{
		MissionStatus.Color := color4
		MissionStatus.Text := "Victory"
		MissionStatus.Value := 9
	}
	else if (color3 == 0x738a00)
	{
		MissionStatus.Color := color3
		MissionStatus.Text := "Battle screen"
		MissionStatus.Value := 8
	}
	else if (color6 == 0x3b3bec)
	{
		MissionStatus.Color := color6
		MissionStatus.Text := "Mission Complete"
		MissionStatus.Value := 10
	}
	else
	{
		MissionStatus.Text := "unknown"
		MissionStatus.Value := 0
	}
	debug("Mission status " . MissionStatus.value . ":" . MissionStatus.Text)
	Return MissionStatus.Value
}

CheckFuel()
{
	return GetMissionStatus()
}

BuyFuel()
{
	global stop, missioncoords, coords, nextcoords, MissionToRun, restartMission, findbase

	Debug("BuyFuel()")
	
	c := 0
	while (!stop && GetMissionStatus() != 6 && c++ < 10)
		{
		WriteLog("Buying fuel to continue mission (" nextcoords[1] . "," nextcoords[2] . ")")
		Debug("Buying fuel to continue mission")
		ClickCoords(coords["mission_fuelpizza"])
		Sleep 500
		ClickCoords(coords["mission_fuelpizzaconfirm"])
		Sleep 500
		ClickCoords(coords["mission_fuelpizza"])
		Sleep 500
		; ClickCoords(coords["mission_close"])
		; Sleep 500
		; ClickCoords(coords["mission_forfeit"])
		; restartMission := 1
	}
	AddPizza(-25)
	
	ContinuePath()
}	

ContinuePath()
{
	global stop, missioncoords, coords, nextcoords, MissionToRun, restartMission, findbase
	Debug("Clicking (" nextcoords[1] . "," nextcoords[2] . ")")
	ClickCoords(nextcoords)
	Sleep 2000
	
	c := 0
	while (!stop && GetMissionStatus() != 7 && GetMissionStatus() != 11 && GetMissionStatus() != 10)
	{
		if (node := FindPatternInArea("planet_area",0,0,findbase["mission"]["nodeglow"]))
		{
			x := node["x"]
			y := node["y"]
			Debug("Glowing node found, clicking " . x . "," . y)
			ClickCoords([x,y])
;			Click %x% %y%
		}
		else
		{
			; TODO:: add coordinates and click methodically instead of randomly
			if (c++ > 50)
			{
				Debug("Too many tries, switching modes")
				ReloadLoop()
			}
			Random, rndNode, 1, missioncoords[MissionToRun].length()
			Random, rndPath, 1, missioncoords[MissionToRun][rndNode].length()
			x := missioncoords[MissionToRun][rndNode][rndPath][1]
			y := missioncoords[MissionToRun][rndNode][rndPath][2]

			Screenshot(,,,,,,"-" . MissionToRun . "-nodenotfound")
			Debug("Glowing node not found, clicking random coords [" . rndNode . "][" . rndPath . "] (" . x . "," . y . ")")
			ClickCoords([x,y])
;			Click %x% %y%
		}
		StartTimer(3)
	}
	Debug("Status: " . GetMissionStatus() . "; continuing")

}

BattleSpecials(PVP := 0, nbr := 1)
{
	global coords
	global MissionToRun
;	SplashTextOn, 200,100, MissionRun, Checking specials
	Loop, 5
	{
		WinActivate BlueStacks
		icons := "mission_battleicons"
	
		if (PVP)
		{
			icons := "pvp_battleicons"
		}
		x := coords[icons][A_Index]	

		PixelGetColor, c, %x%, 446
;		ControlSetText, Static1, button %A_Index% color: %c% (%x% 446), MissionRun
;		Sleep 500
		if (c == 0x00f8ff)	; yellow border (special ready)
		{
;			ControlSetText, Static1, Running: %MissionToRun%`nBattling %nbr%`nbutton %A_Index% ready to click, MissionRun
;			StatusNumber(nbr . " [R]")
			Click %x% 450
		}
		else ; if (c == 0x9ab900)	; blue border
		{
			; ControlSetText, Static1, Running: %MissionToRun%`nBattling %nbr%`n%A_Index% not ready, MissionRun
;			StatusNumber(nbr . " [X]")
			continue
		}
;		Sleep 500
	}
	ClickCoord("battle_center",false,false)
}

FindPlanet(name)
{
	global findbase

	found := 0
	f:=1
	c := 0
	while (!(loc:=FindPatternInArea("planet_area",0.2,0.2,findbase["planetnames"][name])))
	{
		if (c > 20)
		{
			Debug("Scrolled planets too many times, changing mode")
			ReloadLoop()
		}
		MissionMapScroll(f*600)
		f*=-1
	}
	rX := loc["x"]
	rY := loc["y"]
	Debug("Found planet " . name . " at " . rX . "," . rY . ":" . loc.1.5)
	Click %rX% %rY%
	found := 1

	
	return found
}

HealParty()
{
	global findbase
	healed := 0
	Loop, 5
	{
		if (FindPatternInArea("party_healthbar" . A_Index,0,0,findbase["health_skull"]))
		{
			; MsgBox Crew member %A_Index% is dead
			Debug("Crew member " . A_Index . " is dead")
		}
		if (FindPatternInArea("party_healthbar" . A_Index,0,0,findbase["health_heart"]))
		{
			PixelColorCoord(health,"party_health",A_Index)
			; MsgBox Crew member %A_Index% is alive (%health%)
			;red 0x1515b7
			;yellow 0x3ce7ff
			;full 0xcaff80
			
			If (health == 0xcaff80)
			{
				; MsgBox Crew member %A_Index% has good health
			} else {
				Debug("Healing party member " . A_Index . "(" . health . ")")
				HealPartyMember(A_Index)
				healed++
			}
		}
	}
	Debug(healed . " members healed")
	return healed
}

HealPartyMember(num)
{
	ClickCoord("party_health",num)
	Sleep 100
	
	ClickCoord("healbutton")
	Sleep 100
	
	ClickCoord("healclose")
}

WaitMissionStatus(s, x:=700, y:=400)
{
	global BuyMissionFuel
	Debug("WaitMissionStatus(" . s . ")")
	c := 1
	rt := 0

	while (!stop && (st := GetMissionStatus()) != s)
	{
		Sleep 200
		
		if (st == 14)	; party heal
		{
			Debug("Heal window found during status check, closing")
			if (loc := FindPatternInArea("mission_healparty",0,0,findbase["mission"]["closebutton"],false))
			{
				Debug("Closing heal window")
				ClickCoords([loc["x"],loc["y"]])
			} else {
				Debug("Heal window close button not found, clicking all locations")
				ClickCoord("healpartyclose")	; 5 crew members
				ClickCoord("healpartyclose4")	; 5 crew members
				ClickCoord("healpartyclose3")	; 5 crew members
				; ClickCoord("healpartyclose",[-28,0])	; 4 crew members
				; ClickCoord("healpartyclose",[-56,0])	; 3 crew members
				; ClickCoord("healpartyclose",[-84,0])	; 2 crew members
				; ClickCoord("healpartyclose",[-112,0])	; 1 crew member
			}
		}

		if (st == 15 && BuyMissionFuel) ; fuel pizza
		{
			Debug("Fuel pizza")
			ClickCoord("mission_fuelpizza")
			AddPizza(-25)
		}
		if (st == 16  && BuyMissionFuel)
		{
			Debug("Fuel pizza confirm")
			ClickCoord("mission_fuelpizzaconfirm")
		}
		if (st == 17 && BuyMissionFuel)
		{
			Debug("Fuel pizza buy")
			WriteLog("Buying fuel to coninue mission")
			ClickCoord("mission_fuelpizza")
			ContinuePath()
		}
		
		c++
		if (mod(c, 20) == 0)
		{
;			WriteLog(s . " Waiting too long (" . c . "), clicking")
			Debug(s . " Waiting too long (" . c . "), clicking")
			Click %x% %y%
		}
		if (mod(c, 100) == 0)
		{
			SoundBeep
			if (s == 7 || s == 11)
			{
				ContinuePath()
			}
		}
		if (c > 600)
		{
			if (s == 1 && rt < 10)
			{
				WriteLog(s . " Timed out (" . c . "), restarting")
				Debug(s . " Timed out (" . c . "), restarting")
				LoadStatus.State := 0
				StatusIcon(hWaitIcon)
				RestartApp()
				LoadStatus.State := 1
				StatusIcon(hRunIcon)
				c := 0
				rt++
			}
			else
			{
				WriteLog(s . " Timed out (" . c . "), starting reload loop")
				Debug(s . " Timed out (" . c . "), starting reload loop")
				ScreenShot()
				ReloadLoop()
			}
		}
	}
}

SelectCharacter(char)
{
	Debug("SelectCharacter(" . char . ")")
	global characters, findbase
	
	cl := characters[char][1]
	; PixelColorCoord(c,"party",cl,[0,-13])
	; if (c == 0xbcff5e)
	if (FindPatternInArea("partyclass_area",0,0,findbase["mission"]["crew"][cl . "sel"]))
	{
		WinActivate BlueStacks
		Debug(cl . "already selected, deselecting")
		ClickCoord("party",cl)
	}
	Sleep 500
	Debug("Clicking " . cl . " button")
	WinActivate BlueStacks
	ClickCoord("party",cl)
	Sleep 300
	
	Debug("Looking for " . char)
	WinActivate BlueStacks
	lt := 20
	while ((!loc := FindPatternInArea("party_area",0.1,0.1,findbase["mission"]["crew"][char])) && lt-- > 0)
	{
		Debug(char . " not found, scrolling (" . lt . ")")
		MouseClickDrag, L, 71, 450, 71, 250, 10
		Sleep 1500
	}
	x := loc["x"]
	y := loc["y"]
	c := loc["c"]
	x1 := loc.1.1
	y1 := loc.1.2
	Debug(char . " found at " . x . "," . y . " (" . c . ") " . x1 . "," . y1)
	;MsgBox char found
	
	if (FindPatternR(loc.1.1-40, loc.1.2,80,30,0,0,findbase["mission"]["crew"]["border"]))
	{
		Debug(char . " already selected")
	}
	else
	{
		Debug("clicking " . char)
		ClickCoords([x,y])
	}
}

SelectParty(required:=0)
{
	global preferred
	Debug("Selecting party")

	n := 5
	for k,v in required
	{
		Debug("Selecting required character " . v)
		SelectCharacter(v)
		Sleep 100
		n--
	}
	
	Loop %n%
	{
		p := preferred[A_Index]
		Debug("Selecting preferred character " . p)
		SelectCharacter(p)
		Sleep 100
	}
}

ReselectParty()
{
	Loop 5
	{
		ClickCoord("party_select",A_Index)
	}
}

DelayedRun()
{
	global stop
	global LoadStatus
	global WaitMinutes
	global hWaitIcon
	stop := 0
	Gui, Submit, NoHide
	min = %WaitMinutes%
	waitsec := min*60
	LoadStatus.state := 0
	StatusIcon(hWaitIcon)

	log := "timer started " . min
	WriteLog(log)

	StatusNumber(min)
	StatusProgress(0)
	StatusTimer(waitsec)
	StatusText("Waiting to start")

	r := StartTimer(waitsec)
	
	if (r == 0)
	{
		RestartApp()
		Sleep 3000
		OpenGame()
		RunMission(false)
	}
}


RunMission(singleloop:=false)
{
	global coords, missioncoords, MissionToRun
	global MissionStatus, LoopMission
	global nextcoords
	global restartMission
	global trainchar, trainchars
	Gui, AutoWoT:Submit, NoHide

;	SplashTextOn, 260,100, MissionRun, Running: %MissionToRun%`nWaiting for main screen
	
	StatusIcon(hRunIcon)
	StatusText(MissionToRun . "[W] Main screen")

	SetContext("mission")

	WinActivate BlueStacks
	
	mloop := 1
	c := 0

	while (!stop && mloop)
	{
		Gui, AutoWoT:Submit, NoHide
		if (!LoopMission || singleloop)
			mloop := 0
		else
			mloop := 1

		restartMission := 0
		StatusNumber(++c)
		WriteLog("Running mission " . c . ": " . MissionToRun . (mloop ? " repeating" : " no repeat"))
		Debug("Running mission " . c . ": " . MissionToRun . (mloop ? " repeating" : " no repeat"))

		WinActivate BlueStacks
		
		; get to main screen
		WaitMissionStatus(1, 550, 400)

		trainwait := 2
		trainchips := 150
		; if ((MissionToRun == "saturdaynb80" || MissionToRun == "saturdaynb45" || MissionToRun == "saturdaynb60") && c>2 && !mod(c,trainwait))
		if ((MissionToRun == "saturdaynb80" || MissionToRun == "saturdaynb45" || MissionToRun == "saturdaynb60") && c>1)
		{
			WriteLog("After " . trainwait . " missions, training " . ch . " with " . trainchips . " chips")
			ch := TrainNextChar(trainchips)
			Debug("Training after " . trainwait . " runs (" . ch . "," . trainchips . ")")
			SetContext("mission")
		}

		collectwait := 20
		if (c>2 && mod(c,collectwait) == 0)
		{
			WriteLog("After " . collectwait . " missions, checking buildings and sending tasks")
			Debug("Checking buildings after " . collectwait . " missions")
			CoverMap()
; TODO:: Send tasks mid-mission, or exclude needed characters
;			Debug("Sending tasks")
;			SendTasks()
			mc := 10
			SetContext("mission")
			while (!IsMainScreen() && mc-- > 0)
			{
				ClickCoord("Mission_exitpause")
			}
		}

		; get to main screen again
		WaitMissionStatus(1, 550, 400)

		; click to mission screen
		ClickCoord("mission_launchicon")
		
;		ControlSetText, Static1, Running: %MissionToRun%`nLoading planet select, MissionRun
		StatusText(MissionToRun . "[W] Planet select")
		
	;	; get to planet select
		WaitMissionStatus(2)

;		ControlSetText, Static1, Running: %MissionToRun%`nLooking Planet, MissionRun
		StatusText(MissionToRun . "[R] Finding " . missioncoords[MissionToRun]["planetname"])
		FindPlanet(missioncoords[MissionToRun]["planetname"])
		
;		ControlSetText, Static1, Running: %MissionToRun%`nLoading mission select, MissionRun
		StatusText(MissionToRun . "[W] Mission select")

		; get to mission select
		WaitMissionStatus(4)

;		ControlSetText, Static1, Running: %MissionToRun%`nSelecting mission, MissionRun
		StatusText(MissionToRun . "[W] Selecting mission " . missioncoords[MissionToRun]["missionnum"])
		; click mission select
		ClickMission(missioncoords[MissionToRun]["missionnum"])
		Sleep 100

		;Select difficulty
		if missioncoords[MissionToRun]["difficulty"]
		{
			ClickCoord("mission_" . missioncoords[MissionToRun]["difficulty"])
			Sleep 100
		}
		
		; click "Next" button
		ClickCoord("mission_next")
		Sleep 100

;		ControlSetText, Static1, Running: %MissionToRun%`nLoading party select, MissionRun
		StatusText(MissionToRun . "[W] Party select")
		; get to party select
		WaitMissionStatus(5)
		
;		ControlSetText, Static1, Running: %MissionToRun%`nChoosing party, MissionRun
		StatusText(MissionToRun . "[R] Selecting party")
		; Select top 5 party members
		if (c > 1)
		{
			ReselectParty()
		} else {
			SelectParty(missioncoords[MissionToRun]["required"])
		}
		
		h := missioncoords[MissionToRun]["heal"]
		if (!h)
		{
			h := 0
		}
		
;		ControlSetText, Static1, Running: %MissionToRun%`nStarting mission, MissionRun
		StatusText(MissionToRun . "[R] Starting mission")
		; click "Start Mission" button
		ClickCoords(coords["mission_missionstart"])
		Sleep 100

		for node,steps in missioncoords[MissionToRun]
		{

			nodetype := ""
			if node is number
			{
		;		MsgBox %node% %steps%
	;			ControlSetText, Static1, Running: %MissionToRun%`nLoading map, MissionRun
				StatusText(MissionToRun . "[W] Loading map")

				Debug("WaitMissionStatus(6): node " . node)
				WaitMissionStatus(6)

				if (node == 1)
				{
	;				ControlSetText, Static1, Running: %MissionToRun%`nWaiting for ship, MissionRun
					StatusText(MissionToRun . "[W] Loading ship")
					Sleep 5000
				}
				
				for nbr,step in steps
				{
					x := step[1]
					y := step[2]
					nodetype := step[3]
					
					Debug("step " . nbr . "." . step . ":" . x . "," . y . "," . nodetype)
					
					if (nodetype == "f")
					{
						Debug("fuel node only, continuing")
						continue
					}
					
					if (h > 0)
					{
						h -= HealParty()
					}
					
					nextcoords := [x, y]

					if (step[4])
					{
						StatusText(MissionToRun . "[W] Travel pause")
						StartTimer(step[4])
					}
					Debug("Node " . node . ", step " . nbr . ": (" . x . "," . y ") "  . nodetype . " " . step[4])

					if (nodetype == "d")	; drag
					{
						x2 := step[5][1]
						y2 := step[5][2]
						Debug("Dragging: " . x . "," . y . " - " . x2 . "," . y2)
						MouseClickDrag, L, x, y, x2, y2, 30
					}
					else
					{
					Click %x% %y%
					}
					if (step[6] == "s")
					{
						StatusText(MissionToRun . "[W] Sleep timer (" . step[7] . ")")
						ClickCoord("mission_battlestart")
						StartTimer(step[7])
					}
					
					if (nodetype == "p")	; path
					{
;						ControlSetText, Static1, Running: %MissionToRun%`n%node% %nbr% | Traveling along path, MissionRun
						StatusText(MissionToRun . "[T] Traveling path")
					}
					else if (nodetype == "b") ; battle
					{
						; ControlSetText, Static1, Running: %MissionToRun%`n%node% %nbr% | Traveling to battle, MissionRun
						StatusText(MissionToRun . "[T] Traveling to battle")
					}
					else if (nodetype == "i")	; interaction
					{
						RunInteraction(node,step[5],step[6])
					}
					else if (nodetype == "c") ; complete
					{
						; ControlSetText, Static1, Running: %MissionToRun%`n%node% %nbr% | Traveling to end, MissionRun
						StatusText(MissionToRun . "[T] Traveling to end")
					}
					StartTimer(2)
					CheckFuel()
					if (restartMission)
					{
						break 2
					}
				}

				if (nodetype == "v")
				{
					; ControlSetText, Static1, Running: %MissionToRun%`nEnding mission, MissionRun
					StatusText(MissionToRun . "[R] Ending mission")
				}
				if (nodetype == "b")
				{
					StatusNumber(c . "." . node)
					DoBattle(node,step[5])
					StatusNumber(c)
				}
			}
		}

		; get to mission complete screen
		WaitMissionStatus(10)
		; ControlSetText, Static1, Mission %MissionToRun% complete, MissionRun
		StatusText(MissionToRun . " complete")

		RewardScreenshot(MissionToRun)

		; click "Return" button
		ClickCoord("mission_return")

		WriteLog("Completed mission: " . MissionToRun)
		Debug("Completed mission: " . MissionToRun)
	}
	SplashTextOff
}

RewardScreenshot(mission)
{
	FormatTime, CDT,, yyyyMMddHHmmss
	Debug("Mission complete, taking screenshots")
	Sleep 1500
;	Screenshot(mission . "-boxes-",165,117,686,437,"mission\" . mission,CDT)
	Sleep 6000
	Screenshot(mission . "-rewards-",165,117,686,437,"mission\" . mission,CDT)
	Sleep 500
}

RunInteraction(nbr, required, choices)
{
	global findbase

	Debug("Interaction " . nbr . " with " . required)
	
	; TODO:: detect interaction charselect screen
;	sleep 3000
	WaitMissionStatus(11)	; battle start looks the same

	Debug("Searching for " . required)
	if (char := FindPatternInArea("interaction_area",0.1,0.1,findbase["mission"]["interaction"][required]))
	{
		ClickCoords([char["x"],char["y"]])
		Sleep 300
		ClickCoord("mission_battlestart")
		Debug("Found " . required)
	} else
		return 0
	Sleep 2000
	
	for k,v in choices
	{
		c := v[1]
		s := v[2]
		if (c==0)
		{
			Debug("Interaction " . k . ": clicking center " . s . " times")
			loop, s
			{
				ClickCoord("mission_victory")
				sleep 2000
			}
		} else {
			str := c . "_" . s
			Debug("Interaction " . k . ", " . s . " of " . c . "(" . str . ")")
			ClickCoord("interaction",str)
			Sleep 2000
			ClickCoord("interaction",str)
			Sleep 2000
		}
	}

	ClickCoord("mission_victory")
	Sleep 2000
	ClickCoord("mission_victory")
	Debug("Interaction complete")
}

DoBattle(nbr := 1, s:=0)
{
	global coords, missioncoords, findbase
	global MissionToRun
	; get to battle start
	WaitMissionStatus(7, 260, 277)

	if (missioncoords[MissionToRun]["specials"])
	{
		s := true
	}

	; click "Start" button
	ClickCoords(coords["mission_battlestart"])
	
	; ControlSetText, Static1, Running: %MissionToRun%`nStarting battle %nbr%, MissionRun
	StatusText(MissionToRun . "[W] Starting battle")
	; get to battle start
	WaitMissionStatus(8)

	Debug("Conducting Battle " . nbr)

	; ControlSetText, Static1, Running: %MissionToRun%`nBattling %nbr%, MissionRun
	StatusText(MissionToRun . "[B] Battling" . nbr)
	
;	if (!s)
;	{
		; Debug("Speeding up battle")
		; spt := 30
		; while (!spx := FindPatternInArea("battlespeed_area",0.1,0.1,findbase["battle_speedx1"]))
		; {
			; sleep 500
			; if (--spt <= 0)
			; {
				; Debug("unable to find speed control, reloading")
				; Screenshot(,,,,,"debug","-speedx1-notfound")
				; ReloadLoop()
			; }
		; }
		; ClickCoord("battle_speed")
		; sleep 50
		; ClickCoord("battle_speed")
;	}

	; wait for the speed indicator or just a few seconds
	spt := 10
	while (FindPatternInArea("battlespeed_area",0.1,0.1,findbase["battle_speed"]) && spt-- > 0)
	{
		Sleep 500
	}


	; get to battle screen
	while (GetMissionStatus() != 9)
	{
		if (s)
		{
;			Debug("Running battle with special attacks")
			BattleSpecials(0,nbr)
		}
	}

	; ControlSetText, Static1, Running: %MissionToRun%`nVictory!, MissionRun
	StatusText(MissionToRun . "[B] Victory!")
	Sleep 1000

	; click "Victory" button
	ClickCoords(coords["mission_victory"])
}

MissionMapScroll(x := 500)
{
	BlockInput, On
	WinActivate BlueStacks
	Sleep 200
	MouseMove, 100, 475, 1
	Sleep 100
	sx := x>0?50:800
	MouseClickDrag, L, sx, 300, sx+x, 300, 30
	BlockInput, Off
}