missioncoords := {}
savedmissions := {}


GetMissionList()
{
	global savedmissions
	missionlist := ""
	
	for key,value in savedmissions
	{
		missionlist := value . "|" . missionlist
	}
	return %missionlist%
}

savedmissions[1] := "daily80|"
; savedmissions[savedmissions.MaxIndex()+1] := "saturdaynb45"
; savedmissions[savedmissions.MaxIndex()+1] := "fridaychips"
; savedmissions[savedmissions.MaxIndex()+1] := "fridaychips45"
savedmissions[savedmissions.MaxIndex()+1] := "daily60"
savedmissions[savedmissions.MaxIndex()+1] := "fridaychips80"
savedmissions[savedmissions.MaxIndex()+1] := "fridaychips60"
savedmissions[savedmissions.MaxIndex()+1] := "saturdaynb80"
; savedmissions[savedmissions.MaxIndex()+1] := "saturdaynb60"
; savedmissions[savedmissions.MaxIndex()+1] := "dailyvil80"
; savedmissions[savedmissions.MaxIndex()+1] := "dailyvil60"
; savedmissions[savedmissions.MaxIndex()+1] := "dailysci60"
; savedmissions[savedmissions.MaxIndex()+1] := "dailyrob60"
; savedmissions[savedmissions.MaxIndex()+1] := "dailyinf60"
; savedmissions[savedmissions.MaxIndex()+1] := "dailydb80"
; savedmissions[savedmissions.MaxIndex()+1] := "dailydb60"
; savedmissions[savedmissions.MaxIndex()+1] := "dailycap80"
; savedmissions[savedmissions.MaxIndex()+1] := "dailycap60"
; savedmissions[savedmissions.MaxIndex()+1] := "daily45"
; savedmissions[savedmissions.MaxIndex()+1] := "daily30"
savedmissions[savedmissions.MaxIndex()+1] := "generic80"
savedmissions[savedmissions.MaxIndex()+1] := "generic60"
; savedmissions[savedmissions.MaxIndex()+1] := "generic45"
; savedmissions[savedmissions.MaxIndex()+1] := "generic30"

savedmissions[savedmissions.MaxIndex()+1] := "earth4"


missioncoords["daily80"] := {}
missioncoords["daily80"]["planetname"] := "dailyplanet"
missioncoords["daily80"]["missionnum"] := [2,2]
missioncoords["daily80"]["specials"] := true
missioncoords["daily80"]["heal"] := 0
missioncoords["daily80"]["required"] := ["sircalculon"]
missioncoords["daily80"][1] := {}
missioncoords["daily80"][1][1] := [262,225,"p"]
missioncoords["daily80"][1][2] := [357,315,"b"]
missioncoords["daily80"][2] := {}
missioncoords["daily80"][2][1] := [369,327,"b"]
missioncoords["daily80"][3] := {}
missioncoords["daily80"][3][1] := [215,225,"b"]
missioncoords["daily80"][4] := {}
missioncoords["daily80"][4][1] := [369,327,"b"]
missioncoords["daily80"][5] := {}
missioncoords["daily80"][5][1] := [215,225, "b"]
missioncoords["daily80"][6] := {}
missioncoords["daily80"][6][1] := [228,238, "b"]

missioncoords["daily60"] := {}
missioncoords["daily60"]["planetname"] := "dailyplanet"
missioncoords["daily60"]["missionnum"] := [2,2]
missioncoords["daily60"]["specials"] := false
missioncoords["daily60"]["required"] := []
missioncoords["daily60"][1] := {}
missioncoords["daily60"][1][1] := [262,225,"p"]
missioncoords["daily60"][1][2] := [230,240,"b"]
missioncoords["daily60"][2] := {}
missioncoords["daily60"][2][1] := [344,224,"b"]
missioncoords["daily60"][3] := {}
missioncoords["daily60"][3][1] := [344,224,"b"]
missioncoords["daily60"][4] := {}
missioncoords["daily60"][4][1] := [344,224,"b"]
missioncoords["daily60"][5] := {}
missioncoords["daily60"][5][1] := [344,224, "b"]


missioncoords["saturdaynb60"] := {}
missioncoords["saturdaynb60"]["planetname"] := "dailyplanet"
missioncoords["saturdaynb60"]["missionnum"] := [2,3]
missioncoords["saturdaynb60"]["specials"] := false
missioncoords["saturdaynb60"][1] := {}
missioncoords["saturdaynb60"][1][1] := [262,225,"p"]
missioncoords["saturdaynb60"][1][2] := [230,240,"b"]
missioncoords["saturdaynb60"][2] := {}
missioncoords["saturdaynb60"][2][1] := [344,224,"b"]
missioncoords["saturdaynb60"][3] := {}
missioncoords["saturdaynb60"][3][1] := [344,224,"b"]
missioncoords["saturdaynb60"][4] := {}
missioncoords["saturdaynb60"][4][1] := [344,224,"b"]
missioncoords["saturdaynb60"][5] := {}
missioncoords["saturdaynb60"][5][1] := [344,224, "b"]

missioncoords["saturdaynb80"] := {}
missioncoords["saturdaynb80"]["planetname"] := "dailyplanet"
missioncoords["saturdaynb80"]["missionnum"] := [2,3]
missioncoords["saturdaynb80"]["specials"] := true
missioncoords["saturdaynb80"]["heal"] := 0
missioncoords["saturdaynb80"][1] := {}
missioncoords["saturdaynb80"][1][1] := [262,225,"p"]
missioncoords["saturdaynb80"][1][2] := [357,315,"b"]
missioncoords["saturdaynb80"][2] := {}
missioncoords["saturdaynb80"][2][1] := [369,327,"b"]
missioncoords["saturdaynb80"][3] := {}
missioncoords["saturdaynb80"][3][1] := [215,225,"b"]
missioncoords["saturdaynb80"][4] := {}
missioncoords["saturdaynb80"][4][1] := [369,327,"b"]
missioncoords["saturdaynb80"][5] := {}
missioncoords["saturdaynb80"][5][1] := [215,225, "b"]
missioncoords["saturdaynb80"][6] := {}
missioncoords["saturdaynb80"][6][1] := [228,238, "b"]

missioncoords["generic80"] := {}
missioncoords["generic80"]["planetname"] := "dailyplanet"
missioncoords["generic80"]["missionnum"] := [1,3]
missioncoords["generic80"]["specials"] := true
missioncoords["generic80"]["heal"] := 0
missioncoords["generic80"][1] := {}
missioncoords["generic80"][1][1] := [262,225,"p"]
missioncoords["generic80"][1][2] := [357,315,"b"]
missioncoords["generic80"][2] := {}
missioncoords["generic80"][2][1] := [369,327,"b"]
missioncoords["generic80"][3] := {}
missioncoords["generic80"][3][1] := [215,225,"b"]
missioncoords["generic80"][4] := {}
missioncoords["generic80"][4][1] := [369,327,"b"]
missioncoords["generic80"][5] := {}
missioncoords["generic80"][5][1] := [215,225, "b"]
missioncoords["generic80"][6] := {}
missioncoords["generic80"][6][1] := [228,238, "b"]

missioncoords["generic60"] := {}
missioncoords["generic60"]["planetname"] := "dailyplanet"
missioncoords["generic60"]["missionnum"] := [1,3]
missioncoords["generic60"]["specials"] := false
missioncoords["generic60"][1] := {}
missioncoords["generic60"][1][1] := [262,225,"p"]
missioncoords["generic60"][1][2] := [230,240,"b"]
missioncoords["generic60"][2] := {}
missioncoords["generic60"][2][1] := [344,224,"b"]
missioncoords["generic60"][3] := {}
missioncoords["generic60"][3][1] := [344,224,"b"]
missioncoords["generic60"][4] := {}
missioncoords["generic60"][4][1] := [344,224,"b"]
missioncoords["generic60"][5] := {}
missioncoords["generic60"][5][1] := [344,224, "b"]

