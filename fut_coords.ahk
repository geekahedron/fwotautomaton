coords := {}

coords["gametitles"] := [[175,238],[786,261]]
coords["app_game1"] := [245, 180]
coords["app_game2"] := [405, 180]
coords["app_game3"] := [560, 180]
coords["app_adclose"] := [794, 75]
coords["app_myapps"] := [85, 75]
coords["app_gameclose"] := [346, 14]

coords["game_loginbutton"] := [485, 328]
coords["game_loading"] := [635, 194]
coords["game_button"] := [635, 194]
coords["game_dailyreward"] := [400, 400]

coords["city_area"] := [[70, 75],[800, 400]]

coords["gamestart_pub"] := [222, 147]
coords["gamestart_planetexpress"] := [415, 149]

coords["planet_area"] := [[10, 50],[820, 500]]
coords["mission_group1"] := [35,107]
coords["mission_area"] := [[55, 101],[125, 507]]
coords["missiongroup_area"] := [[14, 90],[90, 507]]
;coords["planet_area"] := [[100, 200],[600, 400]]


coords["mission_easy"] := [297,105]
coords["mission_med"] := [337,105]
coords["mission_hard"] := [377,105]
coords["mission_next"] := [712, 400]
coords["mission_launchicon"] := [77, 483]
coords["mission_battlestart"] := [683, 387]
coords["mission_exitpause"] := [800, 60]
coords["mission_exitpause2"] := [806, 62]
coords["mission_victory"] := [414, 356]
coords["mission_progress"] := [147, 135]
coords["mission_complete"] := [378, 147]
coords["mission_revive"] := [642, 137]
coords["mission_missionstart"] := [750, 480]
coords["mission_return"] := [400, 400]
coords["mission_fuelrefill"] := [508, 291]
coords["mission_fuelpizza"] := [500, 340]
coords["mission_fuelpizzaconfirm"] := [547, 324]
coords["mission_close"] := [800, 72]
coords["mission_forfeit"] := [357, 308]
coords["mission_forfeitconfirm"] := [480, 360]

coords["interaction"] := {}
coords["interaction"]["3_1"] := [265,430]
coords["interaction"]["3_2"] := [417,430]
coords["interaction"]["3_3"] := [560,430]
coords["interaction"]["2_1"] := [300,430]
coords["interaction"]["2_2"] := [480,430]
coords["interaction"]["1_1"] := [417,430]
coords["interaction_area"] := [[551,313],[800,361]]
coords["choosecharacter"] := [[536,287],[678,313]]

coords["mission_battleicons"] := [300, 351, 402, 453, 504]
coords["pvp_battleicons"] := [100, 151, 202, 253, 304]

coords["party"] := {}
coords["party"]["captain"] := [143,145]
coords["party"]["scientist"] := [143,179]
coords["party"]["defender"] := [143,213]
coords["party"]["deliveryboy"] := [143,247]
coords["party"]["influencer"] := [143,281]
coords["party"]["villain"] := [143,315]
coords["party_area"] := [[10,105],[131,469]]
coords["partyclass_area"] := [[132,127],[156,331]]
coords["mission_select"] := {}
coords["mission_select"]["x"] := 50
coords["mission_select"]["y"] := 110
coords["mission_select"]["height"] := 77

coords["battle_speed"] := [28,70]
coords["battlespeed_area"] := [[10,50],[46,88]]
coords["battle_center"] := [380,310]


coords["mission_healparty"] := [[120,116],[760,153]]
coords["mission_fail"] := [[413,118],[530,140]]

coords["mission_icon"] := [[65,440],[115,495]]
coords["mapmove_icon"] := [[17,470],[140,495]]
coords["taskready_icon"] := [[40,108],[60,125]]
coords["taskclick"] := [34,134]
coords["taskplus_icon"] := [[544,144],[560,161]]
coords["taskclose_icon"] := [[790,45],[825,80]]

coords["levelupbutton"] := [743,480]

coords["tasktitles"] := {}
coords["tasktitles"]["plusx"] := 544
coords["tasktitles"]["plusy"] := 143
coords["tasktitles"]["plusw"] := 18
coords["tasktitles"]["plush"] := 18
coords["tasktitles"]["x"] := 578
coords["tasktitles"]["y"] := 91
coords["tasktitles"]["w"] := 190
coords["tasktitles"]["h"] := 14
coords["tasktitles"]["height"] := 89

coords["taskbuttons"] := {}
coords["taskbuttons"]["x"] := 771
coords["taskbuttons"]["y"] := 86
coords["taskbuttons"]["w"] := 45
coords["taskbuttons"]["h"] := 80
coords["taskbuttons"]["height"] := 89	
coords["taskbutton_icon"] := [[],[]]

