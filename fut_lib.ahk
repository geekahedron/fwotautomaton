#Include fut_coords.ahk
#Include fut_missioncoords.ahk
#Include fut_colors.ahk
#Include fut_chars.ahk

IniRead, PizzaCount, autowot.ini,SavedVars,PizzaCount
IniRead, ForceLoginCheck, autowot.ini, SavedVars, ForceLogin
IniRead, WaitMinutes, autowot.ini, SavedVars, WaitMinutes
IniRead, BuyMissionFuelCheck, autowot.ini, SavedVars, BuyMissionFuel
IniRead, LoopMissionCheck, autowot.ini, SavedVars, LoopMission


Gdip_Startup()

WinActivate BlueStacks
WinGetActiveStats bT, bW, bH, bX, bY

sW := A_ScreenWidth
sH := A_ScreenHeight

InitGDIP1()
InitGDIP2()
UpdateLayeredWindow(hWndOverlay, hdc, 0, 0, sW, sH)

CloseGame()
{
	

	WinActivate BlueStacks
	BlockInput, On
	MouseMoveCoord("app_gameclose")
;	MouseMove, 519, 13
	Sleep, 50
	
	PixelColorCoord(color,"app_gameclose")
	if (color == 0x3d45d9)
	{
		Debug("Closing game")
		Click
		BlockInput, Off
		return true
	}
	else
	{
		Debug("Close button not found")
		BlockInput, Off
		return false
	}
}

OpenGame()
{
	global findbase
	WinActivate BlueStacks
	;reopen Futurama
	
	; TODO:: Figure out where the actual game is
;	ClickCoords(coords["app_game1"])
	while (!loc := FindPatternInArea("gametitles",0.1,0.1,findbase["futurama"]))
	{
;		MsgBox futurama game title not found
		sleep 50
	}

	ClickCoords([loc["x"],loc["y"]])

;	Click 560, 180

	; if (!found)
	; {
		; while (!loc := FindPatternInArea("gametitles",0.1,0.1,findbase["futurama"]))
		; {
			; sleep 50
		; }
		; coords["app_game1"] := [loc["x"],loc["y"]]
		; found := 1
	; }
	; ClickCoord("app_game1")

}

VerifyGame()
{
	sleep 500
	WinActivate BlueStacks
	click 435 14
	WinGetActiveStats t, w, h, x, y
	If (w != 830 || h != 553)
	{
		WriteLog("Wrong size player window, error popup, restarting")
		Screenshot(,"f",,,,"crash")
		RestartApp()
		OpenGame()
	} else {
	}
}

RestartApp()
{

	global coords
	Process, close, bluestacks.exe
	StartTimer(5)
	Process, Exist, bluestacks.exe
	if not Errorlevel
		Run, C:\ProgramData\BlueStacks\Client\Bluestacks.exe, C:\ProgramData\BlueStacks\Client\
	StatusText("Reopening")
	StartTimer(40)
	WinActivate BlueStacks
	ClickCoords(coords["app_myapps"])
}

StopAll()
{
	global stop
	global LoadStatus
	global hStopIcon
	Gui, Submit, NoHide
	StatusNumber(0)
	StatusTimer(0)
	StatusProgress(0)
	StatusText("Stopped")
	LoadStatus.state := -1
	StatusIcon(hStopIcon)
	SplashTextOff
	SplashImage, Off
	ClearDisplay()
	stop := 1
}

StartTimer(waitsec)
{
	totalsec := waitsec
	while (!stop && waitsec > 0)
	{
		Sleep 1000
		pct := 100-(100*waitsec/totalsec)
		StatusProgress(pct)
		StatusTimer(--waitsec)
	}
	if (stop)
	{
		StatusProgress(0)
	}

	return waitsec
}

StatusIcon(hIcon)
{
	global hWoTSB
	SBAR_SetIcon(hWoTSB,hIcon,1)
}

