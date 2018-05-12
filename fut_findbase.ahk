#Include fut_findlib.ahk

findbase := {}
findbase["futurama"] := "|<futurama>*119$59.zzzzzzzzzz1zzzzzzzzyzznzzzzzzxzzbzzzzzzvtm4t2313VnnatqRaMavUbBngzgnjnTCPbNsNbQ6yQrCninCrBwliNaNaRiNw363C3Av0zzzzzzzzzzU"
findbase["futurama"] .= "|<futurama>*200$58.zzzzzzzzzy3zzzzzzzzvzzTzzzzzzjzxzzzzzzyzRVSkkkEsPxrRvCvAnRUrRrhzgvjqzRrSrknisPxrRvSvSvRjrRnBvhvhqz5tWrUrikTzzzzzzzzzU"

findbase["task"] := ""
;findbase["task"]:="|<taskstem>*168$10.040U40U40V4AVYAVUA1UA1UA0U2"
findbase["task"].="|<taskstem1>*151$10.0E20E24EW4EW40U40U40U2"
findbase["task"].="|<taskstem2>*174$9.0010M61UM61VMK4V0E410E40U"
findbase["task"].="|<taskstem3>*173$4.01980HP800U"
findbase["task"].="|<taskstem4>*149$5.008nAl4NaMV"

;  taskstem
; _________0
; ________0_
; _______0__
; ______0___
; _____0____
; ____0____0
; ___0____00
; __0____00_
; _0____00__
; 0____00___
; ____00____
; ___00_____
; __00______
; _00_______
; 00________
; 0_________

;  taskstem1
; _______0__
; ______0___
; _____0____
; ____0____0
; ___0____0_
; __0____0__
; _0____0___
; 0____0____
; ____0_____
; ___0______
; __0_______
; _0________
; 0_________

;  taskstem2
; _________
; ________0
; _______00
; ______00_
; _____00__
; ____00___
; ___00____
; __00____0
; _00____0_
; 00____0__
; 0____0___
; ____0____
; ___0_____
; __0______
; _0_______
; 0________

; taskstem3
; ____
; ____
; ___0
; __0_
; _0__
; 0___
; ____
; ___0
; __00
; _00_
; 00__
; 0___
; ____
; ____
; ____

; taskstem4
; _____
; _____
; ____0
; ___00
; __00_
; _00__
; 00___
; 0___0
; ___00
; __00_
; _00__
; 00___
; 0____

; findbase["money"]:="|<moneycollect>*220$24.jzzljzzVjzz1jzy1bzw1bzk1VzU1UC01U001zs7zU"
; findbase["money"].="|<moneycollect2>*220$24.jzzljzzVjzz1bzz1bzy1bzs1VzU1UC01U001k003zw7zU"
; findbase["money"].="|<moneycollect3>*220$25.jzzknzzkNzzsAzzs6Tzs37zU1UzU0k300M000Dz0zy"
; findbase["money"].="|<moneycollect4>*220$25.jzzknzzkNzzkAzzk6TzU33z01UT00k000Q000TzUzy"
; findbase["money"].="|<moneycollect5>*220$24.jzztjzzljzzVbzz1bzy1bzs1Xzk1UT01U001U001zw7zU"

;   moneycollect
; 0_000000000000000000___0
; 0_00000000000000000____0
; 0_0000000000000000_____0
; 0_000000000000000______0
; 0__0000000000000_______0
; 0__00000000000_________0
; 0____00000000__________0
; 0_______000____________0
; 0______________________0
; 000000000______000000000

;   moneycollect2
; 0_000000000000000000___0
; 0_00000000000000000____0
; 0_0000000000000000_____0
; 0__000000000000000_____0
; 0__00000000000000______0
; 0__000000000000________0
; 0____00000000__________0
; 0_______000____________0
; 0______________________0
; 00____________________00
; 0000000000_____000000000

;   moneycollect3
; 0_000000000000000000____0
; 0__0000000000000000_____0
; 0__0000000000000000_____0
; 0__000000000000000______0
; 0__00000000000000_______0
; 0___0000000000__________0
; 0_____0000000___________0
; 0________00_____________0
; 0_______________________0
; 000000000______0000000000

;   moneycollect4
; 0_000000000000000000____0
; 0__0000000000000000_____0
; 0__000000000000000______0
; 0__00000000000000_______0
; 0__000000000000_________0
; 0____00000000___________0
; 0______00000____________0
; 0_______________________0
; 00_____________________00
; 0000000000_____0000000000

;   moneycollect5
; 0_0000000000000000000__0
; 0_000000000000000000___0
; 0_00000000000000000____0
; 0__000000000000000_____0
; 0__00000000000000______0
; 0__000000000000________0
; 0___0000000000_________0
; 0______00000___________0
; 0______________________0
; 0______________________0
; 0000000000_____000000000


findbase["money"]:=""
;findbase["money"].="|<moneyc1>*220$25.jzzkrzzkNzzsAzzs6Tzs3Dzk1VzU0k"
findbase["money"].="|<moneyc5>*220$25.bzzsnzzsNzzsAzzs6Tzs37zk1Xzk0k"
findbase["money"].="|<moneyc2>*220$24.jzztjzzljzzVbzzVbzy1bzw1Xzk1UT01U"
findbase["money"].="|<moneyc3>*220$25.jzzUrzzkNzzkAzzk6Tzk37zU1UzU0k"
findbase["money"].="|<moneyc4>*220$24.jzztjzzljzzVjzz1bzz1bzw1bzk1Uz01U"
findbase["money"].="|<moneyc6>*220$24.jzzljzzVjzz1jzz1jzy1jzk1bzU1Uy01U"
findbase["money"].="|<moneyc7>*220$24.jzzljzzVjzz1jzz1bzy1U"
findbase["money"].="|<moneyc8>*220$25.jzzkrzzkPzzsAzzs6Tzs3Dzk1VzU0k"


findbase["money"].="|<moneycollect>*220$24.jzzljzzVjzz1jzy1bzw1bzk1VzU1UC01U001zs7zU"
findbase["money"].="|<moneycollect2>*220$24.jzzljzzVjzz1bzz1bzy1bzs1VzU1UC01U001k003zw7zU"
findbase["money"].="|<moneycollect3>*220$25.jzzknzzkNzzsAzzs6Tzs37zU1UzU0k300M000Dz0zy"
findbase["money"].="|<moneycollect4>*220$25.jzzknzzkNzzkAzzk6TzU33z01UT00k000Q000TzUzy"
findbase["money"].="|<moneycollect5>*220$24.jzztjzzljzzVbzz1bzy1bzs1Xzk1UT01U001U001zw7zU"

;   moneyc1
; 0_000000000000000000____0
; 0_00000000000000000_____0
; 0__0000000000000000_____0
; 0__000000000000000______0
; 0__00000000000000_______0
; 0__000000000000_________0
; 0____00000000___________0


;   moneyc5
; 0__000000000000000000___0
; 0__00000000000000000____0
; 0__0000000000000000_____0
; 0__000000000000000______0
; 0__00000000000000_______0
; 0___00000000000_________0
; 0___0000000000__________0

;   moneyc2
; 0_0000000000000000000__0
; 0_000000000000000000___0
; 0_00000000000000000____0
; 0__0000000000000000____0
; 0__00000000000000______0
; 0__0000000000000_______0
; 0___0000000000_________0
; 0______00000___________0

;   moneyc3
; 0_00000000000000000_____0
; 0_00000000000000000_____0
; 0__000000000000000______0
; 0__00000000000000_______0
; 0__0000000000000________0
; 0___0000000000__________0
; 0_____0000000___________0

;   moneyc4
; 0_0000000000000000000__0
; 0_000000000000000000___0
; 0_00000000000000000____0
; 0_0000000000000000_____0
; 0__000000000000000_____0
; 0__0000000000000_______0
; 0__00000000000_________0
; 0_____000000___________0


;   moneyc6
; 0_000000000000000000___0
; 0_00000000000000000____0
; 0_0000000000000000_____0
; 0_0000000000000000_____0
; 0_000000000000000______0
; 0_000000000000_________0
; 0__0000000000__________0
; 0_____00000____________0

;    moneyc7
; 0_000000000000000000___0
; 0_00000000000000000____0
; 0_0000000000000000_____0
; 0_0000000000000000_____0
; 0__00000000000000______0

;    moneyc8
; 0_000000000000000000____0
; 0_00000000000000000_____0
; 0_00000000000000000_____0
; 0__000000000000000______0
; 0__00000000000000_______0
; 0__000000000000_________0
; 0____00000000___________0

findbase["chars_iselect"] := {}
findbase["chars_iselect"]["santabender"]:="|<santabender>29@0.85$13.00607k1w0z0TkDs7y3zVzkzszyTz008"
;   iselect:santabender
; _____________
; __00_________
; _00000_______
; __00000______
; __000000_____
; __0000000____
; __0000000____
; __00000000___
; __000000000__
; __000000000__
; __000000000__
; _00000000000_
; _00000000000_
; _____________

findbase["health_heart"] := "|<heart>20@0.95$9.01gRnyDUs200U"
findbase["health_skull"] := "|<skull>13@0.85$10.00y7wTtzUWH9rXs02"
findbase["healbutton"] := "|<heal>*126$40.0000000ENzD1U11bwy6046M0sM0ENU6VU7zjsP60DyzVAM0ENUDtVV1a0za646Tq3TsENzMBzU000000U"


findbase["battle_speedx1"] := "|<speedx1>*220$28.zzzzzzzzzzzzzzzzzzzz7YTzwQFzzsX7zzkQTzz1lzzsX7zz74TzwSFzzzzzzzzzzzzzzzzzzzy"
findbase["battle_speedx2"] := "|<speedx2>*120$25.zzzzzzzzyD81z240Tk3yDw3U7y1U7w0Fzy480z7Y0Tzzzzzzzzzzzzk"

findbse["battle_speed"] := findbase["battle_speedx1"]
findbse["battle_speed"] .= findbase["battle_speedx2"]

findbase["battle_enemies"] := {}
findbase["battle_enemies"]["worm"]:="|<worm>*151$35.M3zztSrzzzzzzzzzzzzzzzzzzzzzzzzzzzzTzzzzyDyRzzw4Mkzzs8vzzzk/yzzzUTMTzz0wTzzy1zzzzw1zzzzs1zzzzk0yDzzU007zz0007zz"



