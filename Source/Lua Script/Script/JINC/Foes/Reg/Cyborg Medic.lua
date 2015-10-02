--[[
**********************************************
  
  Cyborg Medic.lua
  (c) Jeroen Broks, 2015, All Rights Reserved.
  
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
 
version: 15.10.03
]]


-- Version 15.10.02



Data = {
	Name = "Cyborg Medic",
	Desc = "All she will do is to heal her comrades, whether or not any healing is required.",
	ImageFile = "Reg/Cyborg Medic.png",
	AI = "Default",
	Boss = true,
	EleRes_Fire = 5,
	EleRes_Wind = 5,
	EleRes_Water = 5,
	EleRes_Earth = 5,
	EleRes_Cold = 5,
	EleRes_Thunder = 5,
	EleRes_Light = 5,
	EleRes_Darkness = 5,
	EleRes_Healing = 6,
	EleRes_DarkHealing = 5,
	Stat = {
		["Strength"] = {5,6},
		["Defense"] = {1,5},
		["Will"] = {5,8},
		["Resistance"] = {10,20},
		["Agility"] = {5,15},
		["Accuracy"] = {1,6},
		["Evasion"] = {5,6},
		["HP"] = {50,60},
		["AP"] = {0,0},
		["LevelRange"] = {5,10},
	},
	Acts = {}, -- Data itself defined below
	ActMinLevel = {}, -- Data itself defined below
	ItemDrop = {}, -- Data itself defined below
	ItemSteal = {} -- Data itself definded below
}


local temp


Data.ActMinLevel["Sys.Attack"] = 1		for ak=1,10 do table.insert(Data.Acts,"Sys.Attack") end
Data.ActMinLevel["Abl.ABL_EXHURU_KAKSI"] = 10		for ak=1,10 do table.insert(Data.Acts,"Abl.ABL_EXHURU_KAKSI") end
Data.ActMinLevel["Abl.ABL_EXHURU_KOLME"] = 15		for ak=1,30 do table.insert(Data.Acts,"Abl.ABL_EXHURU_KOLME") end
Data.ActMinLevel["Abl.ABL_EXHURU_KUUSI"] = 30		for ak=1,60 do table.insert(Data.Acts,"Abl.ABL_EXHURU_KUUSI") end
Data.ActMinLevel["Abl.ABL_EXHURU_NELJA"] = 120		for ak=1,20 do table.insert(Data.Acts,"Abl.ABL_EXHURU_NELJA") end
Data.ActMinLevel["Abl.ABL_FOE_PHOTON"] = 0		for ak=1,100 do table.insert(Data.Acts,"Abl.ABL_FOE_PHOTON") end
Data.ActMinLevel["Abl.ABL_FOE_TASER"] = 5		for ak=1,1 do table.insert(Data.Acts,"Abl.ABL_FOE_TASER") end
Data.ActMinLevel["Abl.ITM_ADHBANDAGE"] = 1		for ak=1,1 do table.insert(Data.Acts,"Abl.ITM_ADHBANDAGE") end
temp = { ITM='ITM_ADHBANDAGE', LVL=1, VLT=false }
for ak=1,1 do table.insert(Data.ItemDrop ,temp) end
for ak=1,1 do table.insert(Data.ItemSteal,temp) end
temp = { ITM='ITM_ANTIDOTE', LVL=2, VLT=false }
for ak=1,10 do table.insert(Data.ItemDrop ,temp) end
for ak=1,5 do table.insert(Data.ItemSteal,temp) end
Data.ActMinLevel["Abl.ITM_BANDAGE"] = 1		for ak=1,1 do table.insert(Data.Acts,"Abl.ITM_BANDAGE") end
temp = { ITM='ITM_BANDAGE', LVL=6, VLT=false }
for ak=1,6 do table.insert(Data.ItemDrop ,temp) end
for ak=1,6 do table.insert(Data.ItemSteal,temp) end
temp = { ITM='ITM_BLUBAFLOWER', LVL=1, VLT=false }
temp = { ITM='ITM_GUBAFLOWER', LVL=15, VLT=false }
Data.ActMinLevel["Abl.ITM_HEALINGCAPSULE"] = 0		for ak=1,100 do table.insert(Data.Acts,"Abl.ITM_HEALINGCAPSULE") end
temp = { ITM='ITM_HEALINGCAPSULE', LVL=1, VLT=false }
for ak=1,100 do table.insert(Data.ItemDrop ,temp) end
for ak=1,100 do table.insert(Data.ItemSteal,temp) end
temp = { ITM='ITM_SPORES', LVL=3, VLT=false }
for ak=1,3 do table.insert(Data.ItemDrop ,temp) end
for ak=1,3 do table.insert(Data.ItemSteal,temp) end
temp = { ITM='ITM_VLUGZOUT', LVL=6, VLT=false }
for ak=1,5 do table.insert(Data.ItemDrop ,temp) end
for ak=1,1 do table.insert(Data.ItemSteal,temp) end


return Data