missioncoords["fridaychips60"] := {}
missioncoords["fridaychips60"]["planetname"] := "dailyplanet"
missioncoords["fridaychips60"]["missionnum"] := [3,3]
missioncoords["fridaychips60"]["specials"] := 1
missioncoords["fridaychips60"][1] := {}
missioncoords["fridaychips60"][1][1] := [262,225,"p"]
missioncoords["fridaychips60"][1][2] := [230,240,"b"]
missioncoords["fridaychips60"][2] := {}
missioncoords["fridaychips60"][2][1] := [344,224,"b"]
missioncoords["fridaychips60"][3] := {}
missioncoords["fridaychips60"][3][1] := [344,224,"b"]
missioncoords["fridaychips60"][4] := {}
missioncoords["fridaychips60"][4][1] := [344,224,"b"]
missioncoords["fridaychips60"][5] := {}
missioncoords["fridaychips60"][5][1] := [344,224, "b"]


missioncoords["fridaychips80"] := {}
missioncoords["fridaychips80"]["planetname"] := "dailyplanet"
missioncoords["fridaychips80"]["missionnum"] := [3,3]
missioncoords["fridaychips80"]["specials"] := true
missioncoords["fridaychips80"]["heal"] := 0
missioncoords["fridaychips80"][1] := {}
missioncoords["fridaychips80"][1][1] := [262,225,"p"]
missioncoords["fridaychips80"][1][2] := [357,315,"b"]
missioncoords["fridaychips80"][2] := {}
missioncoords["fridaychips80"][2][1] := [369,327,"b"]
missioncoords["fridaychips80"][3] := {}
missioncoords["fridaychips80"][3][1] := [215,225,"b"]
missioncoords["fridaychips80"][4] := {}
missioncoords["fridaychips80"][4][1] := [369,327,"b"]
missioncoords["fridaychips80"][5] := {}
missioncoords["fridaychips80"][5][1] := [215,225, "b"]
missioncoords["fridaychips80"][6] := {}
missioncoords["fridaychips80"][6][1] := [228,238, "b"]



missioncoords["earth4"] := {}
missioncoords["earth4"]["planetname"] := "earth"
missioncoords["earth4"]["missionnum"] := [1,4]
missioncoords["earth4"]["specials"] := false
missioncoords["earth4"][1] := {}
missioncoords["earth4"][1][1] := [313, 263, "b"]
missioncoords["earth4"][2] := {}
missioncoords["earth4"][2][1] := [380, 251, "p"]
missioncoords["earth4"][2][2] := [317, 380, "i",, 0, [[3,1],[2,1]]]
missioncoords["earth4"][3] := {}
missioncoords["earth4"][3][1] := [0, 0, "p"]
missioncoords["earth4"][3][2] := [420, 263, "b"]
missioncoords["earth4"][4] := {}
missioncoords["earth4"][4][1] := [356, 204, "b"]
missioncoords["earth4"][5] := {}
missioncoords["earth4"][5][1] := [306, 162, "b"]
missioncoords["earth4"][6] := {}
missioncoords["earth4"][6][1] := [240, 163, "b"]
missioncoords["earth4"][6] := {}
missioncoords["earth4"][6][1] := [292, 173, "i",, "santabender", [[2,1],[3,2],[2,1]]]
missioncoords["earth4"][7] := {}
missioncoords["earth4"][7][1] := [419, 277, "b"]
missioncoords["earth4"][8] := {}
missioncoords["earth4"][8][1] := [0, 0, "i",, 0, [[3,3],[3,3]]]


savedmissions[savedmissions.MaxIndex()+1] := "sharktank"
missioncoords["sharktank"] := {}
missioncoords["sharktank"]["planetname"] := "carcaron"
missioncoords["sharktank"]["missionnum"] := [1,4]
missioncoords["sharktank"]["specials"] := true
missioncoords["sharktank"]["difficulty"] := "hard"
missioncoords["sharktank"][1] := {}
missioncoords["sharktank"][1][1] := [415,109, "b",,,"s",10]
missioncoords["sharktank"][2] := {}
missioncoords["sharktank"][2][1] := [291,380, "b",,,"s",5]
missioncoords["sharktank"][3] := {}
missioncoords["sharktank"][3][1] := [217,98, "b"]
missioncoords["sharktank"][4] := {}
missioncoords["sharktank"][4][1] := [189,277, "b"]
missioncoords["sharktank"][5] := {}
missioncoords["sharktank"][5][1] := [292,187, "b",,,"s",3]
missioncoords["sharktank"][6] := {}
missioncoords["sharktank"][6][1] := [497,227, "b",,,"s",3]



; savedmissions[savedmissions.MaxIndex()+1] := "evil3"
; missioncoords["evil3"] := {}
; missioncoords["evil3"]["planetname"] := "earth"
; missioncoords["evil3"]["missionnum"] := [2,3]
; missioncoords["evil3"]["specials"] := false
; missioncoords["evil3"]["difficulty"] := "easy"
; missioncoords["evil3"][1] := {}
; missioncoords["evil3"][1][1] := [261,226, "b"]
; missioncoords["evil3"][2] := {}
; missioncoords["evil3"][2][1] := [343,302, "b"]
; missioncoords["evil3"][3] := {}
; missioncoords["evil3"][3][1] := [343,200, "b"]
; missioncoords["evil3"][4] := {}
; missioncoords["evil3"][4][1] := [343,173, "b"]
; missioncoords["evil3"][5] := {}
; missioncoords["evil3"][5][1] := [343,239, "b",,,"s"]


; savedmissions[savedmissions.MaxIndex()+1] := "vigilante3"
; missioncoords["vigilante3"] := {}
; missioncoords["vigilante3"]["planetname"] := "earth"
; missioncoords["vigilante3"]["missionnum"] := [4,3]
; missioncoords["vigilante3"]["specials"] := true
; missioncoords["vigilante3"]["difficulty"] := "hard"
; missioncoords["vigilante3"][1] := {}
; missioncoords["vigilante3"][1][1] := [364,161, "b"]
; missioncoords["vigilante3"][2] := {}
; missioncoords["vigilante3"][2][1] := [266,137, "b"]
; missioncoords["vigilante3"][3] := {}
; missioncoords["vigilante3"][3][1] := [444,315, "b"]
; missioncoords["vigilante3"][4] := {}
; missioncoords["vigilante3"][4][1] := [395,185, "b"]
; missioncoords["vigilante3"][5] := {}
; missioncoords["vigilante3"][5][1] := [459,303, "b"]
; missioncoords["vigilante3"][6] := {}
; missioncoords["vigilante3"][6][1] := [369,200, "b"]



; savedmissions[savedmissions.MaxIndex()+1] := "heros2"
; missioncoords["heros2"] := {}
; missioncoords["heros2"]["planetname"] := "earth"
; missioncoords["heros2"]["missionnum"] := [5,2]
; missioncoords["heros2"]["specials"] := true
; missioncoords["heros2"]["difficulty"] := "hard"
; missioncoords["heros2"][1] := {}
; missioncoords["heros2"][1][1] := [313,122, "b"]
; missioncoords["heros2"][2] := {}
; missioncoords["heros2"][2][1] := [163,200, "p"]
; missioncoords["heros2"][2][1] := [548,149, "b",,"s"]
; missioncoords["heros2"][3] := {}
; missioncoords["heros2"][3][1] := [318,417, "p"]
; missioncoords["heros2"][3][2] := [744,151, "d",2,[287,307]]
; missioncoords["heros2"][3][2] := [523,241, "b",,"s"]
; missioncoords["heros2"][4] := {}
; missioncoords["heros2"][4][1] := [178,455, "b",,"s"]
; missioncoords["heros2"][5] := {}
; missioncoords["heros2"][5][1] := [74,352, "b",,"s"]


