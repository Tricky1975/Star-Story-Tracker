--[[
**********************************************
  
  Ysperon - Eugorvnia.lua
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
 
version: 16.01.22
]]

-- @USE /Script/Use/Maps/Gen/Next.lua
-- @USE /Script/Use/Maps/Gen/Sudoku.lua

-- @IF IGNORE
Sudoku = {}
-- @FI

function START()
MapShow("START")
if not Done("&DONE.EUGORVNIA.ARRIVAL") then 
   PartyPop("Start","South")
   MapText("WELCOME")
   PartyUnPop()
   end
end


function MultiShow(Tag,Labels,Num)
for i=1,Num or 1 do
    ZA_Enter(Tag..i,MapShow,Labels)
    end
end    

function EnterBoss()
local x
if BossDone then return end
MapShow("PreBoss")
if not (CVV("&DONE.EUGORVNIA.COMPLETE")) then 
   Maps.Obj.Kill("Trans.Pad.Transporter spot 4FB7229") CSay("Returner removed for first time visit")
else 
   x = Maps.Obj.Obj("Exit")
   x.R = 255
   x.G = 180
   x.Impassible = 1
   Maps.Remap()
   CSay("Exit Blocked to prevent conflicts with the facility") 
   end
end

function Boss()
-- Adept the level
local x = Maps.Obj.Obj("Prev")
x.R = 255
x.G = 180
x.Impassible = 1
x.W = 4
Maps.Obj.Obj("BossWallThin").W = 4
Maps.Obj.Obj("BossWallShort").W = 804
Maps.Remap()
MapShow("*ALL*")
BossDone=true
-- Boss fight itself
CSay("Init Boss Fight...")
CleanCombat()
local lv=RPGStat.Stat("Wendicka","Level")*skill
Var.D("$COMBAT.BACKGROUND","Eugorvnia.png")
Var.D("$COMBAT.BEGIN","Default")
Var.D("$COMBAT.FOE2","Boss/QueenMyr")
Var.D("%COMBAT.LVFOE2",lv)
Var.D("$COMBAT.ALTCOORDSFOE2","300,400")
if skill==3 then
   Var.D("$COMBAT.FOE1","Reg/Myr")
   Var.D("$COMBAT.FOE3","Reg/Myr")
   Var.D("%COMBAT.LVFOE1",lv/2)
   Var.D("%COMBAT.LVFOE3",lv/2)
   end
RandomBossTune()
StartCombat()   
end


function GALE_OnLoad()
Music("Dungeon/Dark_City.ogg")
ZA_Enter("STARTROOM",START)
ZA_Leave("STARTROOM",MapShow,"*ALL*")
ZA_Enter("BossRoom",EnterBoss)
MultiShow("ShowBase","Base",3)
MultiShow("ShowToSecret","ToSecret",2)
-- Init Sudoku Puzzle
Sudoku.Eugorvnia1 = {
                             SolveRemove = {"Sudo1Solve1","Sudo1Solve2"},
                             GroupSize = 4,
                             Layer = "#003",
                             Solved = { 
                                          G11R1 = {1,2}, G12R1 = {3,4},
                                          G11R2 = {3,4}, G12R2 = {1,2},
                                          G21R1 = {2,1}, G22R1 = {4,3},
                                          G21R2 = {4,3}, G22R2 = {2,1}
                                          },
                             ZegVoor = { {'G21R2C2'}, -- Easy Only
                                         {'G11R2C2'},                               -- Medium + Easy
                                         {'G11R1C1','G12R2C2','G22R1C1','G21R1C1','G22R1C2'}  -- Hard + Medium + Easy
                                       },
                             Tiles = "Eugorvnia"          
                    }
InitSudoku('Eugorvnia1')                    
end