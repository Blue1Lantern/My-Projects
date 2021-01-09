/*Cameron Kennedy
 Disc Hunt - Projet
 19 mars 2017
 Version 1.0*/

%Variables pour mousewhere : x = position en x de la souris, y = position en y de la souris, b = si la souris est cliquee ou non
var x, y, b : int
%Le niveau qui determine la vitesse, la grosseur, etc.
var level : int := 1
%Le niveau qui determine le montant de disque
var discLevel : int := 1
%Determine combien de disque qu'il y a encore sur l'ecran
var discCount : int
%Le montant de vie
var life : int := 3
%Le montant de fois manque dans un niveau
var miss : int := 0
%Le score
var score : int := 0
%Les arrays qui determinent les informations sur les 5 disques differents
var circlex : array 1 .. 5 of int := init (0, 0, 0, 0, 0)
var circley : array 1 .. 5 of int := init (0, 0, 0, 0, 0)
var xradius : array 1 .. 5 of int
var yradius : array 1 .. 5 of int
var xchange : array 1 .. 5 of int := init (1, 1, 1, 1, 1)
var ychange : array 1 .. 5 of int := init (1, 1, 1, 1, 1)
var discHit : array 1 .. 5 of int := init (0, 0, 0, 0, 0)
%Grosseur de l'ecran
setscreen ("graphics: 500;500")
%Message de depart
put "Welcome to disc hunt!"
put "Use the mouse to shoot the discs with a click."
put "Every level you have 5 bullets."
put "If you accumulate 5 misses, you loose the number of lives that"
put "correspond to the number of discs left."
put "You have 3 lives total."
put "There are 50 levels and every one brings something new."
put "Can you beat them all?"
delay (5000)
for i : 1 .. 50
    put ""