; ; Zoidberg quest
; savedmissions[savedmissions.MaxIndex()+1] := "beachday"
; missioncoords["beachday"] := {}
; missioncoords["beachday"]["planetname"] := "decapod10"
; missioncoords["beachday"]["missionnum"] := [1,1]
; missioncoords["beachday"]["specials"] := false
; ;missioncoords["beachday"]["required"] := ["billnye"]
; missioncoords["beachday"][1] := {}
; missioncoords["beachday"][1][1] := [247,240,"p"]
; missioncoords["beachday"][1][2] := [329,240,"p",2]
; missioncoords["beachday"][1][3] := [329,240,"b",2]
; missioncoords["beachday"][2] := {}
; missioncoords["beachday"][2][1] := [329,240,"i",,"billnye",[[3,3]]]
; missioncoords["beachday"][3] := {}
; missioncoords["beachday"][3][1] := [291,221,"b"]
; missioncoords["beachday"][4] := {}
; missioncoords["beachday"][4][1] := [256,240,"b"]
; missioncoords["beachday"][5] := {}
; missioncoords["beachday"][5][1] := [346,276,"b"]8
; missioncoords["beachday"][6] := {}
; missioncoords["beachday"][6][1] := [329,240,"b",2]
; missioncoords["beachday"][7] := {}
; ;missioncoords["beachday"][7][1] := [329,240,"i",,"billnye",[[2,1]]]	; do nothing
; missioncoords["beachday"][7][1] := [329,240,"i",,"billnye",[[2,2],[2,1]]]	; spend 100NB for 2 tera chips
; missioncoords["beachday"][8] := {}
; missioncoords["beachday"][8][1] := [365,277,"b"]

; savedmissions[savedmissions.MaxIndex()+1] := "overexposed"
; missioncoords["overexposed"] := {}
; missioncoords["overexposed"]["planetname"] := "decapod10"
; missioncoords["overexposed"]["missionnum"] := [1,3]
; missioncoords["overexposed"]["specials"] := false
; missioncoords["overexposed"][1] := {}
; missioncoords["overexposed"][1][1] := [250,250,"p"]
; missioncoords["overexposed"][1][2] := [330,262,"b"]
; missioncoords["overexposed"][2] := {}
; missioncoords["overexposed"][2][1] := [344,277,"i",,"lrrr",[[3,1]]]
; missioncoords["overexposed"][3] := {}
; missioncoords["overexposed"][3][1] := [293,326,"b"]
; missioncoords["overexposed"][4] := {}
; missioncoords["overexposed"][4][1] := [280,326,"b"]
; missioncoords["overexposed"][5] := {}
; missioncoords["overexposed"][5][1] := [304,225,"b"]
; missioncoords["overexposed"][6] := {}
; missioncoords["overexposed"][6][1] := [279,328,"b",,"s",3]
; missioncoords["overexposed"][7] := {}
; missioncoords["overexposed"][7][1] := [253,239,"i",,"lrrr",[[2,1],[3,1],[0,1]]]
; missioncoords["overexposed"][8] := {}
; missioncoords["overexposed"][8][1] := [304,315,"b"]


; savedmissions[savedmissions.MaxIndex()+1] := "tasting"
; missioncoords["tasting"] := {}
; missioncoords["tasting"]["planetname"] := "decapod10"
; missioncoords["tasting"]["missionnum"] := [1,5]
; missioncoords["tasting"]["specials"] := false
; missioncoords["tasting"][1] := {}
; missioncoords["tasting"][1][1] := [289,211,"p"]
; missioncoords["tasting"][1][2] := [329,301,"b",2]
; missioncoords["tasting"][2] := {}
; missioncoords["tasting"][2][1] := [305,316,"i",,"lrrr",[[2,2],[2,2]]]
; missioncoords["tasting"][3] := {}
; missioncoords["tasting"][3][1] := [344,265,"b"]
; missioncoords["tasting"][4] := {}
; missioncoords["tasting"][4][1] := [332,251,"b"]
; missioncoords["tasting"][5] := {}
; missioncoords["tasting"][5][1] := [307,317,"b"]
; missioncoords["tasting"][6] := {}
; missioncoords["tasting"][6][1] := [330,288,"b"]
; missioncoords["tasting"][7] := {}
; missioncoords["tasting"][7][1] := [343,240,"b"]
; missioncoords["tasting"][8] := {}
; missioncoords["tasting"][8][1] := [343,276,"i",,"lrrr",[[2,1],[3,1]]]

; ; cornwood event


; savedmissions[savedmissions.MaxIndex()+1] := "cornwood5"
; missioncoords["cornwood5"] := {}
; missioncoords["cornwood5"]["planetname"] := "earth"
; missioncoords["cornwood5"]["missionnum"] := [1,5]
; missioncoords["cornwood5"]["specials"] := false
; missioncoords["cornwood5"][1] := {}
; missioncoords["cornwood5"][1][1] := [289,211,"p"]
; missioncoords["cornwood5"][1][2] := [329,301,"b",2]
; missioncoords["cornwood5"][2] := {}
; missioncoords["cornwood5"][2][1] := [305,316,"i",,"lrrr",[[2,2],[2,2]]]


; savedmissions[savedmissions.MaxIndex()+1] := "tourstop3"
; missioncoords["tourstop3"] := {}
; missioncoords["tourstop3"]["planetname"] := "earth"
; missioncoords["tourstop3"]["missionnum"] := [1,3]
; missioncoords["tourstop3"]["specials"] := false
; missioncoords["tourstop3"]["required"] := ["sircalculon"]
; missioncoords["tourstop3"][1] := {}
; missioncoords["tourstop3"][1][1] := [364,251,"b"]
; missioncoords["tourstop3"][2] := {}
; missioncoords["tourstop3"][2][1] := [445,201,"b"]
; missioncoords["tourstop3"][3] := {}
; missioncoords["tourstop3"][3][1] := [446,200,"b"]
; missioncoords["tourstop3"][4] := {}
; missioncoords["tourstop3"][4][1] := [344,226,"i",,"lrrr",[[2,2],[1,1],[0,1]]]
; missioncoords["tourstop3"][5] := {}
; missioncoords["tourstop3"][5][1] := [394,251,"b"]
; missioncoords["tourstop3"][6] := {}
; missioncoords["tourstop3"][6][1] := [496,149,"b"]


; savedmissions[savedmissions.MaxIndex()+1] := "kingsclash3"
; missioncoords["kingsclash3"] := {}
; missioncoords["kingsclash3"]["planetname"] := "earth"
; missioncoords["kingsclash3"]["missionnum"] := [3,3]
; missioncoords["kingsclash3"]["specials"] := false
; missioncoords["kingsclash3"]["required"] := ["kingroberto","gynecaladriel"]
; missioncoords["kingsclash3"][1] := {}
; missioncoords["kingsclash3"][1][1] := [119,212,"i",,"lrrr",[[1,1],[1,1],[0,1]]]
; missioncoords["kingsclash3"][2] := {}
; missioncoords["kingsclash3"][2][1] := [510,211,"b"]
; missioncoords["kingsclash3"][3] := {}
; missioncoords["kingsclash3"][3][1] := [420,175,"b",,"s",4]
; missioncoords["kingsclash3"][4] := {}
; missioncoords["kingsclash3"][4][1] := [330,174,"b"]
; missioncoords["kingsclash3"][5] := {}
; missioncoords["kingsclash3"][5][1] := [355,339,"i",,"lrrr",[[1,1],[1,1],[0,1]]]
; missioncoords["kingsclash3"][6] := {}
; missioncoords["kingsclash3"][6][1] := [292,353,"b"]
; missioncoords["kingsclash3"][7] := {}
; missioncoords["kingsclash3"][7][1] := [294,430,"b"]