findbase["planetnames"] := {}
findbase["planetnames"]["earth"] := "|<earth>*220$46.zzzzzzzzU7zzzSzyTzzzxvzvzzzybizjzU7060yTwwQxttU7rtrrbbbyTbTSzSztyRxvxvzrtrrjrbzD7TCzS0S0RyPxs1yPrzjrzzzzzzzs"
findbase["planetnames"]["earth"] .= "|<earth>141@0.65$53.1zy003rU0204004d02408tatHk69zqDyHaMCHzE1U108TXtX36648y0OD6SQSFw0orAwtgXwzd6N9H97tym8mGaGDlzXlYbAYTU1U39WN8z03UaHYmFzzzzzXz7Xzzvzz3yD7zzs000008"
findbase["planetnames"]["earth"] .= "|<earth>*220$45.zzzzzzzy0DzzxtznzzzzjDyTzbzgtbnzk3V30STwyQxttU7bnjjDiTxzRxtxnzjvjjDiTwyRxtxnzbXjbDi0C0RyNxzzzzzzzw"
findbase["planetnames"]["amazonia"] := "|<amazonia>*220$60.zzzzzzzzzzzzzzzzzzzxzzzzzzzzzzzzzzzzzzzzkky2s7USUxaCwszjDCQxjCNwzCTiSRjSNyzSzayRjSPyySzayRjSNyyyTiyRjCQwxzTCyRjCQ0s34SyRjCT6s3kyyRzzzzzzzzzzU"
findbase["planetnames"]["moon"] := "|<moon>*220$45.zzzzzzzxzjzzzzzbtzzzzzwSDVz1t3VVtXnb6BVCTQyNxiNbtjnDgzAz9zNxbtbtjnDgzCzAyNxbtlnXbDgzD0y1txzzzzzzzw"
findbase["planetnames"]["chapek9"] := "|<chapek>*220$68.zzzzzzzzzzzz0yzzzzzzznzX3jzzzzzzwznxvzzzzzzzDtzyVw0u3w3naTz7CCCCSSQnbznvjnbnDbBtzwyvwvyk1USTzDgzCzg087nznvjnbnDzBwTAytstwvvnDU7Dj0C4SAwty7nvsHgTsTDTzzzzzvzzzzzzzzzzyzzzzzzzzzzzjzzzzs"
findbase["planetnames"]["decapod10"] := "|<decapod10>802@0.85$80.00000000000007y000000000009Uk00000000002M60U100020408a0kr1y7y/wDsDdU4EMkX3X32366M1A6M0UMUNUH0a0Hza0M686E4U9UAk1U61W1Y182M6A0M0UMUNUH0a3VV32ACAAMAMNzkDkTVzXz3y7yT01k3UCEb0C0QU0000000800000000000020000000000000U000000000000000002"
findbase["planetnames"]["dailyplanet"] := "|<dailyplanet>*220$44.zzzzzzzs3zzxnzyyDzzwzzjtyzzDzvyS2xnjaznDDQvtjwbvrCyPz9yRnjazaTbQvtjtbtrCyPswwRnba0TU7SQ1VzwPrzWTzzzzzzbzzzzztnzzzzzz1zzzzzzzy"
findbase["planetnames"]["dailyplanet"] .= "|<dailyplanet>*220$46.zzzzzzzzUzzzrjzy0DzzSzztwTzzvzzbxwBniTSTnb7CtxtzAyQvbrbyrxniTSTnTrCtxtzBzQvbrbtntniTS0Db7CQts1z1QwsLzzzzzzzTzzzzzztzzzzzzkDzzzzzzVzzzzzzzzU"
findbase["planetnames"]["dailyplanet"] .= "|<dailyplanet>*220$44.zzzzzzzw1zzyRzz07zzzTznwzzzrzwzbUiRvvDtnXbSynzNwtrjgzqTiRvvDtjvbSynyNytrjgzCTCQvv07lXbaQk7y6txkjzzzzzzvzzzzzzwzzzzzzUTzzzzzyTzzzzzzzU"
findbase["planetnames"]["dailyplanet"] .= "|<dailyplanet>354@0.90$44.00000007w0024011k00100E6000E040VzW4E90AksV42E3868l0Y0m1WAE908UMX42E6868l1Y733W4MNzUTsVnyS01Y80QU000000M000002A000000y00000002"
findbase["planetnames"]["corleone5"] := "|<corleone5>392@0.90$78.00000000000003w000E0000000CC000E0000000Q2000E0000000M07sSEz0z2y3sE0AAMFVVXX66AE0M4EFUn1W3A6E0M6EFzm0W3DyE0M6EFzm0W3DyM0M6EFU30W3A0A6AAEFUX1W3A47yDsEQvVz237Q1s3kE0C0S231k0000000000000U"
findbase["planetnames"]["corleone5"] .= "|<corleone5>346@0.89$43.00000000800000040000002000001t1w3w/skV1336AEFUn0W388zt0N1Y4TwUAUm2A0M4EN1a2468AUtz3y46E4C0S23E"
findbase["planetnames"]["carcaron"] .= "|<carcaron>516@0.83$82.0000000000000000000000000000Ds000000000001lk00000000000A00k11U6046040k0DwwTVzXly7w601Vn33ACAAAMMM0A3A80kMVUNVVU0kAlU21W61Y63030n60868M6EMA0A3A80kMVUN1UQAMQkkn3W33460zVzn1z7y8DsEM0s1m43kD8UD11U000000000000000000000000002"
findbase["planetnames"]["amphibios9"] .= "|<amphibios9>561@0.83$76.00000000000000000M0V0300000001U040000044086E0F0040lxw/sTkVT33wDqQkkllW76AMMVElW1a68EAn0m13686M8V0nA3D4AMUNUW43AkADEla1a28EAn0k536QAM8VVn660IANzlUW7yATtnElaQ628HUkS1s00M000000000001U0000000000060000000002"



findbase["mission"] := {}
findbase["mission"]["nodeglow"] := "|<nodeglow>*81$20.U00k00400000000000000000000000000000000000000000000000000001000M00D00DU"
findbase["mission"]["nodeglow"] .= "|<nodeglow>*81$25.s003s000s000Q00040002000000000000000000000000000000000E000M000C000C"
findbase["mission"]["nodeglow"] .= "|<nodeglow>*81$22.zw3zy01zU03w003U00A000k0020008000U00000000000000000000000020008000U"
findbase["mission"]["nodeglow"] .= "|<nodeglowimmer>17@0.83$17.zzzw1zk1z01w01k01U0300600A00M00k01k07k0Tk1w"
findbase["mission"]["nodeglow"] .= "|<nodeglowglimmer>337@0.93$26.000000Q000zw00s3k0M0C0A00k60063001UU00AM0036000F0006E001Y000N0006E001a000FU00480013001W"
findbase["mission"]["nodeglow"] .= "|<nodeglimmerlight>337@0.98$26.000000T000zy00s1k0M060A00k60061000kk0048001a0009U002E0E0a0A09U002M000W000MU004A0011000U800M3004080601U6007y000002"
findbase["mission"]["failed"] := "|<failed>*168$62.zzzzzzzzzzk1s03U010zw0Q00s00EDz060020043zzzUT0z0z0zzzs7kDkDkDzzy1w3w3w3zlzU00z0z0zwTs00DkDkDz7y003w3w3zzzUT0z0z0zzzs7kDkDkDzzy1w3w3w3zzzUT0U01003zs7k800E00zy1w200400Dzzzzzzzzzy"
findbase["mission"]["healyourparty"] := "|<healyourparty>1101@0.83$73.000000000000000000000000000000000000000000000000000000000000021VzVs200M6110kzlw1U0467UUME070k03370EA803UM00n30M6403MA00930TzDw1A6007VUDzby1W3001Uk30kU0VVUk0kM1UME0zkkM0MC0kA80TwMA0A30M67yM6Dy060sA33zA1bz030C0000000000000000000000000000000000008"
findbase["mission"]["choosecharacter"] := "|<choosecharacter>*140$75.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzlvzzzzzzz7zzw3TzzzzzzU9zzDOTbtyTDst9ynz1kC31UzDs76TtaQb/tnvzCnnzQbZt30TTtmSTvYwjC83tzCHtvQnYtwDz79mTUPa1UMA3w1CMy7SwT7Xlzstrbzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"

findbase["mission"]["closebutton"] := "|<closebutton>84@0.83$10.00000kVa6kD0M3UD1a6Mkk08"
findbase["mission"]["closebutton"] .= "|<closebutton>65@0.91$10.00V3A4US0k30S18AlVU0U"
findbase["mission"]["closebutton"] .= "|<closebutton>*147$17.zzzzzzzzzzzzX7zaTz0zz3zzDzwDzsTzYTyATwwzzzzzzs"

findbase["mission"]["selectgroup"] := {}
findbase["mission"]["selectgroup"][1] := "|<missiong1>*115$14.zzzzzzDzXzwzzDznzwzz/zzzzzzzzzs"
findbase["mission"]["selectgroup"][2] := "|<missiong2>*115$11.zzlz9zvzbwTnzUbzw"
findbase["mission"]["selectgroup"][2] .= "|<missiong2>*115$12.zzwDtjzjzDyTszsBzzU"
findbase["mission"]["selectgroup"][2] .= "|<missiong2>*115$9.zwDgzbtyTbw5zw"
findbase["mission"]["selectgroup"][3] := "|<missiong3>*115$12.zzw7zDyDzbzrxbwBzzU"
findbase["mission"]["selectgroup"][3] .= "|<missiong3>*115$13.zzz1zVzwzwDzbznz1Tnjzy"
findbase["mission"]["selectgroup"][3] .= "|<missiong3>*115$12.zzwDwDzTyDzbzbsBwRzzU"
findbase["mission"]["selectgroup"][3] .= "|<missiong3>*115$14.zzzkTwDznzszzbzxzkLyRzzs"
findbase["mission"]["selectgroup"][4] := "|<missiong4>*115$15.zzzyTzrzwjzdzs7ztzzBzzw"
findbase["mission"]["selectgroup"][4] .= "|<missiong4>*115$14.zzztzyzz/zozs7znzwrzzU"
findbase["mission"]["selectgroup"][5] := "|<missiong5>*115$11.zzkTjz1ynzbt/krzw"
findbase["mission"]["selectgroup"][5] .= "|<missiong5>*115$13.zzz3zVzpzsTzbzny3Trzzy"
findbase["mission"]["selectgroup"][6] := "|<missiong6>*115$13.zzzbzrzkzvDtbynz3Tzw"
findbase["mission"]["selectgroup"][7] := "|<missiong7>*115$15.zzzzzzzzzzzUzw7zgzzjztzzTznjyzzzzzzzzw"
findbase["mission"]["selectgroup"][8] := "|<missiong8>*115$15.zzzwTz9zwTz1zvjz9zwNzzzzzU"
findbase["mission"]["selectgroup"][8] .= "|<missiong8>*115$11.zzkzhz3y7tjnTkrzw"
findbase["mission"]["selectgroup"][9] := "|<missiong9>*115$10.zzzwDayNtbkznyNzy"


