colors := {}

colors["planet_omicronp8"] := 0x5e2e46
colors["planet_dailyplanet"] := 0x022a01
colors["planet_mars"] := 0x131c70
;colors["planet_moon"] := 0xb9e5e5
colors["planet_moon"] := 0xa3c9c9
colors["planet_chapek9"] := 0x1e1e1e
colors["planet_earth"] := 0xffb600
colors["planet_amazonia"] := 0x2d4900
colors["planet_osiris4"] := 0x03c4e7

planets := ["omicronp8", "dailyplanet", "mars", "moon", "chapek9", "earth", "amazonia", "osiris4"]

colors["search_outline"] := 0xff00ffff
colors["search_box"] := 0x990000ff

colors["questtask"] := 0x64ebff
colors["plustask"] := 0x00f5ff

GetPlanetList()
{
	global planets
	planetlist := "New"
	for key,value in planets
	{
		planet := planets[A_Index]
		planetlist = %planetlist%|%planet%
	}
	return %planetlist%
}