; savedmissions[savedmissions.MaxIndex()+1] := "kingsclash"
; missioncoords["kingsclash"] := {}
; missioncoords["kingsclash"]["planetname"] := "earth"
; missioncoords["kingsclash"]["missionnum"] := [3,3]
; missioncoords["kingsclash"]["specials"] := false
; missioncoords["kingsclash"]["heal"] := 2
; missioncoords["kingsclash"]["required"] := ["kingroberto","sircalculon"]
; missioncoords["kingsclash"][1] := {}
; missioncoords["kingsclash"][1][1] := [120,340,"b"]
; missioncoords["kingsclash"][2] := {}
; missioncoords["kingsclash"][2][1] := [139,315,"i",,"lrrr",[[1,1],[1,1],[0,1]]]
; missioncoords["kingsclash"][3] := {}
; missioncoords["kingsclash"][3][1] := [316,352,"b"]
; missioncoords["kingsclash"][4] := {}
; missioncoords["kingsclash"][4][1] := [293,340,"i",,"lrrr",[[1,1],[1,1],[0,1]]]
; missioncoords["kingsclash"][5] := {}
; missioncoords["kingsclash"][5][1] := [204,316,"b"]
; missioncoords["kingsclash"][6] := {}
; missioncoords["kingsclash"][6][1] := [226,225,"b"]



; ; savedmissions[savedmissions.MaxIndex()+1] := "familytradition"
; ; missioncoords["familytradition"] := {}
; ; missioncoords["familytradition"]["planetname"] := "earth"
; ; missioncoords["familytradition"]["missionnum"] := [4,3]
; ; missioncoords["familytradition"]["specials"] := true
; ; missioncoords["familytradition"]["heal"] := 4
; ; missioncoords["familytradition"]["required"] := ["larius"]
; ; missioncoords["familytradition"][1] := {}
; ; missioncoords["familytradition"][1][1] := [286,162,"b"]
; ; missioncoords["familytradition"][2] := {}
; ; missioncoords["familytradition"][2][1] := [368,212,"b"]
; ; missioncoords["familytradition"][3] := {}
; ; missioncoords["familytradition"][3][1] := [344,263,"i",,"lrrr",[[1,1],[1,1],[0,1]]]
; ; missioncoords["familytradition"][4] := {}
; ; missioncoords["familytradition"][4][1] := [343,226,"b"]
; ; missioncoords["familytradition"][5] := {}
; ; missioncoords["familytradition"][5][1] := [395,212,"b"]
; ; missioncoords["familytradition"][6] := {}
; ; missioncoords["familytradition"][6][1] := [342,287,"b"]
; ; missioncoords["familytradition"][7] := {}
; ; missioncoords["familytradition"][7][1] := [345,340,"b"]
; ; missioncoords["familytradition"][8] := {}
; ; missioncoords["familytradition"][8][1] := [394,441,"b"]


; savedmissions[savedmissions.MaxIndex()+1] := "familytrad52"
; missioncoords["familytrad52"] := {}
; missioncoords["familytrad52"]["planetname"] := "earth"
; missioncoords["familytrad52"]["missionnum"] := [4,3]
; missioncoords["familytrad52"]["specials"] := true
; missioncoords["familytrad52"]["heal"] := 0
; missioncoords["familytrad52"]["required"] := ["larius"]
; missioncoords["familytrad52"][1] := {}
; missioncoords["familytrad52"][1][1] := [326,187,"i",,"lrrr",[[1,1],[1,1],[0,1]]]
; missioncoords["familytrad52"][2] := {}
; missioncoords["familytrad52"][2][1] := [370,186,"b"]
; missioncoords["familytrad52"][3] := {}
; missioncoords["familytrad52"][3][1] := [368,187,"b"]
; missioncoords["familytrad52"][4] := {}
; missioncoords["familytrad52"][4][1] := [346,276,"b"]
; missioncoords["familytrad52"][5] := {}
; missioncoords["familytrad52"][5][1] := [343,303,"b"]
; missioncoords["familytrad52"][6] := {}
; missioncoords["familytrad52"][6][1] := [357,238,"b"]
; missioncoords["familytrad52"][7] := {}
; missioncoords["familytrad52"][7][1] := [355,392,"b"]






; ; robot mafia event
; savedmissions[savedmissions.MaxIndex()+1] := "gangsters"
; missioncoords["gangsters"] := {}
; missioncoords["gangsters"]["planetname"] := "corleone5"
; missioncoords["gangsters"]["missionnum"] := "12"
; missioncoords["gangsters"]["specials"] := true
; missioncoords["gangsters"]["required"] := []
; missioncoords["gangsters"][1] := {}
; missioncoords["gangsters"][1][1] := [275,212,"p",2]
; missioncoords["gangsters"][1][2] := [178,74,"b"]
; missioncoords["gangsters"][2] := {}
; missioncoords["gangsters"][2][1] := [254,317,"b"]
; missioncoords["gangsters"][3] := {}
; missioncoords["gangsters"][3][1] := [307,416,"b"]
; missioncoords["gangsters"][4] := {}
; missioncoords["gangsters"][4][1] := [369,302,"b"]
; missioncoords["gangsters"][5] := {}
; missioncoords["gangsters"][5][1] := [292,174,"b"]
; missioncoords["gangsters"][6] := {}
; missioncoords["gangsters"][6][1] := [268,227,"c",2]


; savedmissions[savedmissions.MaxIndex()+1] := "cementshoes"
; missioncoords["cementshoes"] := {}
; missioncoords["cementshoes"]["planetname"] := "corleone5"
; missioncoords["cementshoes"]["missionnum"] := "4"
; missioncoords["cementshoes"]["specials"] := 1
; missioncoords["cementshoes"]["required"] := ["fry","drcahill","painmonster","michelle","roberto"]
; missioncoords["cementshoes"][1] := {}
; missioncoords["cementshoes"][1][1] := [261,263,"p"]
; missioncoords["cementshoes"][1][2] := [343,239,"c"]

; savedmissions[savedmissions.MaxIndex()+1] := "family"
; missioncoords["family"] := {}
; missioncoords["family"]["planetname"] := "corleone5"
; missioncoords["family"]["missionnum"] := "11"
; missioncoords["family"]["specials"] := 1
; missioncoords["family"]["required"] := []
; missioncoords["family"][1] := {}
; missioncoords["family"][1][1] := [250,341,"p"]
; missioncoords["family"][1][2] := [228,353,"b"]
; missioncoords["family"][2] := {}
; missioncoords["family"][2][1] := [281,355,"b"]
; missioncoords["family"][3] := {}
; missioncoords["family"][3][1] := [342,301,"b"]
; missioncoords["family"][4] := {}
; missioncoords["family"][4][1] := [317,212,"b"]
; missioncoords["family"][5] := {}
; missioncoords["family"][5][1] := [266,237,"c"]
; missioncoords["family"][5][2] := [221,225,"f"]

