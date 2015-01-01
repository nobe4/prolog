% Regle remplace/4
% Usage : remplace(X1, X2, L1, L2) construit la liste L2 en remplaçant tous les élément X1 par X2 dans la liste L2.
% Param 1 : Element a remplacer
% Param 2 : Element remplace
% Param 3 : Liste dans laquelle on remplace 
% Param 4 : Liste resultat
remplace(_,_,[],[]).
remplace(X1,X2,[H|T1],[X2|T2]) :- H=X1, remplace(X1,X2,T1,T2).
remplace(X1,X2,[H|T1],[H|T2]) :- remplace(X1,X2,T1,T2).

% Regle entier_liste/2
% Usage : entier_liste(N, LN) qui construit la liste LN comme les chiffres du nombre N
% Param 1 : Nombre
% Param 4 : Liste resultat
entier_liste(0,[0]).
entier_liste(N,A) :- 
    N1 is floor(N/10),
    N2 is N mod 10, 
    entier_liste(N1,As),
    append(As,[N2],A).

% Regle inverse/2
% Usage : inverse(N, LR) qui construit la liste LR en inversant la liste L
% Param 1 : Liste a inverser
% Param 4 : Liste resultat
inverse([], []).
inverse([H|T],R):-  
    inverse(T,RevT),  
    append(RevT,[H],R).

% Regle palindromeNb/1
% Usage : palindromeNb(L) indique si la liste L est un palindrome
% Param 1 : Liste
palindromeNb(L):-
  reverse(L, L).
