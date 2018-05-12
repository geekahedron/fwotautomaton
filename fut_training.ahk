#Include fut_lib.ahk
#Include fut_findbase.ahk


IniRead, trainchar, autowot.ini, SavedVars, TrainChar

ChipScroll()
{
	BlockInput, On
	WinActivate BlueStacks
	MouseMove, 690, 375, 1
	MouseClickDrag, L, 691, 381, 691, 199, 30
	BlockInput, Off
}

TrainNextChar(chips:=12)
{
	global trainchars, trainchar, characters
	SetContext("training")

	ch := trainchars[trainchar]

	Debug("Pulled from list (" . ch . ")")

	if (!ch)
	{
		Random, rand, 1, charcount
		for c in characters
		{
			ch := c
			if (rand-- < 1)
				break
		}
		Debug("List empty, randomly choosing: " . ch)
	}

	Debug("Training " . ch . " for " . chips)
	if (!TrainChar(ch,chips))
	{
		Debug(ch . " maxed, going to next")
		trainchar++
		IniWrite, %trainchar%, autowot.ini, SavedVars, TrainChar
	}
	return ch
}

TrainChar(char, chips:=12)
{
	global findbase, coords
	global characters
	charclass := characters[char][1]
	SetContext("training")
	Debug("TrainChar(" . char . "," . charclass . "," . chips . ")")
	
	; MsgBox Training %char% (%charclass%) for %chips%
	if (IsMainScreen())
	{
		; MsgBox Main screen found
		; WinActivate BlueStacks
		
		ClickCoord("levelupbutton")
		Sleep 500
		ClickCoord("training",charclass)
		Sleep 500
		SelectCharacter(char)
			
		Debug(char . " found (" . loc["x"] . "," . loc["y"])
		ClickCoords([loc["x"],loc["y"]])
		ClickCoord("training","nextbutton")

		Sleep 1000
;		MsgBox, checking for promote screen
;		WinActivate BlueStacks

		if (FindPatternInArea("training_promote",0,0,findbase["training"]["promote"]) || FindPatternInArea("training_max",0.2,0.2,findbase["training"]["max"]))
		{
			ct := 20
			while (!IsMainScreen() && ct-- > 0)	; back to main screen
			{
				ClickCoord("Mission_exitpause")
			}
			return false
		}

		SelectChips(chips)

		ClickCoord("training","nextbutton")
		Sleep 200
		ClickCoord("Mission_exitpause")
	}
	else
	{
		Debug(char . " not found")
		pause
	}
	Sleep 200
	ClickCoord("Mission_exitpause")
	
	ct := 20
	while (!IsMainScreen() && ct-- > 0)	; leveled up
	{
		ClickCoord("training","nextbutton")
		Sleep 200
		ClickCoord("Mission_exitpause")
	}
	return true
}

SelectChips(chips:=12)
{
	global coords, findbase, ChipsToTrain

	x := coords["trainingchips"]["x"]
	y := coords["trainingchips"]["y"]
	w := coords["trainingchips"]["w"]
	h := coords["trainingchips"]["h"]
	height := coords["trainingchips"]["height"]
	width := coords["trainingchips"]["width"]
	
	Debug("Chips:" . x . "," . y . ":" . w . "x" . h . " (" . width . "x" . height . ")")
	
	trained := 0
	
	Loop, % chips//12+1
	{
		Loop, 4
		{
			i := A_Index-1	
			tx := x + i*width + w//2
			Loop, 3
			{
				if (trained >= chips)
				{
					Debug("Trained " . trained . "/" . chips . ", stopping")
					break 3
				} else {
					j := A_Index-1
					ty := y + j*height + h//2
					
					Debug(i . ":" . j . "::" . tx . "," . ty)
					
					ClickCoords([tx,ty])
					StatusProgress(100*(++trained)/chips)
				}
			}
		}
		if (maxed := FindPatternInArea("training_max",0.2,0.2,findbase["training"]["max"]))
		{
			Debug("Character maxed out after " . trained . " chips, stopping")
			return false
			break
		}
		ChipScroll()
	}
	StatusProgress(0)
	return true
}