StatusText(text)
{
	global hWoTSB
	if (!stop)
		SBAR_SetText(hWoTSB,text,2)
	Debug(text)
}

StatusTimer(secs)
{
	global hWoTSB
	if (!stop)
		SBAR_SetText(hWoTSB,"`t" . FormatSeconds(secs),5)
}

StatusNumber(num)
{
	global hWoTSB
	if (!stop)
		SBAR_SetText(hWoTSB,"`t" . num,3)
}

StatusProgress(pct)
{
	global hWoTSB
	if (!stop)
	{
		SBAR_ProgressBar(hWoTSB,pct,4)
		SB_SetProgress(pct,4)
	}
}

FormatSeconds(NumberOfSeconds)  ; Convert the specified number of seconds to hh:mm:ss format.
{
    time = 19990101  ; *Midnight* of an arbitrary date.
    time += %NumberOfSeconds%, seconds
    FormatTime, mmss, %time%, mm:ss
    return NumberOfSeconds//3600 ":" mmss
}

WriteLog(text)
{
	FormatTime, CDT,, yyyy-MM-dd HH:mm:ss
	FormatTime, CD,, yyyy-MM-dd
	FileAppend, %CDT% %text%`n, log\%CD%-futlog.txt
}

IsMainScreen()
{
	global findbase
	Debug("IsMainScreen()")
	Screenshot(,,,,,,"-ismainscreen")
	t := 0
	tries := 4
	while (!(ok:=MainScreenIcons()) && t++ < tries)
	{
		Debug("Icon not found, clicking to wake")
		WinActivate BlueStacks
		Click 392 490
		Sleep 100
		Screenshot(,,,,,,"-ismainscreenclicked")
	}
	if (t<tries)
	{
		Debug("Main screen found")
	}
	else
	{
		Debug("Main screen not found")
	}
	return (t<tries)
}

MainScreenIcons()
{
	global findbase
;	return FindPatternInArea("mapmove_icon",0,0,findbase["game"]["mapmoveicon"])
	return FindPatternInArea("mapmove_icon",0,0,findbase["game"]["mapmoveicon"],false)
}

UpdatePizza()
{
	global PizzaCount
	global PizzaTotal
	Gui, AutoWoT:Submit, NoHide
	PizzaCount := PizzaTotal
	IniWrite, %PizzaTotal%, autowot.ini, SavedVars, PizzaCount
}

UpdateMinutes()
{
	global WaitMinutes
	Gui, AutoWoT:Submit, NoHide
	IniWrite, %WaitMinutes%, autowot.ini, SavedVars, WaitMinutes
}

UpdateForce()
{
	global ForceLogin
	global ForceLoginCheck
	Gui, AutoWoT:Submit, NoHide
	ForceLoginCheck := ForceLogin
	IniWrite, %ForceLoginCheck%, autowot.ini, SavedVars, ForceLogin
}

UpdateFuel()
{
	global BuyMissionFuel, BuyMissionFuelCheck
	Gui, AutoWoT:Submit, NoHide
	BuyMissionFuelCheck := BuyMissionFuel
	IniWrite, %BuyMissionFuelCheck%, autowot.ini, SavedVars, BuyMissionFuel
}

UpdateLoop()
{
	global LoopMission, LoopMissionCheck
	Gui, AutoWoT:Submit, NoHide
	LoopMissionCheck := LoopMission
	IniWrite, %LoopMissionCheck%, autowot.ini, SavedVars, LoopMission
}

Debug(text)
{
	global context
	FormatTime, CDT,, yyyy-MM-dd HH:mm:ss
	FileAppend, %CDT% %text%`n, debug\debug%context%.txt
}

