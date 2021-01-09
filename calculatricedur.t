setscreen ("graphics:550;700, position:center;center")

var font : int
var nombre : array 1..8 of int 
font := Font.New ("serif:80")

loop
drawline(183, 550, 183, 0, black)
drawline(366, 550, 366, 0, black)
drawline (550, 550, 0, 550, black)
drawline (550, 410, 0, 410, black)
drawline (550, 270, 0, 270, black)
drawline (550, 130, 0, 130, black)
Draw.Text ("1", 60, 450, font, black)
Draw.Text ("2", 250, 450, font, black)
Draw.Text ("3", 440, 450, font, black)
Draw.Text ("4", 60, 310, font, black)
Draw.Text ("5", 250, 310, font, black)
Draw.Text ("6", 440, 310, font, black)
Draw.Text ("7", 60, 170, font, black)
Draw.Text ("8", 250, 170, font, black)
Draw.Text ("9", 440, 170, font, black)
Draw.Text ("0", 250, 30, font, black)

View.Update
 
var x,y,b : int
 
mousewhere (x,y,b)

drawfillbox (183, 550, 0, 410, red)
if x >= 183 and x <= 410 and y >= 0 and y <= 550 and b =1 then
    Draw.Text ("2", 440, 590, font, black)
end if
end loop
 





    




 
