arc(bachant, aulnoye, 8).
arc(bachant, croix, 3).
arc(bachant, denain, 6).
arc(bachant, friche, 4).
arc(eclaibes, aulnoye, 4).
arc(eclaibes, friche, 5).
arc(eclaibes, bachant, 7).
arc(friche, gommegnies, 6).
arc(croix, denain, 7).
arc(denain, gommegnies, 5).

itineraire(Start, End):- arc(Start, End,_).
itineraire(Start, End):- arc(Start, Z,_), itineraire(Z, End).

chemin(Start,End,List,Cout) :- arc(Start,End,C),Cout is C, append([Start],[End],List).
chemin(Start,End,List,Cout) :- arc(Start,Etape,C), chemin(Etape,End,List1,Cout1),Cout is C + Cout1, append([Start],List1,List).

cheminCoutMin(Start,End,List,Cout):-
	chemin(Start,End, List1, Cout1),
	Cout1 >= Cout,
	append(List1,[],List).

cheminCoutMax(Start,End,List,Cout):-
	chemin(Start,End, List1, Cout1),
	Cout1 =< Cout,
	append(List1,[],List).
