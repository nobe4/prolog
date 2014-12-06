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

voisin(X,Y):- arc(X,Y).
voisin(X,Y):- arc(Y,X).

itineraire(Start, End):- arc(Start, End).
itineraire(Start, End):- arc(Start, Z), itineraire(Z, End).

chemin(Start,End,List) :- arc(Start,End), append([Start],[End],List).
chemin(Start,End,List) :- arc(Start,Etape), chemin(Etape,End,List1), append([Start],List1,List).

cheminTailleFixe(Start,End,List,Taille):-
	chemin(Start,End, List1),
	length(List1, L),
	L-1 =:= Taille,
	append(List1,[],List).

cheminTailleMin(Start,End,List,Taille):-
	chemin(Start,End, List1),
	length(List1, L),
	L-1 >= Taille,
	append(List1,[],List).