end for
%L'initialisation
loop
    %Delay 3 secondes entre chaque niveau
    delay (3000)
    %Exit quand le dernier niveau a ete atteint, ou qu'il n'y a plus de vie
    exit when level = 51 or life <= 0
    %Determine la position des disques (montant selon le niveau)
    randint (circlex (1), 0, 500)
    randint (circley (1), 0, 500)
    if discLevel = 2 then
	randint (circlex (2), 0, 500)
	randint (circley (2), 0, 500)
    elsif discLevel = 3 then
	randint (circlex (2), 0, 500)
	randint (circley (2), 0, 500)
	randint (circlex (3), 0, 500)
	randint (circley (3), 0, 500)
    elsif discLevel = 4 then
	randint (circlex (2), 0, 500)
	randint (circley (2), 0, 500)
	randint (circlex (3), 0, 500)
	randint (circley (3), 0, 500)
	randint (circlex (4), 0, 500)
	randint (circley (4), 0, 500)
    elsif discLevel = 5 then
	randint (circlex (2), 0, 500)
	randint (circley (2), 0, 500)
	randint (circlex (3), 0, 500)
	randint (circley (3), 0, 500)
	randint (circlex (4), 0, 500)
	randint (circley (4), 0, 500)
	randint (circlex (5), 0, 500)
	randint (circley (5), 0, 500)
    end if
    %Determine la vitesse et la grosseur des disques selon le niveau
    xchange (1) := level
    ychange (1) := level
    xchange (2) := level
    ychange (2) := level
    xchange (3) := level
    ychange (3) := level
    xchange (4) := level
    ychange (4) := level
    xchange (5) := level
    ychange (5) := level
    xradius (1) := 51 - level
    yradius (1) := 51 - level
    xradius (2) := 51 - level
    yradius (2) := 51 - level
    xradius (3) := 51 - level
    yradius (3) := 51 - level
    xradius (4) := 51 - level
    yradius (4) := 51 - level
    xradius (5) := 51 - level
    yradius (5) := 51 - level
    %Le montant de disque
    discCount := discLevel
    %Initialise l'information sur le disque frappe ou non
    for i : 1 .. 5
	discHit (i) := 0
    end for
    %L'action
    loop
	%Verifie si le niveau a ete battu ou non
	exit when discCount = 0 or miss = 5
	%Determine le montant de disque a creer
	drawfilloval (circlex (1), circley (1), xradius (1), yradius (1), blue)
	if discLevel = 2 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), green)
	elsif discLevel = 3 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), green)
	    drawfilloval (circlex (3), circley (3), xradius (3), yradius (3), red)
	elsif discLevel = 4 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), green)
	    drawfilloval (circlex (3), circley (3), xradius (3), yradius (3), red)
	    drawfilloval (circlex (4), circley (4), xradius (4), yradius (4), black)
	elsif discLevel = 5 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), green)
	    drawfilloval (circlex (3), circley (3), xradius (3), yradius (3), red)
	    drawfilloval (circlex (4), circley (4), xradius (4), yradius (4), black)
	    drawfilloval (circlex (5), circley (5), xradius (5), yradius (5), yellow)
	end if
	delay (30)
	%Determine si la souris est cliquee ou non et si le disque est frappe
	mousewhere (x, y, b)
	if b = 1 then
	    if (x >= circlex (1) - xradius (1)) and (x <= circlex (1) + xradius (1)) and (y >= circley (1) - yradius (1)) and (y <= circley (1) + yradius (1)) then
		discHit (1) := 1
		discCount -= 1
		score += 1
		delay (200)
	    elsif (x >= circlex (2) - xradius (2)) and (x <= circlex (2) + xradius (2)) and (y >= circley (2) - yradius (2)) and (y <= circley (2) + yradius (2)) then
		discHit (2) := 1
		discCount -= 1
		score += 1
		delay (200)
	    elsif (x >= circlex (3) - xradius (3)) and (x <= circlex (3) + xradius (3)) and (y >= circley (3) - yradius (3)) and (y <= circley (3) + yradius (3)) then
		discHit (3) := 1
		discCount -= 1
		score += 1
		delay (200)
	    elsif (x >= circlex (4) - xradius (4)) and (x <= circlex (4) + xradius (4)) and (y >= circley (4) - yradius (4)) and (y <= circley (4) + yradius (4)) then
		discHit (4) := 1
		discCount -= 1
		score += 1
		delay (200)
	    elsif (x >= circlex (5) - xradius (5)) and (x <= circlex (5) + xradius (5)) and (y >= circley (5) - yradius (5)) and (y <= circley (5) + yradius (5)) then
		discHit (5) := 1
		discCount -= 1
		score += 1
		delay (200)
	    else
		miss += 1
		delay (200)
	    end if
	end if
	%Fait en sorte que les disques ne sortent pas de l'ecran
	if circlex (1) > 500 then
	    xchange (1) := 0 - level
	elsif circlex (1) < 0 then
	    xchange (1) := 0 + level
	elsif circley (1) > 500 then
	    ychange (1) := 0 - level
	elsif circley (1) < 0 then
	    ychange (1) := 0 + level
	elsif circlex (2) > 500 then
	    xchange (2) := 0 - level
	elsif circlex (2) < 0 then
	    xchange (2) := 0 + level
	elsif circley (2) > 500 then
	    ychange (2) := 0 - level
	elsif circley (2) < 0 then
	    ychange (2) := 0 + level
	elsif circlex (3) > 500 then
	    xchange (3) := 0 - level
	elsif circlex (3) < 0 then
	    xchange (3) := 0 + level
	elsif circley (3) > 500 then
	    ychange (3) := 0 - level
	elsif circley (3) < 0 then
	    ychange (3) := 0 + level
	elsif circlex (4) > 500 then
	    xchange (4) := 0 - level
	elsif circlex (4) < 0 then
	    xchange (4) := 0 + level
	elsif circley (4) > 500 then
	    ychange (4) := 0 - level
	elsif circley (4) < 0 then
	    ychange (4) := 0 + level
	elsif circlex (5) > 500 then
	    xchange (5) := 0 - level
	elsif circlex (5) < 0 then
	    xchange (5) := 0 + level
	elsif circley (5) > 500 then
	    ychange (5) := 0 - level
	elsif circley (5) < 0 then
	    ychange (5) := 0 + level
	end if
	%Fait disparaitre le disque pour le faire bouger
	drawfilloval (circlex (1), circley (1), xradius (1), yradius (1), white)
	if discLevel = 2 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), white)
	elsif discLevel = 3 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), white)
	    drawfilloval (circlex (3), circley (3), xradius (3), yradius (3), white)
	elsif discLevel = 4 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), white)
	    drawfilloval (circlex (3), circley (3), xradius (3), yradius (3), white)
	    drawfilloval (circlex (4), circley (4), xradius (4), yradius (4), white)
	elsif discLevel = 5 then
	    drawfilloval (circlex (2), circley (2), xradius (2), yradius (2), white)
	    drawfilloval (circlex (3), circley (3), xradius (3), yradius (3), white)
	    drawfilloval (circlex (4), circley (4), xradius (4), yradius (4), white)
	    drawfilloval (circlex (5), circley (5), xradius (5), yradius (5), white)
	end if
	%Bouge les disques
	circlex (1) := circlex (1) + xchange (1)
	circley (1) := circley (1) + ychange (1)
	if discLevel = 2 then
	    circlex (2) := circlex (2) + xchange (2)
	    circley (2) := circley (2) + ychange (2)
	elsif discLevel = 3 then
	    circlex (2) := circlex (2) + xchange (2)
	    circley (2) := circley (2) + ychange (2)
	    circlex (3) := circlex (3) + xchange (3)
	    circley (3) := circley (3) + ychange (3)
	elsif discLevel = 4 then
	    circlex (2) := circlex (2) + xchange (2)
	    circley (2) := circley (2) + ychange (2)
	    circlex (3) := circlex (3) + xchange (3)
	    circley (3) := circley (3) + ychange (3)
	    circlex (4) := circlex (4) + xchange (4)
	    circley (4) := circley (4) + ychange (4)
	elsif discLevel = 5 then
	    circlex (2) := circlex (2) + xchange (2)
	    circley (2) := circley (2) + ychange (2)
	    circlex (3) := circlex (3) + xchange (3)
	    circley (3) := circley (3) + ychange (3)
	    circlex (4) := circlex (4) + xchange (4)
	    circley (4) := circley (4) + ychange (4)
	    circlex (5) := circlex (5) + xchange (5)
	    circley (5) := circley (5) + ychange (5)
	end if
	%Determine quel disque est frappe et le fait disparaitre
	if discHit (1) = 1 then
	    xradius (1) := 0
	    yradius (1) := 0
	elsif discHit (2) = 1 then
	    xradius (2) := 0
	    yradius (2) := 0
	elsif discHit (3) = 1 then
	    xradius (3) := 0
	    yradius (3) := 0
	elsif discHit (4) = 1 then
	    xradius (4) := 0
	    yradius (4) := 0
	elsif discHit (5) = 1 then
	    xradius (5) := 0
	    yradius (5) := 0
	end if
    end loop
    %Determine si le niveau est battu ou non
    if discCount = 0 then
	level += 1
	miss := 0
	if level = 10 then
	    discLevel := 2
	elsif level = 20 then
	    discLevel := 3
	elsif level = 30 then
	    discLevel := 4
	elsif level = 40 then
	    discLevel := 5
	end if
    elsif miss = 5 then
	life -= discCount
	miss := 0
    end if
end loop
%Determine le score final
if level = 51 then
    put "Congratulations! You have beaten the game with a score of ", score, "!"
elsif life <= 0 then
    put "Sorry you ran out of lives! Your final score is ", score, "!"
end if