findbase["mission"]["select"] := {}
findbase["mission"]["select"][1] := "|<missions1>*115$14.zzzyzzDznzyzzjzvzyrzjzzs"
findbase["mission"]["select"][2] := "|<missions2>*115$14.zzztzsDzvzwzyTzDzUzsBzzs"
findbase["mission"]["select"][2] .= "|<missions2>*115$16.zzzz7ztDzyzznzyTzXzy3TzzU"
findbase["mission"]["select"][3] := "|<missions3>*115$14.zzzkTzDzXzyTzrzNzkrzzU"
findbase["mission"]["select"][4] := "|<missions4>*115$16.zzzzrzyTzuzz/zw7zkTzvTzzU"
findbase["mission"]["select"][5] := "|<missions5>*115$15.zzzw7zVzwDzUzzrzyzw5zzw"
findbase["mission"]["select"][5] .= "|<missions5>*115$13.zzz1zbzkzvDzryHz3Tzw"


; findbase["mission"]["select"][1]:="|<mission1w>*137$10.zzvzDwzvzjyzvzhzy"
; findbase["mission"]["select"][1].="|<mission1b>*91$10.zzvzDwzvzjyzvzhzy"
; findbase["mission"]["select"][2]:="|<mission2w>*129$15.zzzkTztzzDznzwzzDzk9zzw"
; findbase["mission"]["select"][2].="|<mission2b>*97$15.zzzkTztzzDznzwzzDzk9zzw"
; findbase["mission"]["select"][3]:="|<mission3w>*135$12.zzs7zDyTyDzbzbtDwRzzU"
; findbase["mission"]["select"][3].="|<mission3b>*88$13.zzy1z1ztzwTzbznyHT1jzy"
; findbase["mission"]["select"][3].="|<mission3b>67@0.88$12.00DU10301U0U0UBU7400U"
; findbase["mission"]["select"][4]:="|<mission4b>*120$13.zzzjzrzmzuTs7zbznTzw"
; findbase["mission"]["select"][4].="|<mission4b>65@0.83$14.0E0A0200c0T00k08c"
; findbase["mission"]["select"][4].="|<mission4b>18@0.90$7.0110UYT10U4"
; findbase["mission"]["select"][5]:="|<mission5b>*120$14.zzzUztzyzzUzzjzvzgzsRzzs"
; findbase["mission"]["select"][6]:="|<mission6b>77@0.82$14.000201U0Q0AU280W07Y00U"
; findbase["mission"]["select"][6]:="|<mission6b>16@0.84$10.0040k20S144EH0t02"
; findbase["mission"]["select"][7]:="|<mission7w>*128$12.zzsDvDvTyTyzwzwvxvzzU"
; findbase["mission"]["select"][7].="|<mission7b>*95$14.zzzkTw7zPzwzzDzrztzywzzs"
; findbase["mission"]["select"][7].="|<mission7b>*83$14.zzz0znDyrztzyzzDznbxvzzs"
; findbase["mission"]["select"][7].="|<mission7b>*80$11.zzUT0yHzbzDwztrrbzs"
; findbase["mission"]["select"][7].="|<mission7b>*80$13.zzw3y1zBzwzyTyTzDzDDzy"
; findbase["mission"]["select"][8]:="|<mission8b>70@0.87$13.1k0Y0G0C08U4E380MU04"
; findbase["mission"]["select"][8].="|<mission8b>*120$14.zzzzzyzzHzazxDy3zizvjy3Tzzzzzzs"
; findbase["mission"]["select"][9]:="|<mission9b>91@0.76$12.00001U3k6M6M3s1k0U1W000000U"
; findbase["mission"]["select"][10]:="|<mission10b>91@0.76$12.00001U3k6M6M3s1k0U1W000000U"
; findbase["mission"]["select"][11]:="|<mission11b>101@0.76$18.0000000000H00r00L00H00H00H00H00HM000000000U"
; findbase["mission"]["select"][12]:="|<mission12b>*92$17.zzzxVzmNz7nzDbySTwlzt7zm1Dzzs"
; findbase["mission"]["select"][13]:="|<mission13b>*87$16.zzzzzzc7wwznbziDyyTvtzcBylrzzs"


findbase["mission"]["crew"] := {}
findbase["mission"]["crew"]["border"] := "|<selectborder>54@0.97$52.E0000000900000000Y00000002E0000000900000000Y00000002E0000000900000000Y00000002E0000000900000000Y00000002E0000000+"
findbase["mission"]["crew"]["captainsel"] := "|<captainsel>2@0.97$18.zzzzzzz0zU01U01U01U01k01k03k01k03s03w07y0Dz0zzvzzzzzzzzzzU"
findbase["mission"]["crew"]["scientistsel"] := "|<scientistsel>1@0.97$16.zzy7zs0TU0S01w03k0D00Q01k0D00w01U0600MTlzzy"
findbase["mission"]["crew"]["robotsel"] := "|<robotsel>2@0.97$18.zzzznzznzzVzs07k03U01U01U01U01U01U01U01k03z0zzUzzzzU"
findbase["mission"]["crew"]["deliveryboysel"] := "|<deliveryboysel>1@0.97$17.zzzyDzk3y7XsznnzrbzbDzCTyQzwQDww3lz07zlzzzw"
findbase["mission"]["crew"]["influencersel"] := "|<influencersel>2@0.93$18.zzzy0Tw0Dw0Dk03U01U01U01U01U01U01U01U01U01k03zzzU"
findbase["mission"]["crew"]["villainsel"] := "|<villainsel>2@0.93$18.zzznztW0FU01U01k03k03s03s07s07s07w07w0Dy0Dz0zzVzzvzzzzU"