coords["training"] := {}
coords["training"]["captain"] := [143,145]
coords["training"]["scientist"] := [143,179]
coords["training"]["defender"] := [143,213]
coords["training"]["deliveryboy"] := [143,247]
coords["training"]["influencer"] := [143,281]
coords["training"]["villain"] := [143,315]
coords["training_area"] := [[14,106],[128,500]]
coords["training_promote"] := [[700,160],[800,190]]
coords["training_max"] := [[495,340],[563,355]]
coords["training"]["nextbutton"] := [736,482]

coords["trainingchips"] := {}
coords["trainingchips"]["x"] := 581
coords["trainingchips"]["y"] := 236
coords["trainingchips"]["w"] := 52
coords["trainingchips"]["h"] := 51
coords["trainingchips"]["height"] := 57	
coords["trainingchips"]["width"] := 57

coords["battlelock"] := [[387,278],[415,305]]
coords["battleclose"] := [644,129]
coords["battleselect"] := [421,316]
coords["battleattack"] := [421,416]
coords["battlereturn"] := [421,350]

coords["healbutton"] := [550,340]
coords["healcolor"] := [440,290]
coords["healclose"] := [589,196]
; coords["healpartyclose"] := [669,137]
coords["healpartyclose"] := [641,137]	; 4 or 5 characters to heal
coords["healpartyclose4"] := [641,137]	; 4 or 5 characters to heal
coords["healpartyclose3"] := [586,137]	; 1, 2, or 3 characters to heal
coords["healpartyclose2"] := [586,137]	; 1, 2, or 3 characters to heal
coords["healpartyclose1"] := [586,137]	; 1, 2, or 3 characters to heal

; mission select button locations
Loop, 6
{
	coords["mission_select"][A_Index] := [50, 35+(77*A_Index)]
}

; party member selection locations
coords["party_select"] := {}
p := 1
Loop, 7
{
	y := 75 + (57*A_Index)
	Loop, 2
	{
		x := (57*A_Index) - 12
		coords["party_select"][p++] := [x, y]
	}
}

; party health icon and bar locations
coords["party_health"] := {}
coords["party_healthbar"] := {}
p := 1
Loop, 5
{
; 13,283	(51) 334	385		436		487
; 52,294	
	x1 := 13
	y1 := 229 + (51*A_Index)
	x2 := 52
	y2 := y1 + 14
	coords["party_healthbar" . p] := [[x1,y1],[x2,y2]]
	
;	15, 288
	x := 15
	y := 237 + (51*A_Index)
	coords["party_health"][p] := [x,y]

	p++
}


MouseMoveCoord(name, sub := 0)
{
	global coords
	if (sub)
		arr := coords[name][sub]
	else
		arr := coords[name]
	x := arr[1]
	y := arr[2]
	Debug("Moving mouse: " . x . "," . y)
	WinActivate, BlueStacks
	MouseMove, %x%, %y%
}

MouseMoveCoords(arr)
{
	WinActivate, BlueStacks
	x := arr[1]
	y := arr[2]
	Debug("Moving mouse: " . x . "," . y)
	WinActivate, BlueStacks
	MouseMove, %x%, %y%
}

ClickCoord(name, sub := "", adj := false, debug := true)
{
	global coords
	if (sub)
		arr := coords[name][sub]
	else
		arr := coords[name]

	x := arr[1]
	y := arr[2]
	
	if (adj)
	{
		Debug("Adjusting click coords by " . adj[1] . "," . adj[2])
		x += adj[1]
		y += adj[2]
	}

	if (debug)
		Debug("Clicking " . name . ":" . sub . ":" . x . "," . y)
	WinActivate, BlueStacks
	; CoordMode, Mouse, Relative
	; MouseClick, L, x, y,,0
	Click %x% %y%
}

ClickCoords(arr, adj:=0)
{
	x := arr[1]
	y := arr[2]
	if (adj)
	{
		Debug("Adjusting click coords by " . adj[1] . "," . adj[2])
		x += adj[1]
		y += adj[2]
	}

	if (x < 0 || y < 0)
		Debug("Click Coords out of bounds: " . x . "," . y)
	; WinActivate, BlueStacks
	; CoordMode, Mouse, Relative
	; MouseClick, L, x, y,,0
	Click %x% %y%
	Debug("Clicked " . x . "," . y)
}

PixelColorCoord(byref c, name, sub := 0, adj := 0)
{
	global coords
	if (sub)
		arr := coords[name][sub]
	else
		arr := coords[name]
	x := arr[1]
	y := arr[2]
	if (adj)
	{
		Debug("Adjusting color coords by " . adj[1] . "," . adj[2])
		x += adj[1]
		y += adj[2]
	}
	PixelGetColor, c, x, y
}

PixelColorCoords(byref c, arr)
{
	PixelGetColor, c, arr[1], arr[2]
}
