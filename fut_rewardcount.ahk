#SingleInstance, force

#Include fut_lib.ahk
#Include fut_findbase.ahk
#include fut_coords.ahk

rewards := {}

;old style
rewards["nb20000"] := "|<nb20000a>*115$28.TzzzzzzzzzzzzzsMX4Th+VIzpe5PwqcJjb+VIy68l7zzzzwzzzzk07zz007zy"
rewards["nb20000"] := "|<nb20000b>*115$28.DzzzzzzzzzzzzzwMlaDqcI+TmV6dyO4ObncJeS2AEXzzzzwTzzzk03zz003zy"
rewards["nb20000"] := "|<nb20000c>*115$28.zzzzzzzzzwMl6DocJ2zkXI/yGBEjncJ2y2AFXzzzzzzzzzw03zzk07zz007zy"
rewards["nb25000"] := "|<nb25000a>*115$28.zzzzzzzzzw8FWDqbEeTu52hyTI+rnxEeT24MXzzzzzTzzzw03zzk03zz007zy"
rewards["nb25000"] .= "|<nb25000b>*115$30.DzzzzzzzzzzzzzzwMFaDxfZ2bz84ObyT4Obwy5Obs8l2Dzzzzz7zzzz00DzzU"

rewards["35000nb"] := "|<35000nb>*115$31.zzzzzjzzzzlzzzzsTzzzw3zzzy1zzzz7zzzzzzzzzzzzzzz2AlbzmQ+Zzt2l6zyQMXTzC8Fjw8FX7vzzzzwzzzzy0/zzz00TzzU03zzk01zzzzzzzzzzzzzzzzzzzzzzzzrzzzq+lzzuwHzzxSCTzylIDzzzzzzzk"
; rewards["25000nb"] := "|<25000nb>*115$31.0zzzzU7zzzk1zzzs0zzzw3zzzyDzzzzzzzzzz24MXzhCVEzyVEfTwKcJjwzI+by48l7zzzzzkzzzzs01zzw00Dzy001zz000zzzzzzzzzzzzzzzzzzzzzzzzvzzzh1czzqCBzzv77jzwMBLzzzzzzzzzzzzzzzzzk"
rewards["25000nb"] := "|<25000nb>*115$31.0zzzzU7zzzk1zzzs0zzzw3zzzyDzzzzzzzzzz24MXzhCVEzyVEfTwKcJjwzI+by48l7zzzzzkzzzzs01zzw00Dzy001zz000zzzzzzzzzzzzzzzzzzzzzzzzvzzzh1czzqCBzzv77jzwMBLzzzzzzzzzzzzzzzzzk"
rewards["25000nb"] .= "|<25000nb>*115$31.zzzzzzzzzznzzzzszzzzw7zzzy1zzzz0DzzzUDzzzkTzzzvzzzzzzzzzzslaATt/VEjzUKcrzbXIPzble5zU34MzTzzzzDzzzzU1Dzzk01zzs00Tzw00DzzzzzzzzzzzzzzzzzzzzzzzzTzzzEeDzzfXDzzpltzzk"
rewards["20000nb"] := "|<20000nb>*115$31.zzzzzjzzzzlzzzzsTzzzw3zzzy1zzzz7zzzzzzzzzzzzzzyAMn7zGVEdztEXIztcFeTto+pDs8l2Dzzzzzxzzzzy03zzz00TzzU03zzk01zzzzzzzzzzzzzzzzzzzzzzzzrzzzq+lzzuwHzzxSCTzylIDzzzzzzzk"

rewards["35000nb"] .= "|<35000nb>*115$31.07zzzUTzzzlzzzzzzzzzzzzzzzzzzzzsFWATzPZEjz4KcHzvXI9zxke5zlX4MzTzzzzbzzzzk0Dzzs01zzw00Tzy007zz003zzzzzzzzzzzzzzzzzzzzzzzzzzzzzjzzzo6XzzssrzzwwSzzxUpTzzzzzzzzzzzzk"
; rewards["25000nb"] .= "|<25000nb>*115$31.0DzzzUzzzznzzzzzzzzzzzzzzzsEX4Txdo+bzo+5Pzbp2hzbuVIzkV68zzzzzz7zzzzU07zzk00zzs00Dzw003zy001zzzzzzzzzzzzzzzzzzzzzzzzzzzzzrzzzO3FzzgQPzzqSDTzskOjzzzzzzzzzzzzzzzzzk"
rewards["25000nb"] .= "|<25000nb>*115$31.07zzzUzzzzlzzzzvzzzzzzzzzzwMFaDypmVHzm16dznsXIznsJeTkFW4Tzzzzz3zzzzU03zzk00Tzs007zw001zy001zzzzzzzzzzzzzzzzzzzzzzzzzzzzzvzzzP5MzzhS9zzqj7DzwMe7zzzzzzzzzzzzzzzzzk"
rewards["20000nb"] .= "|<20000nb>*115$31.07zzzUTzzznzzzzzzzzzzzzzzzzzzzzlX4MzuI+VTz2BEjz96cLzCVI/z168lzzzzzzzzzzzk0Dzzs03zzw00Tzy007zz007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzjzzzcJ7zzplbzzuwQzzx2cTzzzzzzzzzzzzk"
rewards["20000nb"] .= "|<20000nb>*115$31.3zzzzjzzzzzzzzzzzzzzzVWAFzqZEeTzKcJjyPI+ryQe5Hz34MXzzzzzyTzzzz00TzzU03zzk00zzs00Dzw007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzTzzzcB7zzlljzztsxzzn1ezzzzzzzzzzzzzzzzzzzzzzzk"


coords["rbox1-1"] := [[305,309],[345,347]]
coords["rbox2-1"] := [[260,309],[307,347]]
coords["rbox2-2"] := [[349,309],[395,347]]
coords["rbox3-1"] := [[218,309],[264,347]]
coords["rbox3-2"] := [[305,309],[345,347]]
coords["rbox3-3"] := [[390,309],[437,347]]


LogRewards()
{
	global rewards, rewardbox

	outstring := ""
	
	Loop, 1
	{
		outstring .= A_Index . ","
	
		Loop, 3
		{
			boxcount := A_Index
			Loop %boxcount%
			{
				rtile := boxcount . "-" . A_Index
				outstring .= rtile . ","
				
				for rname, rpattern in rewards
				{
					; MsgBox % "rbox" . rtile
					IVActive()
					if (FindPatternInArea("rbox" . rtile,0,0,rpattern))
					{
						MsgBox Fond %rname% at %rtile%
						continue
					}
				}
			}
		}
		outstring .= "`n"
	}
	FileAppend, %outstring%, rewards.csv
	MsgBox Done!
}

IVActive()
{
	IfWinExist, saturdaynb80
		WinActivate
}

^!+o::
LogRewards()
return

!a::
	IVActive()
	Send {Space}
	WinActivate, missionrewards
return
