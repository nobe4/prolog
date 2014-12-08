%% Fonctions mathématiques
% Titre : Definition de la règle f
% Règle :f/2
% Param 1 : entrée (n)
% Param 2 : résultat
f(0,2):- !.
f(1,2):- !.
f(N, X) :- N1 is N-1, f(N1,X1), X is 2*X1.

% Titre : Definition de la règle h
% Règle : h/3
% Param 1 : entrée (m)
% Param 2 : entrée (n)
% Param 3 : résultat
h(0, N, X):- X is N+1.
h(M, 0, X):- M1 is M-1, h(M1,1,X).
h(M, N, X):- M1 is M-1, N1 is N-1, h(M,N1,X1), h(M1, X1, X).

% Titre : Définition de la règle s
% Règle: s/2
% Param 1 : entrée (n)
% Param 2 : résultat
s(1,1).
s(N,X):- N2 is N*N, N1 is N-1, s(N1,X1), X is X1 + N2.

% Titre : Définition de la règle factorielle
% Règle: facto/2
% Param 1 : entrée (n)
% Param 2 : résultat
facto(0,1):- !.
facto(N,X):- N1 is N-1, facto(N1, X1), X is X1 * N.

% Titre : Définition de la règle coefficient binomial
% Règle: c/3
% Param 1 : entrée (n)
% Param 2 : entrée (k)
% Param 3 : résultat
c(N,K,X):-  K >= 0, N >= K,  facto(N,FN), facto(K,FK), NK is N-K, facto(NK,FNK), KFNK is FK * FNK, X is FN/KFNK.
