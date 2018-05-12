#Include fut_lib.ahk
#Include fut_findbase.ahk

IsQuestTask(num)
{
	global coords, colors
	height := coords["tasktitles"]["height"]
	x := coords["tasktitles"]["x"]
	y := coords["tasktitles"]["y"] + ((num-1)*height)
	w := coords["tasktitles"]["w"]
	h := coords["tasktitles"]["h"]
	sc := colors["questtask"]
	Debug("Searching quest task: " x . "," . y . " " . w . "x" . h . "::" . sc)
	PixelSearch, fx, fy, x, y, x+w, y+h, sc, 30,, Fast
	
	return !ErrorLevel
}

IsPlusTask(num)
{
	global coords, findbase

;	global coords, colors
	x1 := coords["taskplus_icon"][1][1]
	y1 := coords["taskplus_icon"][1][2] + (coords["taskbuttons"]["height"]*(num-1))
	Debug("Searching quest task: " x1 . "," . y1)
	return FindPatternR(x1, y1, 18, 18, 0, 0, findbase["game"]["taskplus"])

	
	; x2 := coords["taskplus_icon"][2][1]
	; y2 := coords["taskplus_icon"][2][2] + (coords["taskbuttons"]["height"]*(num-1))
	; sc := colors["plustask"]
	; Debug("Searching quest task: " x1 . "," . y1 . "-" . x2 . "," . y2 . "::" . sc)
	; PixelSearch, fx, fy, x1, y1, x2, y2, sc, 30,, Fast
	
	; return !ErrorLevel
}

; if quest is true, click first task, otherwise click first task that is not a quest item
ClickTask(quest:=false)
{
	global coords
	
	num := 1
	scrolled := 0
	
;	MouseClick,WU,600,300,10,1,D
	Sleep, 300
	
	
	while (!quest && (IsQuestTask(num) || IsPlusTask(num)))
	{
		if (IsQuestTask(num))
		{
			Debug(num . " is quest task, skipping")
		} else if (IsPlusTask(num))
		{
			Debug(num . " is two-character task, skipping")
		}
		
		num++
		if (num > 5)
		{
			Debug("Scrolling to see more tasks after first " . num . " skipped")
			TaskScroll()
			num -= 2
			scrolled += 2
		}
	}

	w := coords["taskbuttons"]["w"]
	h := coords["taskbuttons"]["h"]
	height := coords["taskbuttons"]["height"]
	x := coords["taskbuttons"]["x"] + w//2
	y := coords["taskbuttons"]["y"] + ((num-1)*height) + h//2
	
	Debug("Clicking task " . num+scrolled . " (pos " . num . " + " . scrolled . " scrolled) (" . x . "," . y . ")")
	Click %x% %y%
}

TaskScroll()
{
	BlockInput, On
	WinActivate BlueStacks
	Sleep 200
	MouseMove, 700, 475, 1
	Sleep 100
	MouseClickDrag, L, 700, 480, 700, 293, 30
	BlockInput, Off
}

SendTasks(quest:=false)
{
	SetContext("tasks")
	while (IsMainScreen() && GetTaskStatus()==1)
	{
		Debug("Main screen with tasks ready, clicking")
		ClickCoord("taskclick")
		WaitTaskStatus(2)
		ClickTask(quest)
		Sleep 300
	}
}

WaitTaskStatus(num)
{
	While (GetTaskStatus() != num)
		Sleep 100
}


IsTaskReady()
{
	global findbase
	return FindPatternInArea("taskready_icon",0,0,findbase["game"]["taskready"])
}

GetTaskStatus()
{
	global findbase
	if FindPatternInArea("taskready_icon",0,0,findbase["game"]["taskready"])
	{
		Debug("Status: Task ready")
		return 1
	}
	if FindPatternInArea("taskclose_icon",0,0,findbase["game"]["closebutton"])
	{
		Debug("Status: Task window open")
		return 2
	}


}