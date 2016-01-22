--[[
	Generated by Foe Editor
	(c) Jeroen P. Broks
	If this file has any references at all to the story line
	or any of its characters it may only be distributed in an
	unmodified form with an unmodified version of the game

	If this file has no references at all, you may
	use it under the terms of the zlib license!
]]


-- Version 16.01.22



Data = {
	Name = "Flirmouse Subject",
	Desc = "Serve the Flirmouse king. \nKilling it might kill the king as well.",
	ImageFile = "Boss/Flirmouse_Subject.png",
	AI = "Default",
	Boss = true,
	EleRes_Fire = 2,
	EleRes_Wind = 5,
	EleRes_Water = 3,
	EleRes_Earth = 0,
	EleRes_Frost = 4,
	EleRes_Lightning = 1,
	EleRes_Light = 1,
	EleRes_Dark = 5,
	EleRes_Healing = 6,
	EleRes_DarkHealing = 0,
	Stat = {
		["Strength"] = {0,200},
		["Defense"] = {0,70},
		["Will"] = {0,400},
		["Resistance"] = {0,50},
		["Agility"] = {0,100},
		["Accuracy"] = {0,1000},
		["Evasion"] = {0,30},
		["HP"] = {0,3000},
		["AP"] = {0,0},
		["LevelRange"] = {1,100},
},
	StatusResistance = {
		["Poison"] = 60   --[[ #1 ]],
		["Paralysis"] = 100   --[[ #2 ]],
		["Disease"] = 100   --[[ #3 ]],
		["Will"] = 5   --[[ #4 ]],
		["Block"] = 100   --[[ #5 ]],
		["Death"] = 60   --[[ #6 ]],
		["Damned"] = 30   --[[ #7 ]],
	},
	Acts = {}, -- Data itself defined below
	ActMinLevel = {}, -- Data itself defined below
	ItemDrop = {}, -- Data itself defined below
	ItemSteal = {} -- Data itself definded below
}


local temp


Data.ActMinLevel["Sys.Attack"] = 1		for ak=1,1 do table.insert(Data.Acts,"Sys.Attack") end
temp = { ITM='ITM_MOLOTOV', LVL=1, VLT=false }
for ak=1,100 do table.insert(Data.ItemDrop ,temp) end
for ak=1,20 do table.insert(Data.ItemSteal,temp) end
temp = { ITM='ITM_ROCK', LVL=1, VLT=false }
for ak=1,100 do table.insert(Data.ItemDrop ,temp) end
for ak=1,40 do table.insert(Data.ItemSteal,temp) end


return Data