Screenshot(filename:=0, x1:=7, y1:=47, x2:=822, y2:=505, subdir:=0, filename2:="")
{
	FormatTime, CDT,, yyyyMMddHHmmss
	FormatTime, CD,, yyyyMMdd
	filename := filename?filename:CDT

	if !subdir
		subdir := CD
	IfNotExist, ss\%subdir%
		FileCreateDir, ss\%subdir%
	
	boxcutter := "E:\Utilities\boxcutter\boxcutter.exe"
	
	if (x1 == "f")
	{
		coords := "--f"
	} else {
		WinGetPos, wX, wY,,, BlueStacks
		coords := "--coords " . x1+wX . "`," . y1+wY . "`," . x2+wX . "`," . y2+wY . "`,"
	}

	Debug("Screenshot: " . coords . " ss\" . subdir . "\" . filename . filename2 . ".png")
	Run, %boxcutter% %coords% ss\%subdir%\%filename%%filename2%.png
}

SetContext(ctx)
{
	global context
	context := ctx
}

; chintzy way to draw a rectangle one line at a time, but CBA to make the normal GDIP rectangle work
DrawRectangle(tX, tY, w:=28, h:=28, lw := 3, c:="0xffff0000")
{
	global hWndOverlay, hdc, sW, sH, G, bX, bY

	x1 := bX + tX
	y1 := bY + tY

	pPen := Gdip_CreatePen(c, lw)
	Gdip_DrawLine(G, pPen,x1, y1, x1, y1+h)
	Gdip_DeleteBrush(pPen)
	pPen := Gdip_CreatePen(c, lw)
	Gdip_DrawLine(G, pPen,x1+w, y1, x1+w, y1+h)
	Gdip_DeleteBrush(pPen)
	pPen := Gdip_CreatePen(c, lw)
	Gdip_DrawLine(G, pPen,x1, y1, x1+w, y1)
	Gdip_DeleteBrush(pPen)
	pPen := Gdip_CreatePen(c, lw)
	Gdip_DrawLine(G, pPen,x1, y1+h, x1+w, y1+h)
	Gdip_DeleteBrush(pPen)

	UpdateLayeredWindow(hWndOverlay, hdc, 0, 0, sW, sH)
}

; 
ClearDisplay()
{
	global hWndOverlay, hdc, hbm, obm, sW, sH, G
	Gui,overlay:Destroy
	InitGDIP1()

	SelectObject(hdc, obm)
	DeleteObject(hbm)
	DeleteDC(hdc)
	Gdip_DeleteGraphics(G)
	
	InitGDIP2()
}

; initialize GDIP when starting or recreating
InitGDIP1()
{
	global hWndOverlay
	Gui, overlay: -Caption +E0x80000 +LastFound +AlwaysOnTop +ToolWindow +OwnDialogs
	Gui, overlay: Show, NA
	hWndOverlay := WinExist()
}
; initialize GDIP when starting or after deleting objects
InitGDIP2()
{
	global G, hbm, hdc, obm, sW, sH
	hbm := CreateDIBSection(sW, sH)
	hdc := CreateCompatibleDC()
	obm := SelectObject(hdc, hbm)
	G := Gdip_GraphicsFromHDC(hdc)
	Gdip_SetSmoothingMode(G, 4)
}

UpdateLayeredWindow(hwnd, hdc, x="", y="", w="", h="", Alpha=255)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	if ((x != "") && (y != ""))
		VarSetCapacity(pt, 8), NumPut(x, pt, 0, "UInt"), NumPut(y, pt, 4, "UInt")

	if (w = "") ||(h = "")
		WinGetPos,,, w, h, ahk_id %hwnd%
   
	return DllCall("UpdateLayeredWindow"
					, Ptr, hwnd
					, Ptr, 0
					, Ptr, ((x = "") && (y = "")) ? 0 : &pt
					, "int64*", w|h<<32
					, Ptr, hdc
					, "int64*", 0
					, "uint", 0
					, "UInt*", Alpha<<16|1<<24
					, "uint", 2)
}
CreateDIBSection(w, h, hdc="", bpp=32, ByRef ppvBits=0)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	hdc2 := hdc ? hdc : GetDC()
	VarSetCapacity(bi, 40, 0)
	NumPut(w, bi, 4, "uint")
	, NumPut(h, bi, 8, "uint")
	, NumPut(40, bi, 0, "uint")
	, NumPut(1, bi, 12, "ushort")
	, NumPut(0, bi, 16, "uInt")
	, NumPut(bpp, bi, 14, "ushort")
	hbm := DllCall("CreateDIBSection"
					, Ptr, hdc2
					, Ptr, &bi
					, "uint", 0
					, A_PtrSize ? "UPtr*" : "uint*", ppvBits
					, Ptr, 0
					, "uint", 0, Ptr)

	if !hdc
		ReleaseDC(hdc2)
	return hbm
}
CreateCompatibleDC(hdc=0)
{
   return DllCall("CreateCompatibleDC", A_PtrSize ? "UPtr" : "UInt", hdc)
}
SelectObject(hdc, hgdiobj)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	return DllCall("SelectObject", Ptr, hdc, Ptr, hgdiobj)
}
DeleteObject(hObject)
{
   return DllCall("DeleteObject", A_PtrSize ? "UPtr" : "UInt", hObject)
}
GetDC(hwnd=0)
{
	return DllCall("GetDC", A_PtrSize ? "UPtr" : "UInt", hwnd)
}
ReleaseDC(hdc, hwnd=0)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	return DllCall("ReleaseDC", Ptr, hwnd, Ptr, hdc)
}
DeleteDC(hdc)
{
   return DllCall("DeleteDC", A_PtrSize ? "UPtr" : "UInt", hdc)
}
Gdip_DrawLine(pGraphics, pPen, x1, y1, x2, y2)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	return DllCall("gdiplus\GdipDrawLine"
					, Ptr, pGraphics
					, Ptr, pPen
					, "float", x1
					, "float", y1
					, "float", x2
					, "float", y2)
}

