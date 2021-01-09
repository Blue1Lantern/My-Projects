%Ousmane Barry
%Evaluation finale
%Version 1.0
%13 janvier 2020
setscreen ("graphics:550;700, position:center;center")

var font : int
var font2 : int
var x,y,b : int

font := Font.New ("serif:50")
font2 := Font.New ("serif:20")

loop
mousewhere (x,y,b)
Draw.Text ("Quiz", 200, 450, font, black)
Draw.Text ("de culture", 140, 370, font, black)
Draw.Text ("generale", 155, 290, font, black)
Draw.Text ("Par Ousmane Barry", 0, 677, font2, black)
Draw.Text ("Cliquez n'importe ou pour commencer", 70, 220, font2, red)
exit when x>= 0 and x <= 550 and y >= 0 and y <= 700 and b = 1
end loop

cls 

var nom : string
var prenom : string
var mois : string


put "Quel est ton prenom?"
get prenom
cls
put "Quel est ton nom?"
get nom
cls
put "Ton mois de naissance?"
get mois
cls

var score : int 
score := 0
var reponse : array 1..7 of string 
%1
Draw.Text (mois, 0, 40, font2,black)
Draw.Text (prenom +" "+ nom, 0, 10, font2,black)
put "En quelle annee la France a gagne la coupe du monde?"
put "A- 1980"
put "B- 1998"
put "C- 1999"
Draw.Text (intstr(score), 500, 20, font2,black)
get reponse (1)

if reponse (1) = "b" or reponse (1) = "B" then
  score += 1
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci est la bonne reponse!"
  delay (3000)
else 
  score += 0
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci n'est la bonne reponse!"
  delay (3000)
end if


cls 

%2
Draw.Text (mois, 0, 40, font2,black)
Draw.Text (prenom +" "+ nom, 0, 10, font2,black)
put "Qui est le dieu grecque de la guerre?"
put "A- Ares"
put "B- Zeus"
put "C- Apollon"
Draw.Text (intstr(score), 500, 20, font2,black)
get reponse (2)

if reponse (2) = "a" or reponse (2) = "A" then
  score += 1
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci est la bonne reponse!"
  delay (3000)
else 
  score += 0
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci n'est la bonne reponse!"
  delay (3000)
end if

cls 
%3
Draw.Text (mois, 0, 40, font2,black)
Draw.Text (prenom +" "+ nom, 0, 10, font2,black)
put "Comment appelle t-on une salle de judo?"
put "A- La salle"
put "B- Takashi"
put "C- Dojo"
Draw.Text (intstr(score), 500, 20, font2,black)
get reponse (3)

if reponse (3) = "c" or reponse (3) = "C" then
  score += 1
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci est la bonne reponse!"
  delay (3000)
else 
  score += 0
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci n'est la bonne reponse!"
  delay (3000)
end if

cls 
%4
Draw.Text (mois, 0, 40, font2,black)
Draw.Text (prenom +" "+ nom, 0, 10, font2,black)
put "Nom de l'avare de moliere?"
put "A- Harpagon"
put "B- Alise"
put "C- Valere"
Draw.Text (intstr(score), 500, 20, font2,black)
get reponse (4)

if reponse (4) = "a" or reponse (4) = "A" then
  score += 1
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci est la bonne reponse!"
  delay (3000)
else 
  score += 0
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci n'est la bonne reponse!"
  delay (3000)
end if

cls 
%5
Draw.Text (mois, 0, 40, font2,black)
Draw.Text (prenom +" "+ nom, 0, 10, font2,black)
put "Combien ya t'il d'etats au Etats Unis?"
put "A- 48"
put "B- 50"
put "C- 45"
Draw.Text (intstr(score), 500, 20, font2,black)
get reponse (5)

if reponse (5) = "b" or reponse (5) = "B" then
  score += 1
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci est la bonne reponse!"
  delay (3000)
else 
  score += 0
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci n'est la bonne reponse!"
  delay (3000)
end if

cls 
%6
Draw.Text (mois, 0, 40, font2,black)
Draw.Text (prenom +" "+ nom, 0, 10, font2,black)
put "Quel peintre connu s'est coup l'oreil?"
put "A- Van Gogh"
put "B- Leonard de Vinci"
put "C- Pablo Picasso"
Draw.Text (intstr(score), 500, 20, font2,black)
get reponse (6)

if reponse (6) = "a" or reponse (6) = "A" then
  score += 1
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci est la bonne reponse!"
  delay (3000)
else 
  score += 0
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci n'est la bonne reponse!"
  delay (3000)
end if

cls 
%7
Draw.Text (mois, 0, 40, font2,black)
Draw.Text (prenom +" "+ nom, 0, 10, font2,black)
put "Les premiers jeux mondiaux se sont passes dans quel ville en 1896?"
put "A- Tokyo"
put "B- Athenes"
put "C- Bresil"
Draw.Text (intstr(score), 500, 20, font2,black)
get reponse (7)

if reponse (7) = "b" or reponse (7) = "B" then
  score += 1
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci est la bonne reponse!"
  delay (3000)
else 
  score += 0
  cls
  Draw.Text (intstr(score), 500, 20, font2,black)
  put "Ceci n'est la bonne reponse!"
  delay (3000)
end if

cls 
