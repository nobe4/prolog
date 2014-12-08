%% Règles sur les listes
% Titre : Définition de la règle sommeList
% Règle : sommeList/2
% Param 1 : Liste dont on cherche à sommer les éléments    
% Param 2 : Résultat
% Usage : Calcul de la somme des elements de la liste.
sommeList([],0):- !.
sommeList([L|T], Somme) :- sommeList(T,S), Somme is S + L.

% Titre : Définition de la règle sommeImpaire
% Règle : sommeList/2
% Param 1 : Liste dont on cherche à sommer les éléments    
% Param 2 : Résultat
% Usage : Calcul de la somme des éléments aux positions impairs de la liste (1, 3, ...).
sommeImpaire([],0) :- !.
sommeImpaire([W,_|T],Somme) :- sommeImpaire(T,S), Somme is W + S.
sommeImpaire([W],Somme) :- Somme is W.

% Titre : Définition de la règle moyenne
% Règle  : moyenne/2
% Param 1 : Liste dont on cherche à calculer la moyenne    
% Param 2 : Résultat
% Usage : Calcul la moyenne des éléments.
moyenne(L,M):- sommeList(L,S), length(L,Len), M is S / Len.

% Titre : Définition de la règle noccur
% Règle : noccur/3
% Param 1 : Elément   
% Param 2 : Liste dans laquelle on recherche le nombre d'occurence du paramètre 1
% Param 3 : Résultat
% Usage : Calcul le nombre d'occurence du paramètre 1.
noccur(_, [], 0).
noccur(E,[E|T],X):- noccur(E, T, X2), X is X2 + 1 .
noccur(E,[Y|T],X):- E \= Y, noccur(E, T, X).

% Titre : Définition de la règle adjacent
% Règle : adjacent/3
% Param 1 : Elément 1  
% Param 2 : Elément 2  
% Param : Liste dans laquelle on recherche l'adjacence des éléments.
% Usage : Recherche l'adjacence des paramètres 1 et 2 (dans cet ordre) dans le paramètre 3.
adjacent(X,Y,[Z|T]):- X \= Z, Y \= Z,  adjacent(X,Y,T).
adjacent(X,Y,[X,Y|_]).

% Titre : Définition de la règle prefix
% Règle : prefix/2
% Param 1 : Elément 1  
% Param 2 : Elément 2
% Usage : Recherche si le paramètre 1 est un prefix du paramètre 2. 
prefix([],_).
prefix([H|T],[H|U]):- prefix(T,U).

% Titre : Définition de la règle suffix
% Règle : suffix/2
% Param 1 : Elément 1  
% Param 2 : Elément 2
% Usage : Recherche si le paramètre 1 est un suffix du paramètre 2. 
suffix(S,S).
suffix(S,[_|T]) :- suffix(S,T).

% Titre : Définition de la règle double
% Règle : double/2
% Param 1 : Elément 1  
% Param 2 : Elément 2
% Usage : Recherche si le paramètre 2 est un double du paramètre 1. 
double([T],[T,T]).
double([T|L],[T,T|X]):- double(L,X).
