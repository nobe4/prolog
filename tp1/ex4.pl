%% Prédicats
% Titre : Définition du prédicat arc
% Prédicat : arc/2
% Usage : arc(X, Y) caractérise un arc allant de X à Y
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

%% Règles
% Titre : Définition de la règle voisin
% Règle : voisin/2
% Usage : voisin(X, Y) permet de passer outre la directionnalité de la règle arc
voisin(X,Y):- arc(X,Y).
voisin(X,Y):- arc(Y,X).

% Titre : Définition de la règle itinéraire
% Règle : itineraire/2
% Usage : itineraire(X, Y) permet de déterminer si un itineraire est possible
% Param 1 : Départ
% Param 2 : Arrivée
itineraire(Start, End):- arc(Start, End).
itineraire(Start, End):- arc(Start, Z), itineraire(Z, End).

% Titre : Définition de la règle chemin
% Règle : chemin/3
% Usage : chemin(X, Y) permet d'obtenir la liste des chemins entre deux points
% Param 1 : Départ
% Param 2 : Arrivée
% Param 3 : Liste résultat
chemin(Start,End,List) :- arc(Start,End), append([Start],[End],List).
chemin(Start,End,List) :- arc(Start,Etape), chemin(Etape,End,List1), append([Start],List1,List).

% Titre : Définition de la règle cheminTailleFixe
% Règle : cheminTailleFixe/4
% Usage : cheminTailleFixe(X, Y) permet d'obtenir la liste des chemins de taille exact entre deux points
% Param 1 : Départ
% Param 2 : Arrivée
% Param 3 : Liste résultat
% Param 4 : Taille limite
cheminTailleFixe(Start,End,List,Taille):-
	chemin(Start,End, List1),
	length(List1, L),
	L-1 =:= Taille,
	append(List1,[],List).

% Titre : Définition de la règle cheminTailleMin
% Règle : cheminTailleMin/4
% Usage : cheminTailleFixe(X, Y) permet d'obtenir la liste des chemins de respectant une taille minimal entre deux points
% Param 1 : Départ
% Param 2 : Arrivée
% Param 3 : Liste résultat
% Param 4 : Taille limite
cheminTailleMin(Start,End,List,Taille):-
	chemin(Start,End, List1),
	length(List1, L),
	L-1 >= Taille,
	append(List1,[],List).


