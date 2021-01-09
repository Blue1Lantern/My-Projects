View.Set ("graphics:800;600")

var KEY : string (1)
var XPOS, YPOS : int := 300
var XDIR, YDIR : int := 0
var LOSE : int := 0
var SCORE : int := 0
var ss : int := 0
var HARDNESS : int := 0



put "Entrez le niveau de difficulte, de 1 a 5 :  "
get HARDNESS
if HARDNESS > 5 then
HARDNESS := 5
elsif HARDNESS <= 0 then
HARDNESS := 1
end if
cls
locatexy (300, 300)
put "Utilisez w, a, s et d pour bouger et ne toucher pas le 'bleu'"
Time.Delay (4000)
cls
Draw.Box (0, 0, maxx, maxy, blue)

Draw.Box (HARDNESS * 10, HARDNESS * 10, maxx - HARDNESS * 10, maxy - HARDNESS * 10, blue)

Draw.Fill (1, 1, blue, blue)


loop

if hasch then
getch (KEY)

if KEY = "w" then
YDIR := 1
XDIR := 0
ss := 5
elsif KEY = "a" then
YDIR := 0
XDIR := -1
ss := 5
elsif KEY = "s" then
YDIR := -1
XDIR := 0
ss := 5
elsif KEY = "d" then
YDIR := 0
XDIR := 1
ss := 5


end if
KEY := ""
end if



XPOS := XPOS + XDIR
YPOS := YPOS + YDIR
Draw.FillOval (XPOS, YPOS, 5, 5, red)
Time.Delay (8)
Draw.FillOval (XPOS, YPOS, 5, 5, blue)



if XDIR = 1 and whatdotcolor (XPOS + 6, YPOS) = blue then
LOSE := LOSE + 1
elsif XDIR = -1 and whatdotcolor (XPOS - 6, YPOS) = blue then
LOSE := LOSE + 1
elsif YDIR = 1 and whatdotcolor (XPOS, YPOS + 6) = blue then
LOSE := LOSE + 1
elsif YDIR = -1 and whatdotcolor (XPOS, YPOS - 6) = blue then
LOSE := LOSE + 1

end if
if ss = 5 then
SCORE := SCORE + 1
end if


exit when LOSE = 1
end loop
cls
put "Partie finie"
put ""
put "Votre score est de ", SCORE
put ""
if SCORE <= 500 then
put "Tu es nul"
elsif SCORE <= 1000 then
put "Tu peux faire mieux que ca"
elsif SCORE > 1000 and SCORE <= 3000 then
put "Pas mal mais essaye encore"
elsif SCORE > 3000 and SCORE <= 5000 then
put "Je vois que tu t'ameliores"
elsif SCORE > 5000 and SCORE <= 8000 then
put "Bravo!"
elsif SCORE > 8000 and SCORE <= 11000 then
put "Tres bien!"
elsif SCORE > 11000 then
put "Tu es un dieu"
end if