findbase["mission"]["crew"]["billnye"] := "|<billnye>4@0.87$20.Dzy3kQ0M307zv1sxUR7A7Dn1rS0y7U7nv5zykTdUPWy7Tb0Ry07zz1tzkT3w7y08"
findbase["mission"]["crew"]["billnye"] .= "|<billnye>232@0.80$17.U033wTDtyPXwC6sW8l2FW8y3ky31g03Q5bcv296D47y83QA0MD0F3z"
findbase["mission"]["crew"]["mrpeppy"] := "|<mrpeppy>1@0.93$29.vkCxlzkSvXzURr7y0xgBw0vMPw1zkns1z1rs3w3is0yDhsTzzszzy7zzziwovzTMADzS02Tys01bws"
findbase["mission"]["crew"]["mrpeppy"] .= "|<mrpeppyupgrade>1@0.94$31.w005yS00CyDQ0bS7y0vr3zkSvVzk7RUzs3qkRw0vMCy0Tw7TU7w3r03Q1v00DWy01zzT07zy001zvb00DxvE0DzR00bzi006zn002Ask01CSM00674U033W0011k0000k0000800004000002"
findbase["mission"]["crew"]["lrrr"] := "|<lrrr>9@0.93$38.0zxU100Tz0000DzU1207zsEEU7zy44+0zzk010zzx0MkDzzrDs3zzzvxUzzz0zsDzzzzz3zzzzzszzzzzyDzzzzznzzzzzyzzzzzzzzzzzzzzzzzzzU"
findbase["mission"]["crew"]["lrrr"] .= "|<lrrr>68@0.94$45.00000000000Ts000007zU00000zw00000Tzk0000Tzzs000DzzzU003xzzs001zkTW000zz0M000DzU02003zw40E00zzUU0007zy08001zzk31U0zzz0Ts0DzzzxsU3zzzCTw0Tzzzzzk1zzzzzz0Dzzzzzs0zzzzzzU7zzzzzy0zzzzzzs3zzzzzzUTzzzzzy1zzzzzzUDs67zzs0yy0A7007zs001U0Tz00zs4"
findbase["mission"]["crew"]["lrrr"] .= "|<lrrr>22@0.94$46.0007zU00000zy00000zzy00007zzzU000zzzw000DtzzU003zk04U00Ty008003zs0EU00TzV12007zy44000Dzy00U03zzo1X00TzzrTk03zzzyzs0Tzzw7zU1zzzzzz03zzzzzy0Dzzzzzs0Tzzzzzk1zzzzzzU3zzzzzz0Dzzzzzy0zzzzzzw1z1zzzzU7ts1zzs0DjU00000Tz00zw2"
findbase["mission"]["crew"]["lrrr"] .= "|<lrrr>7@0.93$38.1zw08E0zz1040zzkE007zy0887zzU623zzydz0zzzzjgDzzl7z3zzzzzszzzzzzDzzzzznzzzzzyzzzzzzzzzzzzy"
findbase["mission"]["crew"]["monique"] := "|<monique>*190$35.zzw00zzzw03zzzy0zw7zy3zsDzyDzszzwTzlzzszzXzzlzzXzzXzz7zy3zy7zs3zw3z01zs00TsDU03zsT00Dzly00zzby00zzTy01zxzz00zzzzU0Tzzzs0Tzzzzzzzs"
findbase["mission"]["crew"]["roberto"] := "|<roberto>30@0.77$30.o00J/oU00/uEz8HNlzrbC7zsDDzzzz3zzzz01zzU01zzU01zzU01zzk03zzs03zzy03zzz07zzz07zzj00Tzb00TzU00JTb00zzj00zzz00zzzU"
findbase["mission"]["crew"]["roberto"] .= "|<roberto>26@0.80$26.0002s3wVAVznbVzy3zzzzxtzzz0Tzs07zy01zzU0Tzw0DzzU3zzyU"
findbase["mission"]["crew"]["drcahill"] := "|<drcahill>3@0.94$18.BzyFnwU1sE3kM1UQ1US3nTznzztzzmTzyDzwDr0Dk0Dw0Dw0U"
findbase["mission"]["crew"]["drcahill"] .= "|<drcahill>6@0.95$15.3y8Tv3zsPz6AsU360Mk370Mw77ztzzDzszz3zsTY3w0Ts3zY"
findbase["mission"]["crew"]["drcahill"] .= "|<drcahill>54@0.94$22.000000003003y80TsU1z607zz0Tzw3jzk8ty1U3k30S0A0k0s303kSMDzwVzzk7zyEDzz0Tz01yE07w00Ts01zk07z02"
findbase["mission"]["crew"]["powersuitfry"] := "|<psfry>3@0.94$18.T00Ts0Dy0DzUjzUy0000000000000000000000003s0Dw0S0sy0zzwzzwwzys7zzUDzy0zw0zs0U"
findbase["mission"]["crew"]["sinclair2k"] := "|<sinclair2k>94@0.96$30.0000000000000006000460004D00063000210002100031U0011U0031U0031U0033zzzzTzzzzTzzzyTs000zk000zU000zU000DU000D0000U"
findbase["mission"]["crew"]["robot1xsrosegold"] := "|<robot1xsrosegold>454@1.00$41.000000000000000000000000000000000000000000000000000000000000000000000000000400001Us000070w0000Q0y0003l0Ts01w78Dzzz0yQ0zy07wz0003zwTk0TzzsTUDzlzkS0Tz1zkw0zy3zUs1zw3z1k3zw7z"
findbase["mission"]["crew"]["robot1xs"] := "|<robot1xs>275@0.99$45.000000000000000000000000000000000000000000000600000k1s0000CU7U0007Y0TU003tU9zw07wS1VzzzwDkT1zzkDz3zU00Tzs3zwzzzz0Dzzzszw0zzzy3zU3zzzkTw0Tzzy1zk3zzzsDy07Xkz1zk0MC7sDy0000D0zk0001w7y0000DUzo"
findbase["mission"]["crew"]["hedonismbot"] := "|<hedonismbot>2@1.00$32.Q07z0701zs3s0zy0z0TzkDwTk23zzk00zzk007zk001zs000Ts0007y0000z0000DU0003s0000y000y7U01y1w01s0D03s33s3s0kzzsA47zwD01zw7l0C67zs003zz001zzc"
findbase["mission"]["crew"]["bev"] := "|<bev>16@0.98$28.0040401U0E0M01060041U00Es001C0007U000M0001U00060000M0001U00060000M0001U00060000M0001U000S0007s001zU00Ty007zs01zzU"
findbase["mission"]["crew"]["bev"] .= "|<bev>207@0.80$26.07zXk7znw7zzz7zzjnzzvwzzzzD3zzn3jzwnTzzDrzznzzzwzzbzDzXzXzbzUzpDUDz7U8"
findbase["mission"]["crew"]["legmutant"] := "|<legmutant>31@0.95$15.3y3zyzzrzzTzvsQS11k8C10sQ7zsxS3XsTz3zs8z10s801U0600w4"
findbase["mission"]["crew"]["michelle"] := "|<michelle>50@0.94$22.00000000z007z00zyQ3zzkDTz0ozk21zU81w0k7U30S063s0Tzc1zyk7zt0DzY0zkE3zX0Dzw0zzk3kz0D000zs03y00Dk01z003002"
findbase["mission"]["crew"]["michelle"] .= "|<michelleupgrade>*113$37.w00Tzzzs0wzzzzXs3zzzzk0Qzzzs00Tzzw00Dzzw407zzy+03zzzDk2zzzW42Tzzl507zzw0V7zry7Uzzlz00HzUDk09zU3s04zk1w00Ty3z01Dz1zU07zUzk03zkTs00zsDw80zzzy0sTzzz03zzzz0DzzzzUDzzzzk7zzzzwPzzzzzzzz"
findbase["mission"]["crew"]["painmonster"] .= "|<painmonster>21@0.94$40.000TU00001zU00003z06000DzsM000zzsU0047zU000kDw000/0TU000g0w0006k1k000L070002y0Q200/w3sM00jzDtU03Dz1s00TzzzU03yzzz00Dhzzw00ytzzk03zYqP00zrHNY03zw0a00Dyu2001ztxU00DzXy000zy3k007zs0001xz0000Dvs000Dzzc000zzyk002"
findbase["mission"]["crew"]["boxy"] := "|<boxy>*82$31.001zwXz0zyE00Tz8007zY001zm000Tt0007wU001yE000T80007Y0001m0000N00004zzzzkE0000800004000020000100000U0000E000080000400002000011U000k"
findbase["mission"]["crew"]["boxy"] .= "|<boxy>43@0.97$31.000000Dzs00zzzs0zzzy0TzzzUTzzzsDzzzyDzzzzbzzzzrzzzzzzzzzzzzzzz00000E"
findbase["mission"]["crew"]["robot1xs"] .= "|<robot1xs>*82$30.300zz21yTzzzyTz7xyTz7yyDz7vTDz3wbDz3zTDz3zbbz3zvbz3zxbz3zzXz3zz0z3zs0D0000D0000700007000010000000000000000000000000003U0003U0003U0001k0U"
findbase["mission"]["crew"]["elchupanibre"] := "|<elchupanibre>477@0.91$42.U00DU0cU00DU18k00Ts0Bk00Tz28k00TzW6k00TzV0k00Tzs0s01Dzg0w001000z040000zUC0040zkTkzk0zszzzk0zkTyzk0zk7zTy0zU1zzzkzU0LzzwzU0nzzyzU0lzzzj00UTUTz01k000z01k0UEz01k00EzU1y808zU1TU00zU0Rw00zk0Rzy0zs01zz0zzk1zzUzDz3zzyw1z3zzzU"
findbase["mission"]["crew"]["slurmdukefry"] := "|<slurmdukefry>179@0.93$55.00s00000000A0000000060000000060k0000003UQ0000001kC0000011sD0000003y7U000003zbk000007zvs000007zzw000007zzz000007zzzU00007zzzs00003Xzzw00001xzzz00000zDzzs0000ztzzz0000TzDzzU0007zszzk0003zzXzk0001zzz000000zzzz00000DzzzU00007zzzU00001zzzU00000Tzzk00004"
findbase["mission"]["crew"]["scruffy"] := "|<scruffy>20@0.93$27.081w0zzzU7zzy0zzzk7zty0zzjs7s1U0z0807s1U0z0C07w1w0TwTk/z0S0Tw003y000zU007w001z000Ds001z000Dw001zW80Twz01zzk01ww0073U0U"
findbase["mission"]["crew"]["labarbara"] := "|<labarbara>*80$34.0203lw080DDk1U0zz0C01zzzlU7zzznUTzzy23zzzxldzzs0YDzzW2Tzzw3Unzxs01jzg006zzy00rzzI0CTzyc01zzz007zzx0SzzyoS1zzv1Tzzzu0Xzzzs0zzzzU3zzzy0Dzzzs0zzy"
findbase["mission"]["crew"]["robotgypsy"] := "|<robotgypsy>71@0.93$25.00000000000700ETU0Tzc7hzo3qbk1vHU0w3UU80k008M000C00070007k0M9yEDUzcC4zo7wDmLCU21zS00zjy0Dby07r003v001x000y008"
findbase["mission"]["crew"]["robotsanta"] := "|<robotsanta>*94$37.k07zzzs03zzzt04y1ztsD40Dwzzm07zzzD03zzzX01zzzk00zzzsM0zzzy2VvzzzUJpzzzm4mzzzkiOzzzsAzzzzs0T7zzs0DVzzs03Uzzy000Tzz0003zzk003zzs00Dzzw4YDzzy7zzzzz3zbzzzU00zzzE00Ts"
findbase["mission"]["crew"]["devilishfry"] := "|<devilishfry>*123$43.w00Q00Tz00Qk03zk0Qzk0Ty0sEC0Dzls41k7zzky0C7zzk/U0zzzk6E0Dzzs1007zzw0EA1zzy08Edzzz04E8DzzUt807zzsWUE3zzywk0VzzzpN0Uzzzt40azzzy07UTzzzw003zzzw003zzzy00Dzzzz000zzzzUU0TzzzkM07zzzs1U1zzzw070Tzzy00zzzzz01zy"
findbase["mission"]["crew"]["sircalculon"] := "|<sircalculon>*109$47.U003ivDzU00DA0Tzzzzs003zzzXi077zzz81zjDzzwVzzazzylDzzpzzb4szVbzzgFUy/jzzUX9wLTzzW63wCzzzsDDwvzzzU7zz7zzz0000Dzzy0000Dzzw7zzzzzzsEW0Dzzzk140TzzzV280zzzz1YE1zzzy007zzzzw0003zzzs0007zzzy000Dzzzy000Tzzzz000zzzzz001zw"
findbase["mission"]["crew"]["stephenhawking"] := "|<stephenhawking>47@0.91$31.0000000700007k0007s0003w0003z0003zU001zk002zk007si003DrU00zm000Qy000A7M0035k000wy0001zU02zzk02Tq0017ny00znz00DI000041000+0U007UU0E"
findbase["mission"]["crew"]["stephenhawking"] .= "|<stephenhawking>64@0.91$25.0000008000C000DU00Dk00Dw007y007z003zU0Dz80D5Q06zA00zxU0wRU08TE07Pk01vy0/jz01zzU4zjk2jjw0zDk0CU0008200Q1007z003XU4"
findbase["mission"]["crew"]["joeymousepad"] := "|<joeymousepad>77@0.91$25.000Y00010000XU409k10zzzzzzzzzzzzzzzzzzzzzzzzzwzzy00000Tk00Ds087w040C00000BgEjzw07sD80DzV0Dy3k061y001zo00zzU1zzxm7zzY2"
findbase["mission"]["crew"]["joeymousepad"] .= "|<joeymousepad>171@0.91$28.03200000000400040G00U043000EA009Vs0CSDzzzwzzzznzzzzDzzzwzzzznzzzw0Tz00w0003z000Dw0407k0E07000006YFMT3w00S1wS0TzVC0Xs7s020Ts307zy00zzy1Ds"
findbase["mission"]["crew"]["cartridgeunit"] := "|<cartridgeunit>78@0.91$31.0030000000007z00Drzk07vzw0k4080Ty05sDyznw7zQAm3zg3E07o1U01u0k00R0000CU0007M6U07g7M07r7jUzvzbkTxzns7yzxw0DTyw0kjz00T0000Dz7w07zU0E3ynl88"
findbase["mission"]["crew"]["cartridgeunit"] .= "|<cartridgeunit>77@0.91$22.0000030000U07z3yzy3vzwkU13xzzzryDzQCnxUO7o1U7E60R001o1U7M6VxUvDrjjzTwzxznzrzj7Tyv1zsDU00zsD3xU0TqTNU"
findbase["mission"]["crew"]["petunia"] := "|<petunia>89@0.91$25.0000000000200038007c00UA80rm90Tl704U1020000s3U0A1k170w2Nsy0SkzkNzzs0zzQ0DTk0bRy0X04030007s007w007z00U"
findbase["mission"]["crew"]["petunia"] .= "|<petunia>87@0.91$25.0000008000AU00SU02Ekk1T8Y1zoK0G04080203UD00k304Q3k1bXs0n1y1BzzUHzzk0xy02Rzs0A0M0A000A000Tk00Tw00By00U"
findbase["mission"]["crew"]["clamps"] := "|<clamps>140@0.91$19.018U08004002M2100U01000zzU7zk4zs77w1zw0Tw0Dy07z03zU1zk0zs0A009E0Ic03k03y0060000E"
findbase["mission"]["crew"]["clamps"] .= "|<clamps>8@0.91$19.0zzUDzk3zs0DU048000031U00E0200100E81zz0TzU3zkATs3zs1zs0Tw0Dy07z03zU1zk0Tk1E008000E07w03w2"
findbase["mission"]["crew"]["glab"] := "|<glab>6@0.91$25.1z000zk00Tw00Dz007zk03zw01zzU0zzk07zo0AzkW8DsFk3w0s9w0S2SYDFDG7k/e1w3s0D5zUntzkTzsk7zxs1zzw0Tzy07zz01zw00Ts00Ds04"
findbase["mission"]["crew"]["glab"] .= "|<glab>8@0.91$26.0TU007y001zk00Ty007zk01zy00Tzk07zz01zz003zlC1TuHk3y4y0T07sPo1w4x8DW7E3s5k0D0y0wwDw7jzy0zzlU7zzs0zzy03zzU0Tzs07zU00zU00Ds001z02"
findbase["mission"]["crew"]["titaniusanglesmith"] := "|<titaniusanglesmith>34@0.85$22.0Q083y20Ty81U008003U00S001k007000Q001k00600000001zzUBkw1U00601UM021k886007i10T0zlzzs7zzkQ1y1W006E20MU01W008"
findbase["mission"]["crew"]["butcherbot"] := "|<butcherbot>34@0.85$28.0000070000Q01sTs0UFzU013y0847sO09Ts1SZzU0SLzzzsTzzzXzzzyDkD03w000Dk000y7zzvsk00D2rRkwLRr3tRrQDyrRkzy003zzzw7zzzk7zzt2"
findbase["mission"]["crew"]["mayorpoopenmeyer"] := "|<mayorpoopenmeyer>62@0.85$25.000001kk00zw00zz00z1U0zzs0zUQ0Tzz0DzzU7zTs3wC01k7U0s3k0S1w0DVyU3yzU1yzo0zzv0TyxYDz0mzzytzzzADzzm3zzx1zU0UzntkTzxkDzwu"
findbase["mission"]["crew"]["hermafroditee"] := "|<hermafroditee>72@0.85$22.0088F082QB0zlk3zzUDzz0zzy3UDwC0s0s003UD0C0w0zzy3zrsDzU0zzy3zzwDzzszzz3wU0Dzs0zz03zs0DzU0zz03zy0Dzw0zzs2"
findbase["mission"]["crew"]["fanny"] := "|<fanny>107@0.85$25.0TbU0Dts006y05sC02zUtxTzyylzzTbDyDTvyzXyyvytTRzQjjzrrnTwHwTzbzrzzzvzzzxwxzwtStQ1Tm6DTm37Dud2"
findbase["mission"]["crew"]["offdutyurl"] := "|<offdutyurl>11@0.85$25.zDzzQzzzwzzzyzzzxz001y000z000T000DU007k003w001y000zU00TzU0zzs0Tzw0Tzz0Tzzzzzzzzzz007zzzUz0X0DUFU1rrAU"
findbase["mission"]["crew"]["nixon"] := "|<nixon>54@0.85$22.00k0TzUUzy01zw87zkUTz21zs823UU+y20tw8XbyXzzw/zLUDzkhzjGlxyCDwssTynVzy47zUETw01zU2"
findbase["mission"]["crew"]["hedonismbot"] := "|<hedonismbot>15@0.85$31.07M00044003s2001U1UE1s0wQ1w0Tz0y0DzkTUDzwDwTzy7zzw33zzk11zzU00zz001zz001rz000vz000BzU002zU000Dk007bs00Tnw01zsz03zVTkDyTbwTxzvzzvzk"
findbase["mission"]["crew"]["hyperchicken"] := "|<hyperchicken>18@0.85$28.DzTw0zy7k3zzz0Tzzz0zzyy1zz003zUM07z1k0Tw600zsE03zF007w400Dz000Ts0U1zU407y000Ts003z000Tc001zU00DzU01zys07bnk0NzT0U"
findbase["mission"]["crew"]["elzar"] := "|<elzar>11@0.85$25.03w201zb00zzU0zzk0zzsDzzy7szz3ujt1s/w0w1y0SVzEDUyk7zTD3sQ3VyxykzyhETzqcDzjY7zs63zzzVzjzkzbz0To007zzk1zzs0zzwUDzw03zw2"
findbase["mission"]["crew"]["inez"] := "|<inez>39@0.85$22.00002zy00Tw00z041s0E70HUQ0j1U9sDojvzFzzz3zrw3yzsDba0w803i00Ds01z00Xk026E0A700s8000008"
findbase["mission"]["crew"]["gynecaladriel"] := "|<gynecaladriel>29@0.85$22.0Q00Dw00zsk7zbUSjx3czkD1y0w3k3k60DkM1zzu7zz8jzzkzzz3zzyDzztzjy7y003z01bs03zU03y00zs01zU03y02"
findbase["mission"]["crew"]["bubblegumtate"] := "|<bubblegumtate>8@0.85$19.0zw0zy0zzUTzkDzs7zy3zzXzvVnBUlD0M7UDzg7zr1zxUxzYTzHzAMTzwDzy7zzXzzlzU0zy0Ty0Dz07zU8"
findbase["mission"]["crew"]["chanukahzombie"] := "|<chanukahzombie>5@0.85$25.7z001zk000y03xz01sDk0zzs0Dzy063vk3URk1nUzksQwMNDQkSyAAD76w7nY67w4v3rw1VsDy0zzzkTzzwDDTy63Ty2TzCUzUzQy0wDSB04CkzU7zzU2"
findbase["mission"]["crew"]["tinnytim"] := "|<tinnytim>34@0.85$24.00000A000z007zk0DUT0y072yB00w00ww012s3+1t0+2w38+w021wUE0yEUUy040zUT0zzzszzzszzzszzzszzzsTzzs1zzUU"
findbase["mission"]["crew"]["grayfarn"] := "|<grayfarn>41@0.85$25.001U00Ds000y06000T0000000HU001k006w0A3T071js8krlRwfziSNzjn0Dbwb7bz3Xc3VkpsQkLk7E/k043k060w02"
findbase["mission"]["crew"]["billionairebot"] := "|<billionairebot>248@0.85$22.00000000Dzs1zjkntD3i6C2iM811g006A+0BUg4q2zkM9z0Ubw72TkQ9zzsbzzWRQ09W8UY8m2K001zzm"
findbase["mission"]["crew"]["kwanzaabot"] := "|<kwanzaabot>56@0.91$25.0000000w0zzy0w000Q000C000D0007U003k001s00UzwTsTzzwDzzy7zzz3zzzVzzzkzzzwTs0STU00DU007U007k003z000zzzsTzzsE"
findbase["mission"]["crew"]["fender"] := "|<fender>11@0.91$31.0Tz0v9zzURdszU6okDk3OM3t1h81wEqY0y0PG0T0Qd4DkSIU7wT+M7zzZA7zzmbbzztHzkDwdzU1yIzU0T+TU07ZDk03mbk00tHs00Qds00CIw007+S003ZD001mbU00tHk10Qds00CI"
findbase["mission"]["crew"]["waltazar"] := "|<waltazar>*116$27.CDAztltbzTDdzvtzDzPDtzvtzTzT/rzz9Bzzskbzz00zzs03zz00Dzw01zzU07zw00TzWM3zw2TzzW43zkEWzz0oDzs71zy007zy00zzk0Zzy017zk00zz2wDzs0Tzz07zzs0zzz07zw"
findbase["mission"]["crew"]["malfunctioningeddie"] := "|<malfunctioningeddie>*119$31.301wTUu1pTkAFtzs64wDw7VS3ywkT0TsM7UDU01kDkU0QDsE20ry4201zDa00zv000Twk00TtM00zyg03zz60wDzVyE7zkU0LzsF0zzwDzzzy7zzzz3zzzzUzzzzk3zzzw0DzzzU01zzy00zzvy0zzlzzzzxzzzzk"
findbase["mission"]["crew"]["chrishardwick"] := "|<chrishardwick>*146$27.S4DTbU03ww00A7U01Uw00A7U01Us00867k30lzns4MAN0UP3s400Z0U00843sR0U22c61010k018400/0001E000W0000E000200A0E00Ty00020000k0U"
findbase["mission"]["crew"]["chrishardwick"] .= "|<chrishardwick>*133$30.TzzzzTzvzzTzbzzy8Sz7s00z7k00M7k00M7k00M7k00E7k00E7Vs0k7Xzbk7634E70Y5k7009E7000E71q7E7045E70M4E7U02E7002k7002U700SU7U"
findbase["mission"]["crew"]["destructor"] := "|<destructor>*77$31.HszYzfQTkzpgDkzuE1sTxE4M0Ss000DM0X0Dg0UEDw0E7zs003zw101zy0UXzz3zzzzXzzzzlzzzzszzzzwTzzzy7zzTz0kEjzU087xk003yMs07zAU01zqE00lzE00QDs00C3z00DUzy1zsDzzzw3zzzz1zzzzUk"
findbase["mission"]["crew"]["freewaterfalljr"] := "|<freewaterfalljr>*123$28.C00Dzk24Dz7sTzx2Ufzk22Dz8E1zwC0Hzk01Tz0E5zs407zU08Dy0EAzs103zk8hTz180Ts00TzUV1zy007zsELzzk0Tzz01zzw0Dzzk0zzz07zzw0Tzy"
findbase["mission"]["crew"]["fatherelgamal"] := "|<fatherelgamal>*114$28.zzyTvNvvzhs7zzzzzzzzzzzz0zzzU0Tzw00zzk01zzY17zy46Tzk0Ezz043zw0Hzzk2VzzU23zw81DzsG2zzY83zyD07zs02zzU9nzy10Tzs81zz103zw8/zzszzzzk1zzy"
findbase["mission"]["crew"]["crushinator"] := "|<crushinator>*92$28.60S0AM081lU08D607DzzzyzzvkvzQDPjxqxizrPkvzQDzDxzzUDrs00TU000w0001k40070000Q0001k001V00s00A00000000000000000000000000g00002000000002"
findbase["mission"]["crew"]["robotsanta"] := "|<robotsanta>*115$28.zzzzzzzzzzzzzzg0TzyE0zzz03zzs0Dzx01zznU7zz+Vzzwajzzm6nzzDnzzwQzzzk3uzz0Dfzw0wbzk02zz000zw001zo01zzI0Dzxzzzzrzzzz0GLzw00Tzk00zz001zw001zs"
findbase["mission"]["crew"]["pazuzu"] := "|<pazuzu>*115$29.Tzy8STzw4QTzs1szzzznzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzXzzzs3zzzi3zzzQ7zzz0TzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzjzzzzU"
findbase["mission"]["crew"]["mutantdwayne"] := "|<mutantdwayne>*101$30.300sl30001y0001w0001000030000300003000070000D0000z000Tz0007z3v7zz4107z49Ibz41PDz224Tz0M2Tz016Tz00xzz000Tz000Dz0007z0zzzz12Qzz03zzz0QDzzUs7zzls7zzU"
findbase["mission"]["crew"]["santasaides"] := "|<santasaides>*117$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyFzzs01zs00Dw003z1sQTlU0bsU07zE00zs00Dz003zk00rw00Bz1kT7kW8Jw8G4T2IZDkVATw7bxz069Tk11Lw0Joz03tDk008"
findbase["mission"]["crew"]["snowmotron"] := "|<snowmotron>*128$28.zzzzzzzzzzzzjzzzzTzzzxzzzzzzzlzzzy1zzzU1zzk03zw00Dzk01zz00Dzz01tzzs7XzzUSDzx7sTzcV1zx037w002Tk0U3z01k3w60C7m001r0007w000Tk003z000Dx001zo007zE00zy"
findbase["mission"]["crew"]["hermafroditee"] .= "|<hermafroditee>*94$28.E066x00QLo01szA07LwM0TjlU0SzA01zz00Tzk01zz003zw007zkT0Dz217zzs7UzkYS1z21A7wDsAzk0EDz01zzw00zzk007z000Tw001zk6Tzz0Tjzw01zzk0Dzz00zzw03zzk07zzU"
findbase["mission"]["crew"]["grayfarn"] .= "|<grayfarn>*115$28.jzzlwzzznnzzzTTzzzzzy0zrzU0zbs00TC00zzk0zzw0sDz0M0DkQzUTC4EqTU220k2/2HE80M502EUk1883E1l1R02G3o008DU00Ey010Xs080D0103w0/a7s00SD047wS"
findbase["mission"]["crew"]["ignus"] := "|<ignus>60@0.88$25.00000C0003U000s000T0007k003s001y007zU07zk07zw0Tzy0DzzkDkz03kD01s3U0w1k1y0w07Uy0Dsz87zvY3zwk0zz20Tzn0DzzU7zzk1zzw0zzy0Tzz0D7z07s00E"
findbase["mission"]["crew"]["leegola"] := "|<leegola>*121$31.3zzlvVzzsUkDzw4s7zz0w3zzzy7szzzzyDzzzz3zzzxUzzzzUTzzzUTzzzktzzzsUzzzsUDzzwE7zzy85zzrU0TzzkUTzvM0bzy00/zzk03zzs09zzw03jzy007zz007zzU67zzk0Tzzs1zzzs0zzzw0Tzzy0Dzzk"
findbase["mission"]["crew"]["kingroberto"] := "|<kingroberto>150@0.88$29.00+k000VA00E2k000/00N0207y03UA60Ekk700H05w0K07k0c0000k0001U0003U000D01w0H0Tw1fVzw6Tyzrk03zU03zz007vy00Drw00Tjs00zTk00yzU01yzU03xz007U000C0000Q000U"
findbase["mission"]["crew"]["kingroberto"] .= "|<kingroberto>226@0.82$25.3Tk01Ts00bo00E00007000pY04Mu022q010W07k1k3w1z0D00k1UUA0z4G0005Y02IG81+8k0Ug40864zlW0zw67zzy3jyQ1zz00zzU0Tzk0Dzs07rw03vy01"
findbase["mission"]["crew"]["frydo"] := "|<frydo>85@0.91$25.00000000000001s000zU00Tc00Ty00TzU0Tzs3jzw1rzy0xzzUTT0ETjxs/zzQ3zza3zs407kUE9k003s0U2z004z0O1zmS07yDs7yDw3zz03zzw1zzz0zzzkzzzwTs7yE"
findbase["mission"]["crew"]["frydo"] .= "|<frydo>*110$27.1UTus60zz0k3zsQ0DzS00zy003z000Ts001z000Ds03tz000Ds00Fz0007s0Dnzw427y020TM023u00MTM44bw0F1zw003z0C0Tk01ry000zk003w000TU001w"
findbase["mission"]["crew"]["momon"] := "|<momon>*130$31.yHvTzz1sDzzcE3zzk00zzo03zzl02DzsU17zkE0Dzk001zsc00zwI00zy808Tz4E1DzU00Dzk00Tzs007zw20Hzy2YDzz0mYzzU8GTzr3sjzzks7zzk0/zzs01zzs00zzy0Dzzz0DzzzU3zzzk1zzzs1zzzy0zzzk"
findbase["mission"]["crew"]["momon"] .= "|<momon>321@0.86$22.000000000000QC01tk07r0MTQ3XzkC/y0sDs3UzkD7zUzzy3zzwDryky0s3wZYBuKk3kQ07Xk0zw03zm0Dzw0sE03j00Dw00zs01z02"
findbase["mission"]["crew"]["larius"] := "|<larius>*115$24.OHxUwFbzoEXzok3zkE1zk01zU01zU00zU64TkU9Tl10zl11Ts08TsW8zw27zc85zc04zk00zs0Qzs00zs00zs00Ts3sTs06zs0Dzk0zzk1zzs1zzU"
findbase["mission"]["crew"]["larius"] .= "|<larius>97@0.86$22.0U1060A080k1c20Kk80vW0/DQ0Yzk3/z0Dzy1zzs7zzUDlt0w723UA060k0Q301kQ03dk0TDc1zyU/zN0DyA1zzk7zz0Tzy1y1s7vs0Tz01zk0Dy02"
findbase["mission"]["crew"]["captainyesterday"] := "|<captainyesterday>*115$27.A001tU1MTw00DzD01zM60Dt0A1zo0QTxU0zzI03zu00zz8zzztTzzzTlwzzs73zz4sTvwDbzTzzzvTxzz+01zxE07z+00zsE0zz000zs007z1U0Ts101z03UDw"
findbase["mission"]["crew"]["superking"] := "|<superking>*115$28.RMDzxc0zzn0Tzz6ETzwPVzzr0Dzzk2DzzVUzzk03zz00Dzw00Tzk01zz1srzwEzzzzzzzzzvxzzy33zztAjzT4Ezwy33zlyTzz1zzzw00TzkE1zz00Tzw11zzm07zz001zwF03zkY0Dz000Ty"
findbase["mission"]["crew"]["zookeeper"] := "|<zookeeper>*115$29.M23zzkM7zz0E3zz0z7zzk0Tzm003zg001zs3zlw707xvA0TxszXzvbzzzbD7wQyw7nbxsjnzvsTbzrvsTzlzU1zES03zU0EDz00DjyD00TszzlrUAzUD0601y00zzw003zs004zk00Uzk"
findbase["mission"]["crew"]["blatherbot"] := "|<blatherbot>*96$29.70zzzz3zzzz7zzyqQrzwAMDzsMszztVzzyy1yTwTzyzz00DzsDyDzXE5jz8U1zyV03zxW07zz40Dzy80TnyzzzUzzzz1zzzy3zzzz7zzzyDzzzyTzzzyzzzzzzzzzy"
findbase["mission"]["crew"]["blatherbot"] .= "|<blatherbot>*84$28.PzxTxU7yzr0zzzy7zzzwTzzqFUzz363zwAQTzzUzTzzzoTzU0zzk00zzC8tzy80rzsU1jz006zy00/zs00jzW064DzzwkM00z100064000AE000N00S0Y03M1E0Dk300p0403w0M"
findbase["mission"]["crew"]["leo"] := "|<leo>*95$30.TzzVzTzz3zTzz3jTzz47Tzz17zzz0Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz0U7zWH03z20UPzWFE1zW8E1zy403zW113zc64bzg007zo007zsU07zyg07zw607zs1sDzk07zzk0TzzU"
findbase["mission"]["crew"]["inez"] := "|<inez>*101$31.zzy7sTxz3kQ0C0sy03zzzw0Q7zzzbzzzs63zzx00zzx40zzzV0XzyEE5zz0U0zsV0Ezx0C3TykQ1TzE007zk0E7zy001zzU80zzkE1TtsWzzww0bzwI0zzy60zzz3VHzzUz8zzkD6Dzw"
findbase["mission"]["crew"]["sircalculon"] := "|<sircalculon>*105$28.6vjzwNazzlrTzz7RqTwsU1zz000TnU1lw0TbbnzzazTzzfzXy6TwblRzmT5rz3y6TzTxvzDzyDw000zk001zYHDzwE07zl00Tz401zyF0bzk00Tz000zw003zk00Dz000zy"
findbase["mission"]["crew"]["bigfoot"] := "|<bigfoot>*74$29.DlsQSTU0txy7UzzwM0zzU01zz007zw001zs001zV7zzz218Ty44Ezy3kHzw00zzw60Dzs80TzkD3zzU3wzy000zw000TsDzkznk0DzYPzzzU0DzzU0TzzU1zzzU7zzzzzzzzzzzzzzzzk"
findbase["mission"]["crew"]["slurms"] := "|<slurms>*84$31.LzzjzfzzXjrzzq7vzzz7xzzzbzzzxzzzzyTzzzz7zzlzXzzsTlzzsDlzzs7sTzs1sDzk0M7zk043zs001zw000zy000Dz0007zU001zs000Tt0007w8001y1000D08003U1U01k8601s43zDw02Dzy013zzU"
findbase["mission"]["crew"]["boraxkid"] := "|<boraxkid>*205$28.zzzzzzzzzzzzzys00D3000Qs000THk1zwQwtzrbnzzDq8Tw80XzkC0Xz000Dwk86zk0Y1z0207w0SATk76/z3kMTwTzzzk807z000Tw001zk00Dz000zw003zk00Tz001zw007zo00TzU"
findbase["mission"]["crew"]["hattie"] := "|<hattie>*88$30.Lzz0DTzz07Tzz0DTzzUTzzzzzzzzzzzzzzzzzkzzzs0Tzz007zz0E7zz003zy0E3zy000zz000Tz101zz7W4Ty604TK200TM202jI1v2Ts0C0TQ001T000FD000DD00063070034Rzzz0E1zzU"
findbase["mission"]["crew"]["hattie"] .= "|<hattie>*96$30.Lzy47Tzy07Tzz0DzzzzzzzzzzzzzzzzzzzzzzUzzzk0Dzz007zz007zz003zy003zy000zz000zz103zz7W4Ty604TK220TM+43jk0m2Ts0A0T0000T000ED000C70200307M070M7zz001zzU"
findbase["mission"]["crew"]["hattie"] .= "|<hattie>*88$30.Lzz0DTzz07Tzz0DTzzUTzzzzzzzzzzzzzzzzzkzzzs0Tzz007zz0E7zz003zy0E3zy000zz000Tz101zz7W4Ty604TK200TM202jI1v2Ts0C0TQ001T000FD000DD00063070034Rzzz0E1zzU"
findbase["mission"]["crew"]["benfranklin"] := "|<benfranklin>*130$30.s01zzs01zzs00zzk00zzk00Tzs00Tzw20TzwT3zzx12Dzx50DzEW1zzU0nzz0b03z1103z100bz0w0bz04T7z0807z0E17z0E0bz0Xkbz0Y71z00A8z0008T0000D000E7000k3000s1U01y1k01z1k03zVU"
findbase["mission"]["crew"]["neiltyson"] := "|<neiltyson>*97$28.8D0zxbzbzozzTzrzyDzzzszrzzXz73yDyNk8zzh73zS04DwM00zkU03z200Tw001zk007z0DkTw1zVzk827z0z0Tw0y1zl007zELUTw083zz04DzzU3zzzznzzzzzzrzzzyU83zu80jzkA1zy"
findbase["mission"]["crew"]["larry"] := "|<larry>*118$28.7ry2AS7g1zUCzzw0Fzz007zw00Dzk00zz003zw00Dzk00Tz0oAzw81DzkUUDzW2Gzy813zsO0Tzk4/zz00bzc00Tz005zz02bzs00TzU00zy003zs10DzUAMzy00zzs0Dzy"
findbase["mission"]["crew"]["hookerbot"] := "|<hookerbot>*81$26.DzyfHzz7wzzmXAA9Un1Fswk8CTs3Vzw0ETw047z01kzk0EDw043z01Uzk0MTxTsDzO03zry1zx007zIszzo00zx00DzE03zo00Tx00DzE0Tzw0Dzy03zzU1zzs0Dzy0LzzU7zzs"
findbase["mission"]["crew"]["hookerbot"] .= "|<hookerbot>*89$28.A77bwk8Dzy0szzk11zw047zk0MTz010zw043zk0EDz41XzxzsDzyU0zzTt5zx0Y7zpyDzzE03zx00Dzo00zzE01zx00Dzo07zzUUzzy07zzs0DzzU0Tzy07zzs1rzzk9bzy"
findbase["mission"]["crew"]["flexo"] := "|<flexo>*100$26.TzwjqzzfxjzlzPzszqzyDRzzW3Mzs8qDy0RUTzzk3zzk0Tzw03zz00zzk07zw01zz00Tzk07zw01zzTzjzs00zy0s7z463zk0Uzw30Dz0kDzs0UvyE0DzEyDzlzzzw01zz00Tzs"
findbase["mission"]["crew"]["flexo"] .= "|<flexo>*102$28.nzzzvzzzzjzzTyzzvTvTzlzhzyTyrzlzvTz4Djzw0SlzknvtzUTc1zzy03zzs07zzU0Tzy01zzs03zzU0Dzy00zzs03zzq0TzzVwDzw00TzljXzz847zw0ETzoM7zz1U7zwU0Tzt33zzMDtzy"
findbase["mission"]["crew"]["bendersmom"] := "|<bendersmom>12@0.94$31.03n0000kU0003k0001s0000w00000000000000100007U0003k0001s0000w0000D00041s007US00Ys3k3ry0w0xzU70w0M1UM0600001U0000M0000700001k000000E"
findbase["mission"]["crew"]["jrrr"] := "|<jrrr>38@0.94$31.000001zU000Dy0003zk001zw000Dz000zzk00zzz03zzzk7mbUM3U1001c0E00k0800I2420802104010U30E0M1U0U00M0U50GFC10AETzc7zzzy3zzzzVzzzzsDzzzwEzzzwA3zzk600003UTy01wTz00zzz00E"
findbase["mission"]["crew"]["hgblob"] := "|<hgblob>600@0.94$28.Yk001Y0000C0007tU00Ts003zw40Tjs01yzw0Dyzk0zwbU3zzxcDzzw0zzzs3zzzEDzzw0A4sU0k70020Q00A1k01U70070S80w1w83wTz8DzzzEzzzy0s0zsDzw40zzzu3zzyUDzxs0zqz02"
findbase["mission"]["crew"]["igner"] := "|<igner>7@0.94$28.1s0007k000TU001zU00Dz001zw00Dzs00zzk03zz00Tzy01zzw07kz00T1s00s3U03UC00y0s00w7U07sz00TzQ01zwk07zsE0Dzn00zzw03zzk0Dzz00zzw01nzk07Vy02"
findbase["mission"]["crew"]["robot1xs"] := "|<robot1xs>548@0.94$31.0000006000004000000000ME00408000000000100000U00000000040000000001000000000080000401002U0U0EQ0014z000EzU003zk40zzw3zzzy1zzzzczzzzoTzzzsDzwTy7zw7z3zy3zVzzVzkzzkTwE"
findbase["mission"]["crew"]["ndnd"] := "|<ndnd>7@0.94$28.1zs007zk00Ty001zu007zE00Tn000400000800000000200000000UM0k6b03Gzs0DxzM0kDzU3zzz0Dzzy0zzzw3zzzsDzzzkzzzzXzzzzDzzzwzzzzkTzzy03DzE01vC007zkA0Tw0zXzr2"
findbase["mission"]["crew"]["headcat"] := "|<donbot>204@0.94$29.0000000000000000000000000000000001U0002000E6000kA00VUQ001Uw001Vw003XzzzzbzzzzjzzzzTzzzyzzzzllTTQ0V00060000000008000M8031ls0DzXzzzw7zzy08"
findbase["mission"]["crew"]["donbot"] := "|<donbot>357@0.94$31.000000000000000000000000000000000000000000000000000000E0000A0002600001U0000M0000C03zzzU1zzzs0zzzw0Tzzy0Dzzw05xxk01000000000000000000M000kQ000zy02"
findbase["mission"]["crew"]["turboneptunian"] := "|<turboneptunian>320@0.94$31.00000000000000000000000000000000000000000000000070000zk001zs003zy007zz007zzU03zzw01zzy00vzs00Q0000D0s007UM003sA001zsA00zsE00Tw000Dy0007zU003zss02"
findbase["mission"]["crew"]["robotdevil"] := "|<robotdevil>8@0.94$30.3zz003zz007zzUE7zzUs7zzww7zzyk3zzU01zU000060000300001U0001U0000k0000k0000M0000M000E8007kA007s0003zU043zs000000000000000000000000000000000000U"
findbase["mission"]["crew"]["admiralchu"] := "|<admiralchu>*84$30.I0C07Q0a07M0b0Dk0Xzzw03bz20E3z00EDz00EzzE0ELzU0ELzU0ETz00ETzE007zY00Tzs00zzk00zzk00zzU00zzU00zzU0VzzU0JzzU01zz001zz1E1zzDS1zz0XXzz05vzzU0zzzU"
findbase["mission"]["crew"]["zapp"] := "|<zapp>*115$29.a00zzk037zU04zxU0Fzu01WLw0307k022T007ry00Dzs00Dzk08DzU1Dzz6GFzy88zzwDUXzs017zk02TzU04zz03kzy001zw003zs607zk0jzzU01zz1U3zy0zzzw00Dzs00zzs"
findbase["mission"]["crew"]["bathrobezapp"] := "|<bathrobezapp>6@1.00$30.1zs001zs001zw001zw001zw00zzy00zzy00zzD00zt000k100001U0001U00U3U00kDn00zzn00zzl00zzn00zs300zsDU0zzzU0zzzU0s0S00k0000k0000k0000s0000s0000z0000zzw00U"
findbase["mission"]["crew"]["doclobster"] := "|<doclobster>*128$29.TCtzyyzbzxtTTzvZpzzzTzzznjjzzXyDzz7kDzy40Tzw5+zys+JztkIiz/0VDwS1/zkQ2Tzks05wXk01szU03kz002Xy001bw004zs005zk00/zU00Dz000Ty000Tw000zs000zk001zk"