; ; MonsterCon event
; savedmissions[savedmissions.MaxIndex()+1] := "moncon"
; missioncoords["moncon"] := {}
; missioncoords["moncon"]["planetname"] := "earth"
; missioncoords["moncon"]["missionnum"] := 9
; missioncoords["moncon"]["specials"] := 1
; ;missioncoords["moncon"]["required"] := []
; missioncoords["moncon"][1] := {}
; missioncoords["moncon"][1][1] := [287,264,"b"]
; missioncoords["moncon"][2] := {}
; missioncoords["moncon"][2][1] := [356,226,"p"]
; missioncoords["moncon"][2][2] := [383,277,"b",2]
; missioncoords["moncon"][3] := {}
; missioncoords["moncon"][3][1] := [356,226,"p"]
; missioncoords["moncon"][3][2] := [383,277,"b",2]
; missioncoords["moncon"][4] := {}
; missioncoords["moncon"][4][1] := [356,226,"b"]
; missioncoords["moncon"][5] := {}
; missioncoords["moncon"][5][1] := [293,188,"b"]

; ;Valentines event
; savedmissions[savedmissions.MaxIndex()+1] := "trueromance"
; missioncoords["trueromance"]["planetname"] := "earth"
; missioncoords["trueromance"]["missionnum"] := 4
; missioncoords["trueromance"]["specials"] := 1
; missioncoords["trueromance"]["required"] := ["legmutant"]
; missioncoords["trueromance"][1] := {}
; missioncoords["trueromance"][1][1] := [262,124,"b"]
; missioncoords["trueromance"][2] := {}
; missioncoords["trueromance"][2][1] := [344,226,"b"]
; missioncoords["trueromance"][3] := {}
; missioncoords["trueromance"][3][1] := [344,226,"b"]
; missioncoords["trueromance"][4] := {}
; missioncoords["trueromance"][4][1] := [344,226,"b"]
; missioncoords["trueromance"][5] := {}
; missioncoords["trueromance"][5][1] := [369,377,"b"]
; missioncoords["trueromance"][6] := {}
; missioncoords["trueromance"][6][1] := [318,329,"b"]
; missioncoords["trueromance"][7] := {}
; missioncoords["trueromance"][7][1] := [318,329,"c"]



; Alpha event
; savedmissions[savedmissions.MaxIndex()+1] := "moon9"
; savedmissions[savedmissions.MaxIndex()+1] := "moon10"

; Obsolete event
; savedmissions[savedmissions.MaxIndex()+1] := "cuckoonuts3"
; savedmissions[savedmissions.MaxIndex()+1] := "cuckoonuts2"
; savedmissions[savedmissions.MaxIndex()+1] := "paradise2"
; savedmissions[savedmissions.MaxIndex()+1] := "beach"
; savedmissions[savedmissions.MaxIndex()+1] := "oasis3"
; savedmissions[savedmissions.MaxIndex()+1] := "beach2"
; savedmissions[savedmissions.MaxIndex()+1] := "beach3"

; missioncoords["moon9"] := {}
; missioncoords["moon9"]["planetname"] := "moon"
; missioncoords["moon9"]["missionnum"] := 9
; missioncoords["moon9"]["specials"] := 0
; missioncoords["moon9"][1] := {}
; missioncoords["moon9"][1][1] := [286,303,"p"]
; missioncoords["moon9"][1][2] := [372,251,"b"]
; missioncoords["moon9"][2] := {}
; missioncoords["moon9"][2][1] := [319,275,"b"]
; missioncoords["moon9"][3] := {}
; missioncoords["moon9"][3][1] := [319,275,"b"]
; missioncoords["moon9"][4] := {}
; missioncoords["moon9"][4][1] := [370,300,"c"]

; missioncoords["moon10"] := {}
; missioncoords["moon10"]["planetname"] := "moon"
; missioncoords["moon10"]["missionnum"] := 10
; missioncoords["moon10"]["specials"] := 0
; missioncoords["moon10"][1] := {}
; missioncoords["moon10"][1][1] := [263,271,"p"]
; missioncoords["moon10"][1][2] := [318,327, "b"]
; missioncoords["moon10"][2] := {}
; missioncoords["moon10"][2][1] := [345,277, "b"]
; missioncoords["moon10"][3] := {}
; missioncoords["moon10"][3][1] := [318,328, "b"] ; ?
; missioncoords["moon10"][4] := {}
; missioncoords["moon10"][4][1] := [318,328, "b"]
; missioncoords["moon10"][5] := {}
; missioncoords["moon10"][5][1] := [318,224, "c"]
; missioncoords["moon10"][6][1] := [291, 275, "f"]


; missioncoords["cuckoonuts"] := {}
; missioncoords["cuckoonuts"]["planetname"] := "earth"
; missioncoords["cuckoonuts"]["missionnum"] := 7
; missioncoords["cuckoonuts"]["specials"] := 1
; missioncoords["cuckoonuts"][1] := {}
; missioncoords["cuckoonuts"][1][1] := [238, 251, "p"]
; missioncoords["cuckoonuts"][1][2] := [330, 237, "p"]
; missioncoords["cuckoonuts"][1][3] := [330, 237, "b", 3]
; missioncoords["cuckoonuts"][2] := {}
; missioncoords["cuckoonuts"][2][1] := [343, 224, "b"]
; missioncoords["cuckoonuts"][3] := {}
; missioncoords["cuckoonuts"][3][1] := [329, 212, "b"]
; missioncoords["cuckoonuts"][4] := {}
; missioncoords["cuckoonuts"][4][1] := [393, 296, "b"]
; missioncoords["cuckoonuts"][5] := {}
; missioncoords["cuckoonuts"][5][1] := [357, 238, "b"]
; missioncoords["cuckoonuts"][6] := {}
; missioncoords["cuckoonuts"][6][1] := [395, 277, "c"]


; missioncoords["cuckoonuts2"] := {}
; missioncoords["cuckoonuts2"]["planetname"] := "earth"
; missioncoords["cuckoonuts2"]["missionnum"] := 7
; missioncoords["cuckoonuts2"]["specials"] := 1
; missioncoords["cuckoonuts2"][1] := {}
; missioncoords["cuckoonuts2"][1][1] := [238, 251, "p"]
; missioncoords["cuckoonuts2"][1][2] := [330, 237, "p"]
; missioncoords["cuckoonuts2"][1][3] := [367, 276, "b", 3]
; missioncoords["cuckoonuts2"][2] := {}
; missioncoords["cuckoonuts2"][2][1] := [343, 227, "b"]
; missioncoords["cuckoonuts2"][3] := {}
; missioncoords["cuckoonuts2"][3][1] := [365, 255, "b"]
; missioncoords["cuckoonuts2"][4] := {}
; missioncoords["cuckoonuts2"][4][1] := [279, 161, "b"]
; missioncoords["cuckoonuts2"][5] := {}
; missioncoords["cuckoonuts2"][5][1] := [408, 288, "b"]
; missioncoords["cuckoonuts2"][6] := {}
; missioncoords["cuckoonuts2"][6][1] := [279, 161, "c"]


; missioncoords["cuckoonuts3"] := {}
; missioncoords["cuckoonuts3"]["planetname"] := "earth"
; missioncoords["cuckoonuts3"]["missionnum"] := 7
; missioncoords["cuckoonuts3"]["specials"] := 1
; missioncoords["cuckoonuts3"]["required"] := ["legmutant"]
; missioncoords["cuckoonuts3"][1] := {}
; missioncoords["cuckoonuts3"][1][1] := [238, 251, "p"]
; missioncoords["cuckoonuts3"][1][2] := [181, 79, "p"]
; missioncoords["cuckoonuts3"][1][3] := [330, 237, "p",3]
; missioncoords["cuckoonuts3"][1][4] := [344, 187, "b",3]
; missioncoords["cuckoonuts3"][2] := {}
; missioncoords["cuckoonuts3"][2][1] := [343, 227, "b"]
; missioncoords["cuckoonuts3"][3] := {}
; missioncoords["cuckoonuts3"][3][1] := [343, 227, "b"]
; missioncoords["cuckoonuts3"][4] := {}
; missioncoords["cuckoonuts3"][4][1] := [343, 227, "b"]
; missioncoords["cuckoonuts3"][5] := {}
; missioncoords["cuckoonuts3"][5][1] := [368, 253, "b",,"s"]
; missioncoords["cuckoonuts3"][6] := {}
; missioncoords["cuckoonuts3"][6][1] := [393, 277, "c"]


