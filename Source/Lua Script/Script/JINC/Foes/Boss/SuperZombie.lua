--[[
**********************************************
  
  SuperZombie.lua
  (c) Jeroen Broks, 2016, All Rights Reserved.
  
  This file contains material that is related 
  to a storyline that is which is strictly
  copyrighted to Jeroen Broks.
  
  This file may only be used in an unmodified
  form with an unmodified version of the 
  software this file belongs to.
  
  You may use this file for your study to see
  how I solved certain things in the creation
  of this project to see if you find valuable
  leads for the creation of your own.
  
  Mostly this file comes along with a project
  that is for most part released under an
  open source license and that means that if
  you use that code with this file removed
  from it, you can use it under that license.
  Please check out the other files to find out
  which license applies.
  This file comes 'as-is' and in no possible
  way the author can be held responsible of
  any form of damages that may occur due to 
  the usage of this file
  
  
 **********************************************
 
version: 16.07.15
]]


-- Version 16.07.15



Data = {
	Name = "Super Zombie",
	Desc = "Yikes, this one is STRONG!",
	ImageFile = "Boss/SuperZombie.png",
	AI = "Default",
	Boss = true,
	EleRes_Fire = 6,
	EleRes_Wind = 6,
	EleRes_Water = 6,
	EleRes_Earth = 6,
	EleRes_Frost = 6,
	EleRes_Lightning = 2,
	EleRes_Light = 1,
	EleRes_Dark = 6,
	EleRes_Healing = 1,
	EleRes_DarkHealing = 6,
	Stat = {
		["Strength"] = {1,600},
		["Defense"] = {0,200},
		["Will"] = {1,600},
		["Resistance"] = {1,200},
		["Agility"] = {1,250},
		["Accuracy"] = {1,600},
		["Evasion"] = {1,5},
		["HP"] = {20,1500},
		["AP"] = {0,0},
		["LevelRange"] = {1,100},
},
	StatusResistance = {
		["Poison"] = 100   --[[ #1 ]],
		["Paralysis"] = 100   --[[ #2 ]],
		["Disease"] = 100   --[[ #3 ]],
		["Will"] = 100   --[[ #4 ]],
		["Block"] = 100   --[[ #5 ]],
		["Death"] = 100   --[[ #6 ]],
		["Damned"] = 100   --[[ #7 ]],
	},
	Acts = {}, -- Data itself defined below
	ActMinLevel = {}, -- Data itself defined below
	ItemDrop = {}, -- Data itself defined below
	ItemSteal = {} -- Data itself definded below
}


local temp


Data.ActMinLevel["Sys.Attack"] = 1		for ak=1,100 do table.insert(Data.Acts,"Sys.Attack") end
Data.ActMinLevel["Abl.ABL_EXHURU_BATTLECRY"] = 0		for ak=1,5 do table.insert(Data.Acts,"Abl.ABL_EXHURU_BATTLECRY") end
Data.ActMinLevel["Abl.ABL_EXHURU_CONCENTRATE"] = 100		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_EXHURU_CONCENTRATE") end
Data.ActMinLevel["Abl.ABL_EXHURU_NELJA"] = 200		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_EXHURU_NELJA") end
Data.ActMinLevel["Abl.ABL_FOE_DEATH"] = 5		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_FOE_DEATH") end
Data.ActMinLevel["Abl.ABL_FOE_DEMON_SOUL_BREAKER"] = 1		for ak=1,5 do table.insert(Data.Acts,"Abl.ABL_FOE_DEMON_SOUL_BREAKER") end
Data.ActMinLevel["Abl.ABL_FOE_FEAR"] = 1		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_FOE_FEAR") end
Data.ActMinLevel["Abl.ABL_FOE_HORROR"] = 1		for ak=1,4 do table.insert(Data.Acts,"Abl.ABL_FOE_HORROR") end
Data.ActMinLevel["Abl.ABL_FOE_IDDQD"] = 500		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_FOE_IDDQD") end
Data.ActMinLevel["Abl.ABL_FOE_ULTRASONIC"] = 10000		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_FOE_ULTRASONIC") end
Data.ActMinLevel["Abl.ABL_ROTTEN_BREATH"] = 100		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_ROTTEN_BREATH") end


return Data