findbase["mission"]["crew"]["bender"] := "|<bender>*105$28.TzzzwzzzznzzzzDzzzwzzzznzzzzDzzzwrzzznTzzzA7zzzUDzzk0Tzz00zzw03zzk0Dzz00zzw03zzk07zz00Tzxs7zzs01zz001zwEsTzm00zz003zw30jzm00zz003Ty4ETzn00Tz00Tzy"
findbase["mission"]["crew"]["fry"] := "|<fry>6@0.94$23.1zz03sT03U006000A000M000k001U00PU82z0w0Tzy3zy83zw07zzUDDzUSDz0z3z1zUT3zs0DzU0SC00Q808"
findbase["mission"]["crew"]["leela"] := "|<leela>98@0.94$28.00000000000A0000s0003E000B0001k00060000E0001000040000M000BzE00Ty001zc007z000Tb001w000Dk000zU003y000Ds000zU00Fy007bw00yDm07sT00TVwE3y3E0Ds400y0002"
findbase["mission"]["crew"]["professor"] := "|<professor>7@0.94$31.1z0000zk000zs000Dx0007Ds001js000zx000MTk00Qzw07zzzU3zk301zk0000k000000003w0000y0000zU0U0Ts080Ds1603y3bU1ztlk0TxwM0TwzY0zwls0Bw0A04wb1U4yy0M4zQ000zw000vk00010000E"
findbase["mission"]["crew"]["amy"] := "|<amy>59@0.93$22.000000E003U00T003y0ADs0lzk7jz0xTs3JzUA3w1k7U7UQ0T0k1y7UDzy1zzkVzzy7zzwTzzlzzy7wT0Tk01zs07b02"
findbase["mission"]["crew"]["zoidberg"] := "|<zoidberg>16@0.93$37.zzDsTUTz1s303y0w100Q3A0U00160E0007U80003k60001w7U000wbs000Tzy000DzzU007zzU003yTs001zhg000zrKU00TvjM00Dxqc007ynE000ze00007y00000004"
findbase["mission"]["crew"]["zoidberg"] .= "|<zoidberg>7@0.85$22.1y00Tz0Xzy8DzxKzztvzzSDzwszzlrzzeTsz0y1k1s20r083Q0U1s207UQ0TXs1xjk7zzUTzz1zzw7zzsTvPVzjjDyzy"
findbase["mission"]["crew"]["hermes"] := "|<hermes>226@0.94$31.0000000000000000000000000000000020000Dk000Dw400Dz3U07zXk03zlw00zzz00Q1zk0C0T0000C00b0000nk1U0Ts1s0Ty1z07zzzs7zzks3zzz01zzzz0zyzzkTyTzsDzk7w7zzw03zzzU0zzzU0DzzU0E"
findbase["mission"]["crew"]["scruffy"] := "|<scruffy>19@1.00$23.000kTzzUzzzVzzz3zwz7zsyDU00T000y001w0M1w0M3y1y7y0MDw00Tk01z003w007s00Tk00zU01z003y007w90Dzw03ks1"
findbase["mission"]["crew"]["kif"] := "|<kif>11@0.96$26.07zs04Tzny1zkT0Ds7k1w0y0T07U3U1w0s0D0C03s3U0TUsE3yzA0Tzz3nzgoDzvM0zzy03zzU0zzs07zy00zzU07zs01yS00DU003n000zU8"
findbase["mission"]["crew"]["smitty"] := "|<smitty>8@0.96$26.0Tz00TzU0Dzk03zs00Ty001zk00Tw007z001zs00Ty3kTzlwTw00zw00Dy003z000zls7jwU03y9E4zU00c"
findbase["mission"]["crew"]["url"] := "|<url>*113$29.M0zzwkQTztXiTzn86zzaE7zzAUDzyMUxzwlV3zv1Y3zw1k1zk007zzs1zz3zVjzzzzTzzzyzzzzxzzzzvzzzzrzzzzjzzzzTzzzyzszwBzkzsPzVzkrz3z1Dy001zw007zvzzzzw8XzzkF7zzUWDzz"
findbase["mission"]["crew"][""] := 



