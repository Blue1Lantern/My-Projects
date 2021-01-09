var pos_x1, pos_x2 : int
var pos_y1, pos_y2 : int
var x,y,b : int


pos_x1 := 50
pos_x2 := 100
pos_y1 := 50
pos_y2 := 100
mousewhere (x,y,b)

loop

for i : 1 .. 40
cls

drawfillbox(pos_x1,pos_y1,pos_x2,pos_y2,red)
pos_x1 := pos_x1 + 10
pos_x2 := pos_x2 + 10
pos_y1 := pos_y1 + 10
pos_y2 := pos_y2 + 10
delay (100)
mousewhere (x,y,b)

if x >= pos_x1 and x <= pos_x2 and y >= pos_y1 and y <= pos_y2 and b=1 then
  put "Vous avez gagner le jeu"
else 
  put "Vous n'avez pas reussi a cliquer la boite"
end if
end for
exit when x >= pos_x1 and x <= pos_x2 and y >= pos_y1 and y <= pos_y2 and b=1
end loop
