var v1, v2 : real
var reponse : real

procedure add 
  reponse := v1 + v2
  put "Lorsque j'additionne ", v1," et ", v2," cela me donne ", reponse,""
end add

procedure sous 
  reponse := v1 - v2
  put "Lorsque je soustrais ", v1," et ", v2," cela me donne ", reponse,""
end sous

procedure mult 
  reponse := v1 * v2
  put "Lorsque je multiplie ", v1," et ", v2," cela me donne ", reponse,""
end mult

procedure divi
  reponse := v1 / v2
  put "Lorsque je divise ", v1," et ", v2," cela me donne ", reponse,""
end divi

put "Quels valeurs souhaiteraient tu utiliser"
get v1, v2

var commande : string
put "Quel type d'operation souhaite tu utiliser"
put "a = additionner s = soustraire m = mutiplication d = division"
get commande 

case commande of 
  label "a" : add
  label "s" : sous
  label "m" : mult
  label "d" : divi
end case