findbase["mission"]["interaction"] := {}
findbase["mission"]["interaction"]["billnye"] := "|<billnye>76@0.95$21.000003000w007U01w0DzU3zw0Tz01Uk086E1lk0A601Uk0SC09lu0DzE0sM0mLU1i00ByE1Xy0B001jU07y00zk07y00zk07y00T04"
findbase["mission"]["interaction"]["billnye"] .= "|<billnye>67@0.95$18.00000E00s01s03w3zw3zw3zs30U01k1XU1VU1VUHVmFlm1zq1sk4ls3i03TY33y1M01D01zU0zU0zU0zU0zU0T0000U"
findbase["mission"]["interaction"]["lrrr"] .= "|<lrrr>100@0.96$39.0000000000E00000Dw00001zk0004Tz0001zzy000Tzzs007szs001zUE000Tw00007zU0003zw0100DzU0007zy1y01zzzj80Tzz3z03zzzzw0Dzzzzk1zzzzy07zzzzs0zzzzzU7zzzzy0Tjzzzk3s0Dzs0DS00001zk0Tk07zE7s60TzMzQs3zzznrk3zzwAzk7zz1A"
findbase["mission"]["interaction"]["drcahill"] .= "|<drcahill>*160$25.0000U000E0008000A000C0003000VU008k0068343Y3y6K0V2n083NU3l4mU0GNk0+Ac056+00X317kU0TkE07k841k020U030E01U80Fk605s1i1Q0QW"