Gdip_GraphicsFromHDC(hdc)
{
    DllCall("gdiplus\GdipCreateFromHDC", A_PtrSize ? "UPtr" : "UInt", hdc, A_PtrSize ? "UPtr*" : "UInt*", pGraphics)
    return pGraphics
}
Gdip_CreatePen(ARGB, w)
{
   DllCall("gdiplus\GdipCreatePen1", "UInt", ARGB, "float", w, "int", 2, A_PtrSize ? "UPtr*" : "UInt*", pPen)
   return pPen
}

Gdip_DeletePen(pPen)
{
   return DllCall("gdiplus\GdipDeletePen", A_PtrSize ? "UPtr" : "UInt", pPen)
}
Gdip_DeleteBrush(pBrush)
{
   return DllCall("gdiplus\GdipDeleteBrush", A_PtrSize ? "UPtr" : "UInt", pBrush)
}

Gdip_DeleteGraphics(pGraphics)
{
   return DllCall("gdiplus\GdipDeleteGraphics", A_PtrSize ? "UPtr" : "UInt", pGraphics)
}
Gdip_SetSmoothingMode(pGraphics, SmoothingMode)
{
   return DllCall("gdiplus\GdipSetSmoothingMode", A_PtrSize ? "UPtr" : "UInt", pGraphics, "int", SmoothingMode)
}
Gdip_Startup()
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	if !DllCall("GetModuleHandle", "str", "gdiplus", Ptr)
		DllCall("LoadLibrary", "str", "gdiplus")
	VarSetCapacity(si, A_PtrSize = 8 ? 24 : 16, 0), si := Chr(1)
	DllCall("gdiplus\GdiplusStartup", A_PtrSize ? "UPtr*" : "uint*", pToken, Ptr, &si, Ptr, 0)
	return pToken
}
Gdip_Shutdown(pToken)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	DllCall("gdiplus\GdiplusShutdown", Ptr, pToken)
	if hModule := DllCall("GetModuleHandle", "str", "gdiplus", Ptr)
		DllCall("FreeLibrary", Ptr, hModule)
	return 0
}