; missioncoords["paradise2"] := {}
; missioncoords["paradise2"]["planetname"] := "earth"
; missioncoords["paradise2"]["missionnum"] := 3
; missioncoords["paradise2"]["specials"] := 0
; missioncoords["paradise2"][1] := {}
; missioncoords["paradise2"][1][1] := [364, 330, "p"]
; missioncoords["paradise2"][1][2] := [446, 330, "b",3]
; missioncoords["paradise2"][2] := {}
; missioncoords["paradise2"][2][1] := [343, 224, "b"]
; missioncoords["paradise2"][3] := {}
; missioncoords["paradise2"][3][1] := [343, 224, "b"]
; missioncoords["paradise2"][4] := {}
; missioncoords["paradise2"][4][1] := [343, 224, "c"]

; missioncoords["beach"] := {}
; missioncoords["beach"]["planetname"] := "earth"
; missioncoords["beach"]["missionnum"] := 6
; missioncoords["beach"]["specials"] := 0
; missioncoords["beach"][1] := {}
; missioncoords["beach"][1][1] := [236, 250, "p"]
; missioncoords["beach"][1][2] := [330, 238, "p"]
; missioncoords["beach"][1][3] := [330, 238, "b"]
; missioncoords["beach"][2] := {}
; missioncoords["beach"][2][1] := [341, 226, "b"]
; missioncoords["beach"][3] := {}
; missioncoords["beach"][3][1] := [341, 226, "b"]
; missioncoords["beach"][4] := {}
; missioncoords["beach"][4][1] := [343, 224, "b"]
; missioncoords["beach"][5] := {}
; missioncoords["beach"][5][1] := [343, 224, "c"]



; missioncoords["oasis3"] := {}
; missioncoords["oasis3"]["planetname"] := "earth"
; missioncoords["oasis3"]["missionnum"] := 4
; missioncoords["oasis3"]["specials"] := 0
; missioncoords["oasis3"]["required"] := ["kif","hedonismbot"]
; missioncoords["oasis3"][1] := {}
; missioncoords["oasis3"][1][1] := [187, 99, "p"]
; missioncoords["oasis3"][1][2] := [253, 86, "d",2,[273,265]]
; missioncoords["oasis3"][1][3] := [209, 201, "b",2]
; missioncoords["oasis3"][2] := {}
; missioncoords["oasis3"][2][1] := [457, 263, "b"]
; missioncoords["oasis3"][3] := {}
; missioncoords["oasis3"][3][1] := [293, 212, "b"]
; missioncoords["oasis3"][4] := {}
; missioncoords["oasis3"][4][1] := [266, 224, "b"]
; missioncoords["oasis3"][5] := {}
; missioncoords["oasis3"][5][1] := [381, 302, "c"]

; missioncoords["beach2"] := {}
; missioncoords["beach2"]["planetname"] := "earth"
; missioncoords["beach2"]["missionnum"] := 6
; missioncoords["beach2"]["specials"] := 0
; missioncoords["beach2"]["required"] := ["kif"]
; missioncoords["beach2"][1] := {}
; missioncoords["beach2"][1][1] := [235, 251, "p"]
; missioncoords["beach2"][1][2] := [267, 98, "p",2]
; missioncoords["beach2"][1][3] := [318, 250, "p",2]
; missioncoords["beach2"][1][4] := [368, 264, "b",2]
; missioncoords["beach2"][2] := {}
; missioncoords["beach2"][2][1] := [343, 226, "b"]
; missioncoords["beach2"][3] := {}
; missioncoords["beach2"][3][1] := [343, 226, "b"]
; missioncoords["beach2"][4] := {}
; missioncoords["beach2"][4][1] := [317, 213, "b"]
; missioncoords["beach2"][5] := {}
; missioncoords["beach2"][5][1] := [369, 238, "c"]




; missioncoords["beach3"] := {}
; missioncoords["beach3"]["planetname"] := "earth"
; missioncoords["beach3"]["missionnum"] := 6
; missioncoords["beach3"]["specials"] := 0
; missioncoords["beach3"]["required"] := ["kif","smitty"]
; missioncoords["beach3"][1] := {}
; missioncoords["beach3"][1][1] := [235, 251, "p"]
; missioncoords["beach3"][1][2] := [267, 98, "p",2]
; missioncoords["beach3"][1][3] := [241, 123, "b",2]
; missioncoords["beach3"][2] := {}
; missioncoords["beach3"][2][1] := [317, 148, "b"]
; missioncoords["beach3"][3] := {}
; missioncoords["beach3"][3][1] := [343, 226, "b"]
; missioncoords["beach3"][4] := {}
; missioncoords["beach3"][4][1] := [343, 226, "b"]
; missioncoords["beach3"][5] := {}
; missioncoords["beach3"][5][1] := [406, 303, "c"]




; missioncoords["saturdaynb30"] := {}
; missioncoords["saturdaynb30"]["planetname"] := "dailyplanet"
; missioncoords["saturdaynb30"]["missionnum"] := [2,2]
; missioncoords["saturdaynb30"]["specials"] := false
; missioncoords["saturdaynb30"][1] := {}
; missioncoords["saturdaynb30"][1][1] := [222,199,"b"]
; missioncoords["saturdaynb30"][2] := {}
; missioncoords["saturdaynb30"][2][1] := [344,214,"b"]
; missioncoords["saturdaynb30"][3] := {}
; missioncoords["saturdaynb30"][3][1] := [393,277,"b"]
; missioncoords["saturdaynb30"][4] := {}
; missioncoords["saturdaynb30"][4][1] := [300,200,"b"]
; missioncoords["saturdaynb30"][5] := {}
; missioncoords["saturdaynb30"][5][1] := [133, 250, "f"]
; missioncoords["saturdaynb30"][5][2] := [293, 274, "f"]
; missioncoords["saturdaynb30"][5][3] := [350,350,"b"]

; missioncoords["saturdaynb45"] := {}
; missioncoords["saturdaynb45"]["planetname"] := "dailyplanet"
; missioncoords["saturdaynb45"]["missionnum"] := [2,2]
; missioncoords["saturdaynb45"]["specials"] := false
; missioncoords["saturdaynb45"][1] := {}
; missioncoords["saturdaynb45"][1][1] := [300,252,"b"]
; missioncoords["saturdaynb45"][2] := {}
; missioncoords["saturdaynb45"][2][1] := [305,214,"b"]
; missioncoords["saturdaynb45"][3] := {}
; missioncoords["saturdaynb45"][3][1] := [280,200,"b"]
; missioncoords["saturdaynb45"][4] := {}
; missioncoords["saturdaynb45"][4][1] := [280,200,"b"]
; missioncoords["saturdaynb45"][5] := {}
; missioncoords["saturdaynb45"][5][1] := [133, 250, "f"]
; missioncoords["saturdaynb45"][5][2] := [293, 274, "f"]
; ;missioncoords["saturdaynb45"][5][3] := [241,213,"b",,"s"]
; missioncoords["saturdaynb45"][5][3] := [241,213,"b"]
; missioncoords["saturdaynb45"][6] := {}
; missioncoords["saturdaynb45"][6][1] := [190, 250, "b"]


