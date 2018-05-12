#Include fut_lib.ahk
#Include fut_findbase.ahk

ccoords := {}


ResetMap()
{
	ZoomOut()
	Loop, 4
	{
		MouseClick, L, 100, 400,, 1, D
		MouseClick, L, 750, 100,, 10, U
	}

}

SearchScroll(x1, y1, x2, y2, byref collcount)
{
	MouseMove, x1, y1, 0
	MouseClick, L, x1, y1,, 1, D
	MouseClick, L, x2, y2,, 10, U
	Sleep 500
	Screenshot()
	SearchScreen(collcount)
}

CoverMap()
{
	SetContext("collect")
	
	WinActivate BlueStacks
	ResetMap()

	collcount := 0
	StatusText("Searching buildings")
	StatusProgress(0)
	StatusNumber(collcount)
	SearchScroll(400, 80, 400, 500, collcount)
	StatusProgress(14)
	StatusNumber(collcount)
	SearchScroll(800, 200, 164, 258, collcount)
	StatusProgress(28)
	StatusNumber(collcount)
	SearchScroll(750, 375, 378, 212, collcount)
	StatusProgress(43)
	StatusNumber(collcount)
	SearchScroll(750, 175, 342, 200, collcount)
	StatusProgress(57)
	StatusNumber(collcount)
	SearchScroll(400, 475, 83, 82, collcount)
	StatusProgress(71)
	StatusNumber(collcount)
	SearchScroll(750, 100, 500, 311, collcount)
	StatusProgress(85)
	StatusNumber(collcount)
	SearchScroll(450, 100, 450, 425, collcount)
	StatusProgress(100)
	StatusNumber(collcount)
	WriteLog("Collected full map (" . collcount . ")")
}


ZoomOut()
{
;	SendMode Input
	Loop 10
	{
		Send {Ctrl down}
		Sleep 50
		Click, WheelDown
		Send {Ctrl up}
	}
}

SearchScreen(byref collcount)
{
	global bX, bY, coords, colors, stop
	WinActivate BlueStacks
	WinGetActiveStats bT, bW, bH, bX, bY

	stop := 0

	moneyarr := {}
	SetContext("collect")


	StatusText("Searching buildings for money")
	; size of search boxes (larger boxes will complete faster but may need more passes to find all the buildings)
	sz := [90, 90]

	; area to search
	x1 := coords["city_area"][1][1]
	y1 := coords["city_area"][1][2]
	x2 := coords["city_area"][2][1]
	y2 := coords["city_area"][2][2]
	
	; number of loops to search based on above
	lx := Round(((x2-x1)/sz[1]))
	ly := Round(((y2-y1)/sz[2]))
	
	loops := lx * ly
	loop := 1

	; outline search area
	DrawRectangle(x1, y1, sz[1]*lx, sz[2]*ly, 3, colors["search_outline"])

;	ZoomOut()

	; SearchRegion(x1,y1,[x2-x1,y2-y1],collcount,taskarray,"task",true)
	SearchRegion(x1,y1,[x2-x1,y2-y1],collcount,moneyarr,"money",false)

	; Loop, %lx%
	; {
		; x := x1 + (A_Index * sz[1]) - sz[1]
		; Loop, %ly%
		; {
			; if (stop)
				; Break 2

			; y := y1 + (A_Index * sz[2]) - sz[2]
			
			; MouseMove, sz/2+x, sz/2+y, 4
			
			; pct := Round(100*loop++/loops)
			; StatusProgress(pct)

			; SearchRegion(x, y, sz, collcount,, "task", true)
			; SearchRegion(x, y, sz, collcount, moneyarr, "money", false)

			; ; outline search area after complete
			; DrawRectangle(x, y, sz[1], sz[2], 1, colors["search_box"])
		; }
	; }

	ClearDisplay()

	BlockInput, MouseMove
	
	for rX,v1 in moneyarr
	{
		for rY,v2 in v1
		{
			Debug(rX . "," . rY . "::" . v2[1] . "," . v2[2])
			ClickCoords(v2)
		}
	}
	
	; for rX,v1 in taskarr
	; {
		; for rY,v2 in v1
		; {
			; Debug(rX . "," . rY . "::" . v2[1] . "," . v2[2])
			; ClickCoords(v2)
		; }
	; }
	BlockInput, MouseMoveOff
}

SearchRegion(x, y, sz, ByRef collcount, ByRef arr, target="money", click := false)
{
	global findbase
	Debug("SearchRegion" . x . "," . y . ":" . sz[1] . "x" . sz[2] . "::" . target . (click ? " click" : ""))

	; size of extra search area (for complete image matching)
	pad := [25,10]

	n := 0

	WinGetPos, wX, wY,,, BlueStacks

	t := ""
	for k,v in StrSplit(target,"|")
	{
;		Debug(v . ":" . findbase[v])
		t .= findbase[v]
	}

	results := FindPatternR(x, y, sz[1]+pad[1], sz[2]+pad[2],0,0,t)
	
	for k,v in results
	{
		rX:=v.1, rY:=v.2, rW:=v.3, rH:=v.4, rC:=v.5 ;, rX+=rW//2, rY+=rH//2

		; discount all matches within a certain number of pixels
		range := 2
		while mod(rY,range)
			rY++
		
		while mod(rX,range)
			rX++

		Debug("Result " . k . ":" . rX . "," . rY . " - " . rW . "x" . rH . " :: " . rC)
		if (!arr[rX][rY] && !arr[rX][rY+range] && !arr[rX][rY-range])
		{
			collcount++
			n++
			Debug("Saving: " . rX . "," . rY)
			if (!arr[rX])
				arr[rX] := {}
			arr[rX][rY] := [rX+rW//2, rY+rH//2]
			if (click)
			{
				ClickCoords([rX+rW//2, rY+rH//2])
			}
			else
			{
;				DrawRectangle(rX, rY, rW, rH, 3, 0xffff0000)
			}
		}
	}
	return n
}

StreetBattle()
{
	global findbase
	if (fist := FindPatternInArea("city_area",0.15,0.15,findbase["battlefist"]))
	{
		Debug("Battle fist found (" . fist["x"] . "," . fist["y"] . ")")
		ClickCoords([fist["x"],fist["y"]])
		sleep 200
		
		if (FindPatternInArea("battlelock",0,0,findbase["charlocked"]))	; character is locked
		{
			Debug("Character locked, closing")
			ClickCoord("battleclose")
			return -1
		} else {
			Debug("Selecting character")
			ClickCoord("battleselect")
			sleep 50
			Debug("Starting battle")
			ClickCoord("battleattack")
			WaitMissionStatus(9)	; vistory in battle
			Debug("Street battle complete")
			ClickCoord("battlereturn")
			return 1
		}
	} else {
		Debug("Battle fist not found")
		return 0
	}
}

CleanStreets()
{
	ZoomOut()
	bt := 20
	while (StreetBattle() != 0)
	{	}
}