findbase["crewtypes"] := {}
findbase["crewtypes"]["brainy"] := "|<brainy>30@0.89$9.6n1ddvwncS2U24"
findbase["crewtypes"]["brave"] := "|<brave>21@0.90$9.G1EQ70sLTyzyU"
findbase["crewtypes"]["cool"] := "|<cool>6@0.90$10.7Ux34/cuL4PvDUs32"
findbase["crewtypes"]["cool"] .= "|<cool>4@0.90$9.D3ws6ju7Cbky74"


findbase["game"] := {}
findbase["game"]["rewards"] := "|<rewards>*220$50.zzzzzzzzkNzvVz0D3ySyyDnlrzrbDXwyRzwtruTDbQTgNxrntr7tGzRwwxzy6DbC0TTznXs3nbrzwxwyQwxkTzTTrDD07zzbwntkzzzzzzzzs"
findbase["game"]["closebutton"]:="|<closebutton>*70$23.k007TzzpzzznzzzbzzzDllyTnXwzWDtzUTnz1zbz7zDy7yTsDwzWDtz4DnwQTbzzzDzzwTzzmzzzCzzwy003s"
findbase["game"]["closebutton"].="|<closebutton>*220$10.zySQnnDVzDwzVyrnCSTzU"

findbase["game"]["taskready"] := "|<taskready>75@0.54$14.0000000An7ztAmRvU000000002"
findbase["game"]["taskplus"] := "|<taskplus>68@0.90$12.001U1U1U1UTyTyU"


