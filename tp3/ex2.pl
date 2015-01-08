% Predicat : reine/2
% Usage : reine(X,Y) indique qu'il y a une reine a la position X, Y
reine(_,_).

% Regle : solution/1
% Usage : Calcul les solutions possibles
% param 1 : liste des reines a trouver
solution([]).
solution([reine(X,Y)|Others]) :-
 solution(Others),
 membre(Y, [1,2,3,4,5,6,7,8]),
 nonAttaque(reine(X,Y), Others).

% Regle : nonAttaque/2
% Usage : Verifie qu'une reine n'est pas attaquee par les autres
% param 1 : Reine a verifier
% param 2 : Liste des reines a tester
nonAttaque(_,[]).
nonAttaque(reine(X,Y),[reine(X1,Y1)|Suite]) :-
 Y =\= Y1,
 Y1 - Y =\= X1 - X,
 Y1 - Y =\= X - X1,
 nonAttaque(reine(X,Y),Suite).
 
% Regle : membre/2
% Usage : verifie qu'un element est membre d'une liste
% param 1 : Element a rechercher
% param 2 : Liste de recherche
membre(Element,[Element|_]).
membre(Element,[_|Reste]) :- member(Element,Reste).
 
% Regle : huitReines/1
% usage : Definit une liste de huit reines ayant toutes des X differents
% param 1 : Liste des huit reines
huitReines([reine(1,_),reine(2,_),reine(3,_),reine(4,_)
         ,reine(5,_),reine(6,_),reine(7,_),reine(8,_)]).