; missioncoords["dailycap60"] := {}
; missioncoords["dailycap60"]["planetname"] := "dailyplanet"
; missioncoords["dailycap60"]["missionnum"] := [2,2]
; missioncoords["dailycap60"]["specials"] := false
; missioncoords["dailycap60"][1] := {}
; missioncoords["dailycap60"][1][1] := [262,225,"p"]
; missioncoords["dailycap60"][1][2] := [230,240,"b"]
; missioncoords["dailycap60"][2] := {}
; missioncoords["dailycap60"][2][1] := [344,224,"b"]
; missioncoords["dailycap60"][3] := {}
; missioncoords["dailycap60"][3][1] := [344,224,"b"]
; missioncoords["dailycap60"][4] := {}
; missioncoords["dailycap60"][4][1] := [344,224,"b"]
; missioncoords["dailycap60"][5] := {}
; missioncoords["dailycap60"][5][1] := [344,224, "b"]

; missioncoords["dailydb60"] := {}
; missioncoords["dailydb60"]["planetname"] := "dailyplanet"
; missioncoords["dailydb60"]["missionnum"] := [2,2]
; missioncoords["dailydb60"]["specials"] := false
; missioncoords["dailydb60"][1] := {}
; missioncoords["dailydb60"][1][1] := [262,225,"p"]
; missioncoords["dailydb60"][1][2] := [230,240,"b"]
; missioncoords["dailydb60"][2] := {}
; missioncoords["dailydb60"][2][1] := [344,224,"b"]
; missioncoords["dailydb60"][3] := {}
; missioncoords["dailydb60"][3][1] := [344,224,"b"]
; missioncoords["dailydb60"][4] := {}
; missioncoords["dailydb60"][4][1] := [344,224,"b"]
; missioncoords["dailydb60"][5] := {}
; missioncoords["dailydb60"][5][1] := [344,224, "b"]

; missioncoords["dailyinf60"] := {}
; missioncoords["dailyinf60"]["planetname"] := "dailyplanet"
; missioncoords["dailyinf60"]["missionnum"] := [4,2]
; missioncoords["dailyinf60"]["specials"] := false
; missioncoords["dailyinf60"][1] := {}
; missioncoords["dailyinf60"][1][1] := [262,225,"p"]
; missioncoords["dailyinf60"][1][2] := [230,240,"b"]
; missioncoords["dailyinf60"][2] := {}
; missioncoords["dailyinf60"][2][1] := [344,224,"b"]
; missioncoords["dailyinf60"][3] := {}
; missioncoords["dailyinf60"][3][1] := [344,224,"b"]
; missioncoords["dailyinf60"][4] := {}
; missioncoords["dailyinf60"][4][1] := [344,224,"b"]
; missioncoords["dailyinf60"][5] := {}
; missioncoords["dailyinf60"][5][1] := [344,224, "b"]

; missioncoords["dailyrob60"] := {}
; missioncoords["dailyrob60"]["planetname"] := "dailyplanet"
; missioncoords["dailyrob60"]["missionnum"] := [5,2]
; missioncoords["dailyrob60"]["specials"] := 1
; missioncoords["dailyrob60"][1] := {}
; missioncoords["dailyrob60"][1][1] := [262,225,"p"]
; missioncoords["dailyrob60"][1][2] := [230,240,"b"]
; missioncoords["dailyrob60"][2] := {}
; missioncoords["dailyrob60"][2][1] := [344,224,"b"]
; missioncoords["dailyrob60"][3] := {}
; missioncoords["dailyrob60"][3][1] := [344,224,"b"]
; missioncoords["dailyrob60"][4] := {}
; missioncoords["dailyrob60"][4][1] := [344,224,"b"]
; missioncoords["dailyrob60"][5] := {}
; missioncoords["dailyrob60"][5][1] := [344,224, "b"]

; missioncoords["dailysci60"] := {}
; missioncoords["dailysci60"]["planetname"] := "dailyplanet"
; missioncoords["dailysci60"]["missionnum"] := [6,2]
; missioncoords["dailysci60"]["specials"] := false
; missioncoords["dailysci60"][1] := {}
; missioncoords["dailysci60"][1][1] := [262,225,"p"]
; missioncoords["dailysci60"][1][2] := [230,240,"b"]
; missioncoords["dailysci60"][2] := {}
; missioncoords["dailysci60"][2][1] := [344,224,"b"]
; missioncoords["dailysci60"][3] := {}
; missioncoords["dailysci60"][3][1] := [344,224,"b"]
; missioncoords["dailysci60"][4] := {}
; missioncoords["dailysci60"][4][1] := [344,224,"b"]
; missioncoords["dailysci60"][5] := {}
; missioncoords["dailysci60"][5][1] := [344,224, "b"]

; missioncoords["dailyvil60"] := {}
; missioncoords["dailyvil60"]["planetname"] := "dailyplanet"
; missioncoords["dailyvil60"]["missionnum"] := [7,2]
; missioncoords["dailyvil60"]["specials"] := 1
; missioncoords["dailyvil60"][1] := {}
; missioncoords["dailyvil60"][1][1] := [262,225,"p"]
; missioncoords["dailyvil60"][1][2] := [230,240,"b"]
; missioncoords["dailyvil60"][2] := {}
; missioncoords["dailyvil60"][2][1] := [344,224,"b"]
; missioncoords["dailyvil60"][3] := {}
; missioncoords["dailyvil60"][3][1] := [344,224,"b"]
; missioncoords["dailyvil60"][4] := {}
; missioncoords["dailyvil60"][4][1] := [344,224,"b"]
; missioncoords["dailyvil60"][5] := {}
; missioncoords["dailyvil60"][5][1] := [344,224, "b"]


; missioncoords["dailycap80"] := {}
; missioncoords["dailycap80"]["planetname"] := "dailyplanet"
; missioncoords["dailycap80"]["missionnum"] := [2,2]
; missioncoords["dailycap80"]["specials"] := true
; missioncoords["dailycap80"]["heal"] := 0
; missioncoords["dailycap80"][1] := {}
; missioncoords["dailycap80"][1][1] := [262,225,"p"]
; missioncoords["dailycap80"][1][2] := [357,315,"b"]
; missioncoords["dailycap80"][2] := {}
; missioncoords["dailycap80"][2][1] := [369,327,"b"]
; missioncoords["dailycap80"][3] := {}
; missioncoords["dailycap80"][3][1] := [215,225,"b"]
; missioncoords["dailycap80"][4] := {}
; missioncoords["dailycap80"][4][1] := [369,327,"b"]
; missioncoords["dailycap80"][5] := {}
; missioncoords["dailycap80"][5][1] := [215,225, "b"]
; missioncoords["dailycap80"][6] := {}
; missioncoords["dailycap80"][6][1] := [228,238, "b"]

; missioncoords["dailydb80"] := {}
; missioncoords["dailydb80"]["planetname"] := "dailyplanet"
; missioncoords["dailydb80"]["missionnum"] := [3,2]
; missioncoords["dailydb80"]["specials"] := true
; missioncoords["dailydb80"]["heal"] := 0
; missioncoords["dailydb80"][1] := {}
; missioncoords["dailydb80"][1][1] := [262,225,"p"]
; missioncoords["dailydb80"][1][2] := [357,315,"b"]
; missioncoords["dailydb80"][2] := {}
; missioncoords["dailydb80"][2][1] := [369,327,"b"]
; missioncoords["dailydb80"][3] := {}
; missioncoords["dailydb80"][3][1] := [215,225,"b"]
; missioncoords["dailydb80"][4] := {}
; missioncoords["dailydb80"][4][1] := [369,327,"b"]
; missioncoords["dailydb80"][5] := {}
; missioncoords["dailydb80"][5][1] := [215,225, "b"]
; missioncoords["dailydb80"][6] := {}
; missioncoords["dailydb80"][6][1] := [228,238, "b"]



