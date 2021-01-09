setscreen ("graphics:550;700, position: center;center")

var font : int
var font2 : int
var x,y,b : int

font := Font.New("serif:50")
font2 := Font.New("serif:20")

loop
mousewhere (x,y,b)
  Draw.Text("Quiz", 200, 450, font, black)
  Draw.Text ("de culture", 140, 370, font, black)
  Draw.Text ("general", 166, 290, font, black)
  Draw.Text ("Par Ousmane Barry", 0, 677, font2, black)
  Draw.Text ("Cliquez n'importe ou pour commencer !", 70, 220, font2, red)
  exit when x >= 0 and x <= 550 and y >= 0 and y <= 700 and b = 1
end loop 

cls 

var nom : string
var prenom : string
var mois : string
var reponse : array 1..7 of string

put "Quel est votre prenom?"
get prenom
cls

put "Quel est votre nom?"
get nom 
cls

put "Quel est votre mois de naissance?"
get mois
cls 

var score : int
score := 0

%111111111111111

Draw.Text(mois, 0, 40, font2, black)
Draw.Text (prenom + " " + nom, 0, 10, font2, black)
put "En quelle annee la France a gagne la coupe du monde"
put "A- 1998"
put "B- 1999"
put "C- 1988"
Draw.Text(intstr(score), 500, 20, font2, black)
get reponse (1)
if reponse (1) = "a" or reponse (1) = "A" then
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 1
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci est la bonne reponse"
  delay (3000)
else 
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 0
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci n'est pas la bonne reponse"
  delay (3000)
end if 

%22222222222222
cls
Draw.Text(mois, 0, 40, font2, black)
Draw.Text (prenom + " " + nom, 0, 10, font2, black)
put "Qui est le dieu grecque de la guerre?"
put "A- Ares"
put "B- Zeus"
put "C- Apollon"
Draw.Text(intstr(score), 500, 20, font2, black)
get reponse (2)
if reponse (2) = "a" or reponse (2) = "A" then
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 1
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci est la bonne reponse"
  delay (3000)
else 
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 0
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci n'est pas la bonne reponse"
  delay (3000)
end if 

%33333333333333
cls
Draw.Text(mois, 0, 40, font2, black)
Draw.Text (prenom + " " + nom, 0, 10, font2, black)
put "Quel est le nom d'une salle de judo?"
put "A- Takashi"
put "B- La salle"
put "C- Dojo"
Draw.Text(intstr(score), 500, 20, font2, black)
get reponse (3)
if reponse (3) = "c" or reponse (3) = "C" then
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 1
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci est la bonne reponse"
  delay (3000)
else 
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 0
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci n'est pas la bonne reponse"
  delay (3000)
end if 

%444444444444444
cls
Draw.Text(mois, 0, 40, font2, black)
Draw.Text (prenom + " " + nom, 0, 10, font2, black)
put "Quel est lel nom de l'avare de Moliere?"
put "A- Harpagon"
put "B- Cleante"
put "C- Alise"
Draw.Text(intstr(score), 500, 20, font2, black)
get reponse (4)
if reponse (4) = "a" or reponse (4) = "A" then
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 1
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci est la bonne reponse"
  delay (3000)
else 
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 0
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci n'est pas la bonne reponse"
  delay (3000)
end if 

%55555555555555555
cls
Draw.Text(mois, 0, 40, font2, black)
Draw.Text (prenom + " " + nom, 0, 10, font2, black)
put "Combien y-a t-il d'etats aux USA?"
put "A- 48"
put "B- 50"
put "C- 42"
Draw.Text(intstr(score), 500, 20, font2, black)
get reponse (5)
if reponse (5) = "b" or reponse (5) = "B" then
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 1
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci est la bonne reponse"
  delay (3000)
else 
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 0
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci n'est pas la bonne reponse"
  delay (3000)
end if 

%666666666666666
cls
Draw.Text(mois, 0, 40, font2, black)
Draw.Text (prenom + " " + nom, 0, 10, font2, black)
put "Quel peintre celebre s'est coupe l'oreil?"
put "A- Pablo Picasso"
put "B- Van Gogh"
put "C- Leonard De Vinci"
Draw.Text(intstr(score), 500, 20, font2, black)
get reponse (6)
if reponse (6) = "b" or reponse (6) = "B" then
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 1
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci est la bonne reponse"
  delay (3000)
else 
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 0
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci n'est pas la bonne reponse"
  delay (3000)
end if 

%77777777777777777
cls
Draw.Text(mois, 0, 40, font2, black)
Draw.Text (prenom + " " + nom, 0, 10, font2, black)
put "Dans quel pays se sont passes les premiers jeux modernes?"
put "A- Bresil"
put "B- Londres"
put "C- Athenes"
Draw.Text(intstr(score), 500, 20, font2, black)
get reponse (7)
if reponse (7) = "c" or reponse (7) = "C" then
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 1
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci est la bonne reponse"
  delay (3000)
else 
  cls
  Draw.Text(mois, 0, 40, font2, black)
  Draw.Text (prenom + " " + nom, 0, 10, font2, black)
  score += 0
  Draw.Text(intstr(score), 500, 20, font2, black)
  put "Ceci n'est pas la bonne reponse"
  delay (3000)
end if 

cls

Draw.Text( "Vous avez", 110, 370, font, black)
Draw.Text ("un score de", 110, 290, font, black)
Draw.Text ( intstr (score) + " sur 7", 166, 220, font, black)


