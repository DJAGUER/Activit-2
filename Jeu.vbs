msgbox "Bonjour, es-tu pret � relever le d�fi du nombre myst�re ?"_ 
+ chr(13) _ 
+ chr(13) _ 
+ "J'ai choisi un nombre entre 1 et 1000, et tu dois le trouver !"_ 
+ chr(13) _ 
+ "Quand tu tapes un nombre, je te dis s'il est plus grand ou plus petit que le nombre secret."_ 
+ chr(13) _ 
+ "Mais tu n'as que 10 essais pour le trouver." _ 
+ chr(13) _ 
+ chr(13) _ 
+ "Bonne chance, mais tu ne peux gagner face � moi !", , "Le nombre myst�re" 

Randomize 
secret = Int((1000 * Rnd) + 1) 

tentative = 0 

do 
tentative = tentative + 1 

if (tentative > 10) then 
msgbox "Trop de tentatives, tu as perdu !" 
Wscript.quit 
else 
end if 

nombre = cint(inputbox ("Donne un nombre entre 1 et 1000")) 
if (nombre = secret) then 
msgbox "GAGN� !" _ 
+ chr(13) _ 
+ "Bravo, tu as trouv� en " & tentative & " coups !" 
Wscript.quit 
else 
if (nombre > secret) then 
msgbox "Trop grand !" 
else 
msgbox "Trop petit !" 
end if 
end if 

loop