; missioncoords["dailyvil80"] := {}
; missioncoords["dailyvil80"]["planetname"] := "dailyplanet"
; missioncoords["dailyvil80"]["missionnum"] := [7,2]
; missioncoords["dailyvil80"]["specials"] := true
; missioncoords["dailyvil80"]["heal"] := 2
; missioncoords["dailyvil80"][1] := {}
; missioncoords["dailyvil80"][1][1] := [262,225,"p"]
; missioncoords["dailyvil80"][1][2] := [357,315,"b"]
; missioncoords["dailyvil80"][2] := {}
; missioncoords["dailyvil80"][2][1] := [369,327,"b"]
; missioncoords["dailyvil80"][3] := {}
; missioncoords["dailyvil80"][3][1] := [215,225,"b"]
; missioncoords["dailyvil80"][4] := {}
; missioncoords["dailyvil80"][4][1] := [369,327,"b"]
; missioncoords["dailyvil80"][5] := {}
; missioncoords["dailyvil80"][5][1] := [215,225, "b"]
; missioncoords["dailyvil80"][6] := {}
; missioncoords["dailyvil80"][6][1] := [228,238, "b"]



; missioncoords["generic30"] := {}
; missioncoords["generic30"]["planetname"] := "dailyplanet"
; missioncoords["generic30"]["missionnum"] := [1,2]
; missioncoords["generic30"]["specials"] := false
; missioncoords["generic30"][1] := {}
; missioncoords["generic30"][1][1] := [222,199,"b"]
; missioncoords["generic30"][2] := {}
; missioncoords["generic30"][2][1] := [344,214,"b"]
; missioncoords["generic30"][3] := {}
; missioncoords["generic30"][3][1] := [393,277,"b"]
; missioncoords["generic30"][4] := {}
; missioncoords["generic30"][4][1] := [300,200,"b"]
; missioncoords["generic30"][5] := {}
; missioncoords["generic30"][5][1] := [133, 250, "f"]
; missioncoords["generic30"][5][2] := [293, 274, "f"]
; missioncoords["generic30"][5][3] := [350,350,"b"]


; missioncoords["generic45"] := {}
; missioncoords["generic45"]["planetname"] := "dailyplanet"
; missioncoords["generic45"]["missionnum"] := [1,2]
; missioncoords["generic45"]["specials"] := false
; missioncoords["generic45"][1] := {}
; missioncoords["generic45"][1][1] := [300,252,"b"]
; missioncoords["generic45"][2] := {}
; missioncoords["generic45"][2][1] := [305,214,"b"]
; missioncoords["generic45"][3] := {}
; missioncoords["generic45"][3][1] := [280,200,"b"]
; missioncoords["generic45"][4] := {}
; missioncoords["generic45"][4][1] := [280,200,"b"]
; missioncoords["generic45"][5] := {}
; missioncoords["generic45"][5][1] := [133, 250, "f"]
; missioncoords["generic45"][5][2] := [293, 274, "f"]
; missioncoords["generic45"][5][3] := [241,213,"b",,"s"]
; missioncoords["generic45"][6] := {}
; missioncoords["generic45"][6][1] := [190, 250, "b"]


; missioncoords["daily30"] := {}
; missioncoords["daily30"]["planetname"] := "dailyplanet"
; missioncoords["daily30"]["missionnum"] := 4
; missioncoords["daily30"]["specials"] := 0
; missioncoords["daily30"][1] := {}
; missioncoords["daily30"][1][1] := [222,199,"b"]
; missioncoords["daily30"][2] := {}
; missioncoords["daily30"][2][1] := [344,214,"b"]
; missioncoords["daily30"][3] := {}
; missioncoords["daily30"][3][1] := [393,277,"b"]
; missioncoords["daily30"][4] := {}
; missioncoords["daily30"][4][1] := [300,200,"b"]
; missioncoords["daily30"][5] := {}
; missioncoords["daily30"][5][1] := [133, 250, "f"]
; missioncoords["daily30"][5][2] := [293, 274, "f"]
; missioncoords["daily30"][5][3] := [350,350,"b"]


; missioncoords["daily45"] := {}
; missioncoords["daily45"]["planetname"] := "dailyplanet"
; missioncoords["daily45"]["missionnum"] := 4
; missioncoords["daily45"]["specials"] := false
; missioncoords["daily45"][1] := {}
; missioncoords["daily45"][1][1] := [300,252,"b"]
; missioncoords["daily45"][2] := {}
; missioncoords["daily45"][2][1] := [305,214,"b"]
; missioncoords["daily45"][3] := {}
; missioncoords["daily45"][3][1] := [280,200,"b"]
; missioncoords["daily45"][4] := {}
; missioncoords["daily45"][4][1] := [280,200,"b"]
; missioncoords["daily45"][5] := {}
; missioncoords["daily45"][5][1] := [133, 250, "f"]
; missioncoords["daily45"][5][2] := [293, 274, "f"]
; missioncoords["daily45"][5][3] := [241,213,"b",,"s"]
; missioncoords["daily45"][6] := {}
; missioncoords["daily45"][6][1] := [190, 250, "b"]


; missioncoords["fridaychips"] := {}
; missioncoords["fridaychips"]["planetname"] := "dailyplanet"
; missioncoords["fridaychips"]["missionnum"] := [8,2]
; missioncoords["fridaychips"]["specials"] := false
; missioncoords["fridaychips"][1] := {}
; missioncoords["fridaychips"][1][1] := [222,199,"b"]
; missioncoords["fridaychips"][2] := {}
; missioncoords["fridaychips"][2][1] := [344,214,"b"]
; missioncoords["fridaychips"][3] := {}
; missioncoords["fridaychips"][3][1] := [393,277,"b"]
; missioncoords["fridaychips"][4] := {}
; missioncoords["fridaychips"][4][1] := [300,200,"b"]
; missioncoords["fridaychips"][5] := {}
; missioncoords["fridaychips"][5][1] := [133, 250, "f"]
; missioncoords["fridaychips"][5][2] := [293, 274, "f"]
; missioncoords["fridaychips"][5][3] := [350,350,"b"]



; missioncoords["fridaychips45"] := {}
; missioncoords["fridaychips45"]["planetname"] := "dailyplanet"
; missioncoords["fridaychips45"]["missionnum"] := [8,2]
; missioncoords["fridaychips45"]["specials"] := false
; missioncoords["fridaychips45"][1] := {}
; missioncoords["fridaychips45"][1][1] := [300,252,"b"]
; missioncoords["fridaychips45"][2] := {}
; missioncoords["fridaychips45"][2][1] := [305,214,"b"]
; missioncoords["fridaychips45"][3] := {}
; missioncoords["fridaychips45"][3][1] := [280,200,"b"]
; missioncoords["fridaychips45"][4] := {}
; missioncoords["fridaychips45"][4][1] := [280,200,"b"]
; missioncoords["fridaychips45"][5] := {}
; missioncoords["fridaychips45"][5][1] := [133, 250, "f"]
; missioncoords["fridaychips45"][5][2] := [293, 274, "f"]
; missioncoords["fridaychips45"][5][3] := [241,213,"b"]
; missioncoords["fridaychips45"][6] := {}
; missioncoords["fridaychips45"][6][1] := [190, 250, "b"]

