%% Prédicats sur les listes
% Titre : Definition du predicat sommeList
% Prédicat : sommeList/2
% Parametre 1 : Liste dont on cherche a sommer les elements    
% Parametre 2 : Resultat
% Usage : Calcul de la somme des elements de la liste.
sommeList([],0):- !.
sommeList([L|T], Somme) :- sommeList(T,S), Somme is S + L.

% Titre : Definition du predicat sommeImpaire
% Prédicat : sommeList/2
% Parametre 1 : Liste dont on cherche a sommer les elements    
% Parametre 2 : Resultat
% Usage : Calcul de la somme des elements aux positions impairs de la liste (1, 3, ...).
sommeImpaire([],0) :- !.
sommeImpaire([W,_|T],Somme) :- sommeImpaire(T,S), Somme is W + S.
sommeImpaire([W],Somme) :- Somme is W.

% Titre : Definition du predicat moyenne
% Prédicat : moyenne/2
% Parametre 1 : Liste dont on cherche a calculer la moyenne    
% Parametre 2 : Resultat
% Usage : Calcul la moyenne des elements.
moyenne(L,M):- sommeList(L,S), length(L,Len), M is S / Len.

% Titre : Definition du predicat noccur
% Prédicat : noccur/3
% Parametre 1 : Element   
% Parametre 2 : Liste dans laquelle on recherche le nombre d'occurence du parametre 1
% Parametre 3 : Resultat
% Usage : Calcul le nombre d'occurence du parametre 1.
noccur(_, [], 0).
noccur(E,[E|T],X):- noccur(E, T, X2), X is X2 + 1 .
noccur(E,[Y|T],X):- E \= Y, noccur(E, T, X).

% Titre : Definition du predicat adjacent
% Prédicat : adjacent/3
% Parametre 1 : Element 1  
% Parametre 2 : Element 2  
% Parametre 3 : Liste dans laquelle on recherche l'adjacence des elements.
% Usage : Recherche l'adjacence des parametres 1 et 2 (dans cet ordre) dans le parametre 3.
adjacent(X,Y,[Z|T]):- X \= Z, Y \= Z,  adjacent(X,Y,T).
adjacent(X,Y,[X,Y|_]).

% Titre : Definition du predicat prefix
% Prédicat : prefix/2
% Parametre 1 : Element 1  
% Parametre 2 : Element 2
% Usage : Recherche si le parametre 1 est un prefix du parametre 2. 
prefix([],_).
prefix([H|T],[H|U]):- prefix(T,U).

% Titre : Definition du predicat suffix
% Prédicat : suffix/2
% Parametre 1 : Element 1  
% Parametre 2 : Element 2
% Usage : Recherche si le parametre 1 est un suffix du parametre 2. 
suffix(S,S).
suffix(S,[_|T]) :- suffix(S,T).

% Titre : Definition du predicat double
% Prédicat : double/2
% Parametre 1 : Element 1  
% Parametre 2 : Element 2
% Usage : Recherche si le parametre 2 est un double du parametre 1. 
double([T],[T,T]).
double([T|L],[T,T|X]):- double(L,X).
