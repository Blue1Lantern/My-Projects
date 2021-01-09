var residence : string
var quantite : real
var taxes : real

loop

put "Dans quel province habitez vous, a : Ontario, b : Quebec, c : Autres provinces"
put "Tapez d pour quitter le programme!"
put ""
get residence
exit when residence = "d"
if residence = "a" then 
 taxes := 0.13
elsif residence = "b" then
  taxes := 0.16
elsif residence = "c" then
  taxes := 0.17
end if
put ""
put "Combien de kilogrammes de patates voulez vous achetez?"
put ""
get quantite
if quantite >= 0.1 or quantite <= 4.99 then
  put ""
  put "Vous paierez ", 3 * quantite + (3 * quantite * taxes),"$"
  put ""
elsif quantite >= 5 or quantite <= 9.99 then
  put ""
  put "Vous paierez ", 2 * quantite + (2 * quantite * taxes),"$"
  put ""
elsif quantite >= 10 then
  put ""
  put "Vous paierez ", 1.5 * quantite + (1.5 * quantite * taxes),"$"
  put ""
end if

end loop

cls

put "Vous avez decidez de quitter le programme!"
