var score : int := 0
var x,y,b : int
var start : string
var life1 : int := 0
var life2 : int := 0
var life3 : int := 0
var life4 : int := 0
var life5 : int := 0
var life6 : int := 0
var life7 : int := 0

loop
put "Cliquer sur les carres qui apparaitront au fur a mesure!"
put "----------------------------------------"
put "Entrez '(S)tart'pour commencer le jeu!"
put "Bonne chance!"
get start
exit when start = "S" or start = "s"
end loop

cls
drawfillbox (200, 200, 250, 250, red)

mousewhere (x,y,b)

loop
mousewhere (x, y, b)
if x >= 200 and x <= 250 and y >= 200 and y <= 250 and b=1 then
  put ""
  score +=1
else
  life1 += 1
  put life1
end if 
exit when life1 = 1 or x >= 200 and x <= 250 and y >= 200 and y <= 250 and b=1
end loop

cls 
drawfillbox (100, 100, 150, 150, red)

mousewhere (x,y,b)

loop
mousewhere (x,y,b)
if x >= 100 and x <= 150 and y >= 100 and y <= 150 and b=1 then
  put ""
  score +=1
else
end if
exit when x >= 100 and x <= 150 and y >= 100 and y <= 150 and b=1 
end loop

cls
drawfillbox (320, 320, 370, 370, red)

mousewhere (x,y,b)

loop 
mousewhere (x,y,b)
if x >= 320 and x <= 370 and y >= 320 and y <= 370 and b=1 then
  put ""
  score +=1 
else 
end if
exit when x >= 320 and x <= 370 and y >= 320 and y <= 370 and b=1 
end loop

cls 
drawfillbox (250, 250, 300, 300, red)

mousewhere (x,y,b)

loop
mousewhere (x,y,b)
if x >= 250 and x <= 300 and y >= 250 and y <= 300 and b=1 then
  put ""
  score +=1
else
end if
exit when x >= 250 and x <= 300 and y >= 250 and y <= 300 and b=1 
end loop

cls 
drawfillbox (50, 50, 100, 100, red)

mousewhere (x,y,b)

loop 
mousewhere (x,y,b)
if x >= 50 and x <= 100 and y >= 50 and y <= 100 and b=1 then
  put ""
  score +=1 
else
end if
exit when x >= 50 and x <= 100 and y >= 50 and y <= 100 and b=1  
end loop

cls 
drawfillbox (300, 300, 350, 350, red)

mousewhere (x,y,b)

loop 
mousewhere (x,y,b)
if x >= 300 and x <= 350 and y >= 300 and y <= 350 and b=1 then 
  put ""
  score +=1
else 
end if
exit when x >= 300 and x <= 350 and y >= 300 and y <= 350 and b=1 
end loop

cls 
drawfillbox (120, 120, 170, 170, red)

mousewhere (x,y,b)

loop
mousewhere (x,y,b)
if x >= 120 and x <= 170 and y >= 120 and y <= 170 and b=1 then 
  put ""
  score +=1 
else 
end if
exit when x >= 120 and x <= 170 and y >= 120 and y <= 170 and b=1  
end loop

cls

put "Voici un tableau sur le niveau de dexterite"
put "Vous avez eu un score de ", score," sur 7" 
put "Veuillez vous referez a ce tableau ci-dessous"
put ""
put "Niveau" : 10 .. put "Description"
put "--------" : 10 .. put "----------------------"
put "1 ou 2" : 10 .. put "Severe dexterite"
put "3, 4 ou 5" : 10 .. put "Moyenne dexterite"
put "6 ou 7" : 10 .. put "Tres faible dexterite"





