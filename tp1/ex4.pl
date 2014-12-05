arc(bachant, aulnoye).
arc(bachant, croix).
arc(bachant, denain).
arc(bachant, friche).
arc(eclaibes, aulnoye).
arc(eclaibes, friche).
arc(eclaibes, bachant).
arc(friche, gommegnies).
arc(croix, denain).
arc(denain, gommegnies).

itineraire(Start, End):- arc(Start, End).
itineraire(Start, End):- arc(Start, Z), itineraire(Z, End).

decrireItineraire(Start, End, _):-  arc(Start, End).
decrireItineraire(Start, End, Etapes):-
	arc(Start, Etape),
 	decrireItineraire(Etape, End, Etape),
	append(Etapes, Etape).