findbase["game"]["pvpicon"] := "|<pvpicon>*109$22.zzzyTzzs2zzs0Tzk00zU01zU0Tz01zy03zw0Dzq0zzUzzz3zzwDzzkzzz3zzzTzzzzU"
findbase["game"]["levelupicon"] := "|<levelupicon>*112$20.zzzzy3zz0TzU3zs0zy0DzU3zs0zy0Dzk7yS3z3UzWMDtG0zXU3kE0NW06xU7zzzs"
findbase["game"]["settingsicon"] := "|<settingsicon>*129$16.zzzwzzUDs0T1VwTVly7DwMTnVyD3ky03s0zk7zwzzzy"
findbase["game"]["mapmoveicon"] := "|<mapmoveicon>*128$9.sz7ss0000sz7sw"
findbase["game"]["storeicon"] := "|<storeicon>283@0.65$33.0zzzXk6jzxy1xzzTkDvzry1zLzzkDzzjy1zzzzk7zzzy7rzvzlzrzTyRzrvznwznTyTwznznzwyzs7zwTw4"

findbase["training"] := {}
findbase["training"]["promote"] := "|<promote>*127$63.00000000003wTUy84T7xzTnyTtVbyzjv3MH3CQkklUMP2kBzg36A37Mq1hxUMnyzrwkBZg36A30NX3gAkklUM3AQtVbC6Dv0MlyAATUlz00000000004"
findbase["training"]["max"] := "|<max>*137$22.zzzywzztX1NU9YiYiNvmtbj9YCwkKTzzzU"
findbase["training"]["max"] .= "|<max>*137$22.zzzySzzsn1BU9aiGbQtuxnbdaiSkHTzzzU"


findbase["tasks"] := {}
findbase["tasks"]["plustask"] := "|<plustask>15@0.93$10.33zkkU"
findbase["tasks"]["plustask"] := "|<plustask>4@0.93$7.zk"

; zoomed out
findbase["battlefist"] := "|<battlefist>24@0.89$15.0003U790wQBnVYMS6HsaT1XnMQsHzYTy1zk7s080004"
findbase["battlefist"] .= "|<battlefist>50@0.89$15.000107A0wADnVaMQ6HsaT1Xk8SMHbYTy3zk7w0M0004"
findbase["battlefist"] .= "|<battlefist>53@0.89$16.0000k0l07VkT734sC38wNbkAT1Utk3j4Tz0zs1z01U0008"
findbase["battlefist"] .= "|<battlefist>37@0.88$16.0000k0l07VkTD3AsC38wNbkAT1ctkXj4Tz0zw1z01U0008"
;normal zoom
findbase["battlefist"] .= "|<battlefist>52@0.88$20.00000k06C03lA0z3UTls6SQ3VC0y36DlXbw1lz0sDbAXlkEwy8Dzk7zy0Tz03z00A00000U"
findbase["battlefist"] .= "|<battlefist>31@0.88$20.00000k06C03kC1z7UTlsCAQ3kCEy7CTlb7w3VyFmD793nkkzy8Tzk3zw0Ty03s00A00000U"
findbase["battlefist"] .= "|<battlefist>32@0.88$20.00000s0D6k3sC1z7UNtkCAs3kAMz6CTl77w3VyMmD713nsUzz0Tzs3zw0Dy01k00A00000U"

findbase["charlocked"] := "|<charlocked>63@0.73$17.0000E07s0Ts0ks1Uk21U430820zy3zw7nsTXsz7syS3wzXtw3y0001"

GetPattern(name, sub:="", sub2:="")
{
	global findbase

	if (sub2)
	{
		return findbase[name][sub][sub2]
	} else {
		if (sub)
		{
			return findbase[name][sub]
		} else {
			return findbase[name]
		}
	}
	return false
}