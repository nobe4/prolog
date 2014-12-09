% Predicat remplace/4
% Usage : remplace(X1, X2, L1, L2) construit la liste L2 en remplaçant tous les élément X1 par X2 dans la liste L2.
% Param 1 : Element a remplacer
% Param 2 : Element remplace
% Param 3 : Liste dans laquelle on remplace 
% Param 4 : Liste resultat
remplace(_,_,[],[]).
remplace(X1,X2,[H|T1],[X2|T2]) :- H=X1, remplace(X1,X2,T1,T2).
remplace(X1,X2,[H|T1],[H|T2]) :- remplace(X1,X2,T1,T2).

% Predicat entier_liste/4
% Usage : entier_liste(N, LN) qui construit la liste LN comme les chiffres du nombre N
% Param 1 : Nombre
% Param 4 : Liste resultat
entier_liste(0,[0]).
entier_liste(N,A) :- 
    N1 is floor(N/10),
    N2 is N mod 10, 
    entier_liste(N1,As),
    append(As,[N2],A).

Définir la relation inverse(L, LR) où LR est la liste obtenue en inversant la liste L. 
Exemple : inverse([a,b,c],[c,b,a]) est vrai.

4) Définir le prédicat palindromeNb(L) qui est vrai si la liste L est sa propre image inversée.
?- palindrome([7, 15, 11, 15, 7]). 
true
?- palindrome([1, 2, 3, 3, 2, 1]). 
true
?- palindrome([1, 2, 3, 4]). 
false
