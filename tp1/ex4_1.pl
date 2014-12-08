%% Predicats
% Titre : Definition du predicat arc
% Prédicat :arc/3
% Param 1 : Position de depart
% Param 2 : Position finale
% Param 3 : Cout du chemin
% Usage : arc(X,Y,Z) indique qu'un arc existe de X vers Y avec un cout de Z
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

% Titre : Definition de la regle itineraire
% Regle : itineraire/2
% Param 1 : Position de depart
% Param 2 : Position finale
% Usage : Itineraire indique s'il existe un itineraire entre le parametre 1 et 2
itineraire(Start, End):- arc(Start, End,_).
itineraire(Start, End):- arc(Start, Z,_), itineraire(Z, End).

% Titre : Definition de la regle chemin
% Regle : chemin/4
% Param 1 : Position de depart
% Param 2 : Position finale
% Param 3 : Liste des positions 
% Param 4 : Cout du chemin
% Usage : chemin indique les chemins entre le parametre 1 et 2 avec la liste des positions et le cout
chemin(Start,End,List,Cout) :- arc(Start,End,C),Cout is C, append([Start],[End],List).
chemin(Start,End,List,Cout) :- arc(Start,Etape,C), chemin(Etape,End,List1,Cout1),Cout is C + Cout1, append([Start],List1,List).

% Titre : Definition de la regle cheminCoutMin
% Regle : cheminCoutMin/4
% Param 1 : Position de depart
% Param 2 : Position finale
% Param 3 : Liste des positions 
% Param 4 : Cout du chemin
% Usage : cheminCoutMin indique le chemin avec un cout inferieur au parametre 4 entre le parametre 1 et 2 avec la liste des positions
cheminCoutMin(Start,End,List,Cout):-
	chemin(Start,End, List1, Cout1),
	Cout1 >= Cout,
	append(List1,[],List).
	
% Titre : Definition de la regle cheminCoutMax
% Regle : cheminCoutMax/4
% Param 1 : Position de depart
% Param 2 : Position finale
% Param 3 : Liste des positions 
% Param 4 : Cout du chemin
% Usage : cheminCoutMin indique le chemin avec un cout superieur au parametre 4 entre le parametre 1 et 2 avec la liste des positions
cheminCoutMax(Start,End,List,Cout):-
	chemin(Start,End, List1, Cout1),
	Cout1 =< Cout,
	append(List1,[],List).
