var vehicule : string
const vitesse1 : int := 60
const vitesse2 : int := 40
const vitesse3 : int := 300
const distance1 : int := 12
const distance23 : int := 10
var total1 : real
var total2 : real
var total3 : real


put "Quel vehicule compte tu utiliser parmi ta voiture, ton helicoptere et ton scooter pour te rendre au Centre Rideau?"
put ""
get vehicule 

if vehicule = "voiture" or vehicule = "Voiture" then 
  put "Vous prendrez : ", distance1 / vitesse1 * 60," minutes pour arriver au Centre Rideau en ", vehicule,"."
elsif vehicule = "scooter" or vehicule = "Scooter" then
  put "Vous prendrez : ", distance23 / vitesse2 * 60," minutes pour arriver au Centre Rideau en ", vehicule,"."
elsif vehicule = "helicoptere" or vehicule = "Helicoptere" then 
  put "Vous prendrez : ", distance23 / vitesse3 * 60," minutes pour arriver au Centre Rideau en ", vehicule,"."
end if

total1 := distance1 / vitesse1 * 60
total2 := distance23 / vitesse2 * 60
total3 := distance23 / vitesse3 * 60

if total1 < total2 then 
  put "La voiture est le vehicule qui vous prendra le moins de temps pour arriver au Centre Rideau."
elsif total1 < total3 then 
  put "La voiture est le vehicule qui vous prendra le moins de temps pour arriver au Centre Rideau."
elsif total2 < total1 then
  put "Le scooter est le vehicule qui vous prendra le moins de temps pour arriver au Centre Rideau."
elsif total2 < total3 then 
  put "La scooter est le vehicule qui vous prendra le moins de temps pour arriver au Centre Rideau."
elsif total3 < total1 then 
  put "L'helicoptere est le vehicule qui vous prendra le moins de temps pour arriver au Centre Rideau."
elsif total3 < total2 then 
  put "L'helicoptere est le vehicule qui vous prendra le moins de temps pour arriver au Centre Rideau."
end if

